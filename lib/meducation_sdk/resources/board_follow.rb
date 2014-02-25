module MeducationSDK
  class BoardFollow < Resource
    self.path = "/board_follows"

    def board
      @board ||= Board.find(board_id)
    end

    def user
      @user ||= User.find(user_id)
    end

  end

  class BoardFollowMock < BoardFollow
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      board_id: 8,
      user_id: 14
    }
  end
end


