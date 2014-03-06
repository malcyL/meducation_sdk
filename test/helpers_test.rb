require_relative 'test_helper'
module MeducationSDK
  class HelperTestClass
    include Helpers
  end

  class HelpersTest < Minitest::Test
    {
      "Item::Comment" => "MeducationSDK::Comment",
      "KnowledgeBank::Question" => "MeducationSDK::KnowledgeBankQuestion"
    }.each do |spi_type, sdk_type|
      define_method "test_sdk_type_for_#{spi_type.underscore.gsub("/", "_")}" do
        assert_equal sdk_type, HelperTestClass.new.sdk_type_for(spi_type)
      end
      define_method "test_sdk_class_for_#{spi_type.underscore.gsub("/", "_")}" do
        assert_equal sdk_type.constantize, HelperTestClass.new.sdk_class_for(spi_type)
      end
      define_method "test_spi_type_for_#{spi_type.underscore.gsub("/", "_")}" do
        assert_equal spi_type, HelperTestClass.new.spi_type_for(sdk_type)
      end
    end
  end
end
