module MeducationSDK
  class Comment < Resource
    self.path = "/comments"
    self.spi_type = "Item::Comment"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
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
