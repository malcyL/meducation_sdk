module MeducationSDK
  class Vote < Resource
    self.path = "/votes"
    self.spi_type = "Item::Vote"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class VoteMock < Vote
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 8,
      item_id: 5,
      item_type: "MediaFile",
      liked: true
    }
  end
end

