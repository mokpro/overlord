require File.join(File.dirname(__FILE__), '..', 'overlord.rb')

require 'sinatra'
require 'rack/test'
require 'coveralls'

Coveralls.wear!

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
