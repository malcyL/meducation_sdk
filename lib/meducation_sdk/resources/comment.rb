module MeducationSDK
  class Comment < Loquor::Resource
    self.path = "/comments"

    def item
      @item ||= "MeducationSDK::#{item_type.gsub("::", "")}".constantize.find(item_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class CommentMock < Comment
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      item_id: 5, item_type: "MediaFile",
      parsed_content: "Foobar"
    }
  end
end
