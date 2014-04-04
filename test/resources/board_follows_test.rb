require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class BoardFollowTest < ResourceTest
    test_resource(BoardFollow, '/board_follows')

    def test_user_calls_sdk
      follow = BoardFollow.new(user_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      follow.user
    end

    def test_board_calls_sdk
      follow = BoardFollow.new(board_id: 2)
      MeducationSDK::Board.expects(:find).with(2)
      follow.board
    end
  end
end

