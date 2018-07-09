# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
])
SimpleCov.start

require "faker"
require "sixarm_ruby_minitest_extensions"
require "sixarm_ruby_google_maps_api"
#require "minitest/benchmark" if ENV["BENCH"]

