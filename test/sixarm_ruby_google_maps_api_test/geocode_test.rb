# -*- coding: utf-8 -*-
require "sixarm_ruby_google_maps_api_test"

describe Google::Maps::API::Geocode do

  ## Fake info
  let(:google_maps_api_key){ Faker::Lorem.characters(10) }
  let(:street_address){ Faker::Address.street_address }
  let(:locality){ Faker::Address.city }
  let(:region){ Faker::Address.state_abbr }
  let(:postal_code){ Faker::Address.postcode }
  let(:address){ "#{street_address} #{locality} #{region} #{postal_code}" }
  let(:latitude){ Float(latitude_text) }
  let(:latitude_text){ Faker::Address.latitude }
  let(:longitude){ Float(longitude_text) }
  let(:longitude_text){ Faker::Address.longitude }

  ## Real info
  let(:real_google_maps_api_key){ ENV["GOOGLE_MAPS_API_KEY"] or raise "This test needs ENV[\"GOOGLE_MAPS_API_KEY\"]" }
  let(:real_address){ "1 Main Street, San Francisco, CA, 94111, US" }
  let(:real_latitude){ Float(real_latitude_text) }
  let(:real_latitude_text){ "37.7931108" }
  let(:real_longitude){ Float(real_longitude_text) }
  let(:real_longitude_text){ "-122.3964898" }
  let(:real_uri){ URI.parse(real_uri_text) }
  let(:real_uri_text){ "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyCGwgBSQTEsN_F3FSIV7hq9WwEpvR1a5X0&address=1%20Main%20Street%2C%20SF%20CA%20941111" }


  describe ".address_to_lat_lng" do

    before do
      @google_maps_api_key = real_google_maps_api_key
      @address = real_address
      @latitude = real_latitude
      @longitude = real_longitude
    end

    specify "fetch" do
      lat, lng = Google::Maps::API::Geocode::address_to_lat_lng(@google_maps_api_key, @address)
      expect(lat).must_be_close_to @latitude, 0.001
      expect(lng).must_be_close_to @longitude, 0.001
    end

  end


  describe ".address_to_uri" do

    before do
      @google_maps_api_key = google_maps_api_key
      @address = address
    end

    specify "parse" do
      uri = Google::Maps::API::Geocode::address_to_uri(@google_maps_api_key, @address)
      expect(uri.scheme).must_equal "https", "scheme"
      expect(uri.host).must_equal "maps.googleapis.com", "host"
      expect(uri.path).must_equal "/maps/api/geocode/json", "path"
      expect(uri.query).must_exist "query"
      query_hash = CGI.parse(uri.query)
      expect(query_hash).must_exist "q"
      expect(query_hash).must_equal({"key"=>[@google_maps_api_key], "address"=>[@address]}, "q")
    end

  end


  describe ".result_to_lat_lng" do

    before do
      @latitude = latitude
      @longitude = longitude
      @result = {
        "geometry" => {
          "location" => {
            "lat" => @latitude,
            "lng" => @longitude,
          }
        }
      }
    end

    specify "extract" do
      lat, lng = Google::Maps::API::Geocode::result_to_lat_lng(@result)
      expect(lat).must_equal @latitude
      expect(lng).must_equal @longitude
    end

  end


  describe ".get_uri" do

    before do
      @uri = real_uri
    end

    specify "request" do
      response = Google::Maps::API::Geocode::get_uri(@uri)
      expect(response).must_exist "response"
    end

  end

  describe ".get_uri_to_json" do

    before do
      @uri = real_uri
    end

    specify "request" do
      response = Google::Maps::API::Geocode::get_uri(@uri)
      json = JSON.parse(response) 
      expect(json).must_exist "json"
    end
  end

end
