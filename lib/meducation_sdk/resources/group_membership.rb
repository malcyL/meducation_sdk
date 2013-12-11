module MeducationSDK
  class GroupMembership < Loquor::Resource
    self.path = "/group_memberships"

    def group
      @group ||= Group.find(group_id)
    end

    def user
      @user ||= User.find(user_id)
    end
  end

  class GroupMembershipMock < GroupMembership
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      group_id: 5,
      user_id: 8
    }
  end
end
