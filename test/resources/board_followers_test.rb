require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class BoardFollowerTest < ResourceTest
    test_resource(BoardFollower, '/board_followers')

    def test_user_calls_sdk
      follower = BoardFollower.new(user_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      follower.user
    end

    def test_board_calls_sdk
      follower = BoardFollower.new(board_id: 2)
      MeducationSDK::Board.expects(:find).with(2)
      follower.board
    end

  end
end

