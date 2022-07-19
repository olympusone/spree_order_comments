# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_order_comments/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_order_comments'
  s.version     = SpreeOrderComments.version
  s.summary     = 'With this GEM you can use comments field on order and on every line item.'
  s.description = s.summary
  s.required_ruby_version = '>= 2.5'

  s.author       = 'OlympusOne'
  s.email        = 'info@olympusone.com'
  s.homepage     = 'https://github.com/olympusone/spree_order_comments'
  s.license      = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.3.2'
  s.add_dependency 'spree', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
end
