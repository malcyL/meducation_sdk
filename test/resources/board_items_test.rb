require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class BoardItemTest < ResourceTest
    test_resource(BoardItem, '/board_items')

    def test_owner_calls_sdk
      item = BoardItem.new(item_id: 2, item_type: "MediaFile")
      MeducationSDK::MediaFile.expects(:find).with(2)
      item.item
    end

    def test_user_calls_sdk
      item = BoardItem.new(user_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      item.user
    end

    def test_board_calls_sdk
      item = BoardItem.new(board_id: 2)
      MeducationSDK::Board.expects(:find).with(2)
      item.board
    end

  end
end

