require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CommentTest < ResourceTest
    test_resource(Comment, '/comments')

    def test_item_calls_sdk
      comment = Comment.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      comment.item
    end

    def test_user_calls_sdk
      comment = Comment.new(user_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      comment.user
    end
  end
end

