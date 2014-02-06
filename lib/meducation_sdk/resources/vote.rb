module MeducationSDK
  class Vote < Loquor::Resource
    self.path = "/votes"

    def item
      @item ||= "MeducationSDK::#{item_type.gsub("::", "")}".constantize.find(item_id)
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

