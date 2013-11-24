require File.expand_path('../test_helper', __FILE__)
module MeducationAPI
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
  end
end
