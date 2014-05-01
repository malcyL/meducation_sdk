require_relative 'test_helper'
module MeducationSDK
  class ResourceTest < Minitest::Test
    def self.test_resource(klass, url)
      define_method :klass do klass end
      define_method :url do url end

      class_eval do
        def test_path
          assert_equal url, klass.path
        end

        def test_generates_find_url
          id = 7
          Loquor::HttpAction::Get.expects(:get).with("#{url}/#{id}", anything())
          klass.find(id)
        end
      end
    end
    define_method 'test_helpers_included' do
      assert Resource.new({}).respond_to?(:sdk_class_for)
    end

    def test_created_at_is_a_datetime
      resource = Resource.new(created_at: '2014-02-23T23:34:49Z')
      assert resource.created_at.is_a?(DateTime)
      assert_equal DateTime.new(2014, 2, 23, 23, 34, 49), resource.created_at
    end
  end
end
