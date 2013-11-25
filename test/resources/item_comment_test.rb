require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class ItemCommentTest < ResourceTest
    test_resource(ItemComment, '/item_comments')

    def test_item_calls_sdk
      comment = ItemComment.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      comment.item
    end
  end
end

