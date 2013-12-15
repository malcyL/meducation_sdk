require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class GroupDiscussionPostTest < ResourceTest
    test_resource(GroupDiscussionPost, '/group_discussion_posts')
  end
end

