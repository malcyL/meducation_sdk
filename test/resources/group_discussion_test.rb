require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class GroupDscussionTest < ResourceTest
    test_resource(GroupDiscussion, '/group_discussions')
  end
end

