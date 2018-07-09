# -*- coding: utf-8 -*-
=begin rdoc
String extensions.
=end

require 'net/http'
require 'uri'
require 'json'

module Google; module Maps; module API; module Geocode

  def self.address_to_lat_lng(google_maps_api_key, address)
    uri = address_to_uri(google_maps_api_key, address)
    json = get_uri_to_json(uri)
    result = json["results"].first
    return result_to_lat_lng(result)
  end

  ## Helpers

  def self.address_to_uri(google_maps_api_key, address)
    return URI.parse("https://maps.googleapis.com/maps/api/geocode/json?key=#{CGI.escape(google_maps_api_key)}&address=#{CGI.escape(address)}")
  end

  def self.result_to_lat_lng(result)
    return [
      result["geometry"]["location"]["lat"], 
      result["geometry"]["location"]["lng"],
    ]
  end

  def self.get_uri(uri)
    Net::HTTP.get(uri)
  end

  def self.get_uri_to_json(uri)
    JSON.parse(get_uri(uri))
  end

end; end; end; end

