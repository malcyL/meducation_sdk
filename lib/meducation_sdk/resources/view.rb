module MeducationSDK
  class View < Resource
    self.path = "/view"
    self.spi_type = "Item::View"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class ViewMock < View
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      item_id: 5,
      item_type: "MediaFile"
    }
  end
end

