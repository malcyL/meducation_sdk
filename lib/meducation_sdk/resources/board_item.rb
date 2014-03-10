module MeducationSDK
  class BoardItem < Resource
    self.path = "/board_items"

    def item
      @item ||= sdk_class_for(item_type).find(item_id)
    end

    def board
      @board ||= Board.find(board_id)
    end

    def user
      @user ||= User.find(user_id)
    end

  end

  class BoardItemMock < BoardItem
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      board_id: 8,
      item_id: 5, item_type: "MediaFile",
      user_id: 14
    }
  end
end


