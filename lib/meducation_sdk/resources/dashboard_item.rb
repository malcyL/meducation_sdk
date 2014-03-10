module MeducationSDK
  class DashboardItem < Resource
    self.path = "/dashboard_items"

    def user
      @user ||= User.find(user_id)
    end

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end
  end

  class DashboardItemMock < DashboardItem
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 20,
      item_type: "MediaFile",
      item_id: 17
    }
  end
end
