module MeducationSDK
  class Notification < Resource
    self.path = "/notifications"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class NotificationMock < Notification
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      action: "comment_new",
      user_id: 5,
      item_id: 3,
      item_type: "Comment"
    }
  end
end
