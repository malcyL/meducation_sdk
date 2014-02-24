require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class DashboardItemTest < ResourceTest
    test_resource(DashboardItem, '/dashboard_items')

    def test_user_calls_sdk
      dashboard_item = DashboardItem.new(user_id: 3, item_type: "MediaFile", item_id: 17)
      MeducationSDK::User.expects(:find).with(3)
      dashboard_item.user
    end

    def test_item_calls_sdk
      dashboard_item = DashboardItem.new(user_id: 3, item_type: "MediaFile", item_id: 17)
      MeducationSDK::MediaFile.expects(:find).with(17)
      dashboard_item.item
    end
  end
end