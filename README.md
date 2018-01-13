<img src="README.png" width="960" height="120" alt="README" />

# SixArm.com → Ruby → <br> Google Maps API Geocode gem

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_google_maps_api.svg)](http://badge.fury.io/rb/sixarm_ruby_google_maps_api)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_google_maps_api.png)](https://travis-ci.org/SixArm/sixarm_ruby_google_maps_api)
[![Code Climate](https://codeclimate.com/github/SixArm/sixarm_ruby_google_maps_api.png)](https://codeclimate.com/github/SixArm/sixarm_ruby_google_maps_api)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_google_maps_api/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_google_maps_api?branch=master)
ude
* Git: <https://github.com/sixarm/sixarm_ruby_google_maps_api>
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

Run this command in your shell or terminal:

gem install sixarm_ruby_google_maps_api

Or add this to your Gemfile:

    gem 'sixarm_ruby_google_maps_api'

### Require

To require this gem in your code:

    require 'sixarm_ruby_google_maps_api'

<!--install-shut-->


## Example

Example:

    require "sixarm_ruby_google_maps_api"
    google_maps_api_key = "EXAMPLE"
    address = "1 Main Street, San Francisco, CA, 94111, US"
    latitude, longitude = Google::Maps::API::Geocode::parse_address_to_latitude_longitude(google_maps_api_key, address)
