module MeducationSDK
  class CommunityMembership < Loquor::Resource
    self.path = "/community_memberships"
  end

  class CommunityMembershipMock < CommunityMembership
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      community_id: 23,
      user_id: 49,
    }
  end
end

