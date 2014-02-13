gem "minitest"
require "minitest/autorun"
require "minitest/pride"
require "minitest/mock"
require "mocha/setup"

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "meducation_sdk"
require_relative 'resources/badges/badge_test.rb'

class Minitest::Test
  def setup
    Filum.config.logfile = "./log/test.log"
    MeducationSDK.config do |config|
      config.logger = mock()
      config.logger.stubs(:debug)
      config.logger.stubs(:info)
      config.logger.stubs(:error)
    end
    Loquor.config do |config|
      config.logger = MeducationSDK.config.logger
      config.access_id = "Sermo"
      config.secret_key = "foobar"
      config.endpoint = "http://localhost:3000/system"
    end
  end
end
