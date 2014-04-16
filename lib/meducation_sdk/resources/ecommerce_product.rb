module MeducationSDK
  class EcommerceProduct < Resource
    self.path = "/ecommerce_products"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

    def collection
      item.is_a?(Collection) ? item : (raise MeducationSDKError.new("Item is not a collection. It is a #{item.class.name}"))
    end

  end

  class EcommerceProductMock < EcommerceProduct
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      item_type: 89,
      item_id: 90
    }
  end
end
