require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../lib/app.rb', __FILE__

module RSpecMixin
    include Rack::Test::Methods
    def app() Dict end
end

RSpec.configure { |c| c.include RSpecMixin }

