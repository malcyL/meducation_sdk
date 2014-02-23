require File.expand_path('../test_helper', __FILE__)
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

    {
      "Item::Comment" => Comment,
      "KnowledgeBank::Question" => KnowledgeBankQuestion
    }.each do |meducation_type, sdk_class|
      define_method "test_class_for_#{meducation_type.underscore.gsub("/", "_")}" do
        r = Resource.new({})
        assert_equal sdk_class, r.class_for(meducation_type)
      end
    end

    def test_created_at_is_a_datetime
      resource = Resource.new(created_at: "2014-02-23T23:34:49Z")
      assert resource.created_at.is_a?(DateTime)
      assert_equal DateTime.new(2014, 2, 23, 23, 34, 49), resource.created_at
    end
  end
end
