module MeducationSDK
  class BoardFollower < Resource
    self.path = "/board_followers"

    def board
      @board ||= Board.find(board_id)
    end

    def user
      @user ||= User.find(user_id)
    end

  end

  class BoardFollowerMock < BoardFollower
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      board_id: 8,
      user_id: 14
    }
  end
end


