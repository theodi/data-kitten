require "data_kitten"
require "fakeweb"
require "linkeddata"
require "pry"

FakeWeb.allow_net_connect = false

if ENV["COVERAGE"]
  require "coveralls"
  Coveralls.wear!
  FakeWeb.allow_net_connect = %r{^https://coveralls.io}
end

RSpec.configure do |config|
  config.order = "random"
end

def load_fixture(file)
  File.read(File.join(__dir__, "fixtures", file))
end
