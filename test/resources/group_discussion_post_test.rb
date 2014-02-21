require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class GroupDiscussionPostTest < ResourceTest
    test_resource(GroupDiscussionPost, '/group_discussion_posts')
  end
end

