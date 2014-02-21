module MeducationSDK
  class GroupInvite < Resource
    self.path = "/group_invites"

    def group
      return nil unless group_id.to_i > 0
      @group ||= Group.find(group_id)
    end

    def invited_by
      return nil unless invited_by_id.to_i > 0
      @invited_by ||= User.find(invited_by_id)
    end

    def user
      return nil unless user_id.to_i > 0
      @user ||= User.find(user_id)
    end
  end

  class GroupInviteMock < GroupInvite
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      group_id: 8,
      user_id: 8,
      invited_by_id: 12,
      message: "",
      email: "",
      accept_code: "123asdqwe"
    }
  end
end

