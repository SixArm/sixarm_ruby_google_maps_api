# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_google_maps_api"
  s.summary        = "SixArm.com → Ruby → Google Maps API geocode"
  s.description    = "Use the Google Maps API to geocode an address to a latitude and longitude"
  s.version        = "1.2.1"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "CC-BY-NC-SA-4.0", "AGPL-3.0", "EPL-1.0", "GPL-2.0", "GPL-3.0", "LGPL-3.0", "MIT", "MPL-2.0", "Ruby"]

  s.signing_key    = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-private.pem"
  s.cert_chain     = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20180113-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"


  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_google_maps_api.rb",
    "lib/sixarm_ruby_google_maps_api/geocode.rb",    
  ]

  s.test_files = [
    "test/sixarm_ruby_google_maps_api_test.rb",
    "test/sixarm_ruby_google_maps_api_test/geocode_test.rb",    
  ]

  s.add_dependency('json', '>= 2.1.0', '< 3')

  s.add_development_dependency('minitest', '>= 5.7.0', '< 6')
  s.add_development_dependency('sixarm_ruby_minitest_extensions', '>= 1.0.8', '< 2')
  s.add_development_dependency('rake', '> 10.4.2', '< 11')
  s.add_development_dependency('simplecov', '>= 0.10.0', '< 2')
  s.add_development_dependency('coveralls', '>= 0.8.2', '< 2')
  s.add_development_dependency('faker', '>= 1.8.7', '< 2')

  s.required_ruby_version = ">= 2.2"

end
