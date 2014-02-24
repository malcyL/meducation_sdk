require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class GroupInviteTest < ResourceTest
    test_resource(GroupInvite, '/group_invites')
  end
end

