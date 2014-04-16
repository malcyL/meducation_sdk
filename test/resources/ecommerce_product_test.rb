require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class EcommerceProductTest < ResourceTest
    test_resource(EcommerceProduct, '/ecommerce_products')

    def setup
      super
      @collection = MeducationSDK::Collection.new({id: 1, slug: "funky_professor"})
    end

    def test_item_calls_sdk_when_known_type
      product = EcommerceProduct.new(item_id: 3, item_type: "Collection")
      MeducationSDK::Collection.expects(:find).with(3).returns(@collection)
      assert_equal @collection, product.item
    end

    def test_item_raises_error_when_unknown_type
      product = EcommerceProduct.new(item_id: 3, item_type: "UnknownType")
      assert_raises NameError do
        product.item
      end
    end

    def test_collection_returns_when_item_a_collection
      product = EcommerceProduct.new(item_id: 3, item_type: "Collection")
      MeducationSDK::Collection.expects(:find).with(3).returns(@collection)
      assert_equal @collection, product.collection
    end

    def test_collection_raises_error_when_item_not_a_collection
      media_file = MeducationSDK::MediaFile.new({id: 1})
      product = EcommerceProduct.new(item_id: 3, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(3).returns(media_file)
      assert_raises MeducationSDKError do
        product.collection
      end
    end

  end
end

