require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class BoardTest < ResourceTest
    test_resource(Board, '/boards')

    def test_owner_calls_sdk
      board = Board.new(owner_id: 2, owner_type: "Group")
      MeducationSDK::Group.expects(:find).with(2)
      board.owner
    end

    def test_created_by_calls_sdk
      board = Board.new(created_by_id: 2)
      MeducationSDK::User.expects(:find).with(2)
      board.created_by
    end
  end
end
