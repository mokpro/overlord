# Generated by cucumber-sinatra. (2015-06-01 10:23:31 -0500)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'overlord.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Overlord

class OverlordWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  OverlordWorld.new
end