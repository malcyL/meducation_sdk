module MeducationSDK
  class User < Resource
    self.path = "/users"

    def community_memberships
      CommunityMembership.where(user_id: 1)
    end

    def communities
      community_membership_ids = community_memberships.map(&:id)
      return [] if community_membership_ids.empty?
      Community.where(id: community_membership_ids)
    end

    def email_preferences
      UserEmailPreferences.where(user_id: id).first
    end

    def settings
      UserSettings.where(user_id: id).first
    end
  end

  class UserMock < User
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      first_name: "Jeremy",
      surname: "Walker",
      name: "Jeremy Walker",
      short_display_name: "Jeremy",
      photo_url: "http://i.telegraph.co.uk/multimedia/archive/02351/cross-eyed-cat_2351472k.jpg",
      primary_email_address: "jez.walker@gmail.com",
      url_code: "asd1234567",
      is_site_admin: false,
      viewable_collections: []
    }
  end
end
