<img src="README.png" width="960" height="120" alt="README" />

# SixArm.com → Ruby → <br> Google Maps API Geocode gem

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_google_maps_api.svg)](http://badge.fury.io/rb/sixarm_ruby_google_maps_api)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_google_maps_api.png)](https://travis-ci.org/SixArm/sixarm_ruby_google_maps_api)
[![Code Climate](https://api.codeclimate.com/v1/badges/eb813571fc864645b708/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_google_maps_api/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_google_maps_api>
* Doc: <http://sixarm.com/sixarm_ruby_google_maps_api/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_google_maps_api>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Use Google Maps API to geocode an address to a latitude and longitude.

For docs go to <http://sixarm.com/sixarm_ruby_google_maps_api/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_google_maps_api

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_google_maps_api'

### Require

To require the gem in your code:

    require 'sixarm_ruby_google_maps_api'

<!--install-shut-->


## Example

Example:

    require "sixarm_ruby_google_maps_api"
    google_maps_api_key = "EXAMPLE"
    address = "1 Main Street, San Francisco, CA, 94111, US"
    lat, lng = Google::Maps::API::Geocode::address_to_lat_lng(google_maps_api_key, address)
