require File.expand_path('../test_helper', __FILE__)

module MeducationSDK
  class ConfigurationTest < Minitest::Test

    def setup
      super
      MeducationSDK.instance_variable_set("@config", nil)
    end

    def test_obtaining_singletion
      refute MeducationSDK.config.nil?
    end

    def test_block_syntax
      test_key = "foobar-123-access"
      MeducationSDK.config do |config|
        config.access_id = test_key
      end
      assert_equal test_key, Loquor.config.access_id
    end

    def test_endpoint_is_set_correctly
      Configuration.new
      assert_equal "http://www.meducation.net/system", Loquor.config.endpoint
    end

    def test_access_id_proxies_to_loquor
      access_id = "test-access-key"
      MeducationSDK.config.access_id = access_id
      assert_equal access_id, Loquor.config.access_id
    end
  end
end
