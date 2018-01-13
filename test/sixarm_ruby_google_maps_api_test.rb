# -*- coding: utf-8 -*-
require "minitest/autorun"
#require "minitest/benchmark" if ENV["BENCH"]
require "sixarm_ruby_minitest_extensions"
require "faker"
require "coveralls"
require "simplecov"
Coveralls.wear!
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start
require "sixarm_ruby_google_maps_api"