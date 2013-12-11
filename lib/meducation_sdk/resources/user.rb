module MeducationSDK
  class User < Loquor::Resource
    self.path = "/users"

    def community_memberships
      CommunityMembership.where(user_id: 1)
    end

    def communities
      Community.where(id: community_memberships.map(&:id))
    end

    def settings
      UserSettings.where(user_id: id).first
    end
  end

  class UserMock < User
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "Jeremy Walker",
      photo_url: "http://i.telegraph.co.uk/multimedia/archive/02351/cross-eyed-cat_2351472k.jpg",
      primary_email_address: "jez.walker@gmail.com"
    }
  end
end
