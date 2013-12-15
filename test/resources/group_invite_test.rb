require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class GroupInviteTest < ResourceTest
    test_resource(GroupInvite, '/group_invites')
  end
end

