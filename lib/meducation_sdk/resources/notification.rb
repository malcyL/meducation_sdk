module MeducationSDK
  class Notification < Loquor::Resource
    self.path = "/notifications"

    def item
      @item ||= "MeducationSDK::#{item_type}".constantize.find(item_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class NotificationMock < ItemComment
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      notification: "foobar",
      user_id: 5,
      item_id: 3,
      item_type: "Comment"
    }
  end
end
