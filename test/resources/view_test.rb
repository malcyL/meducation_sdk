require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class ViewTest < ResourceTest
    test_resource(View, '/views')

    def test_item_calls_sdk
      view = View.new(user_id: 30660, item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      view.item
    end

    def test_user_calls_sdk
      view = View.new(user_id: 30660, item_id: 2, item_type: "MediaFile")
      MeducationSDK::User.expects(:find).with(30660)
      view.user
    end
  end
end


