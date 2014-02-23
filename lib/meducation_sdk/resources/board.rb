module MeducationSDK
  class Board < Resource
    self.path = "/boards"

    def owner
      @owner ||= class_for(owner_type).find(owner_id)
    end

    def created_by
      @created_by ||= User.find(created_by_id)
    end

    def items
      @items ||= BoardItem.where(board_id: self.id)
    end
  end

  class BoardMock < Board
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      created_by_id: 8,
      owner_id: 5, owner_type: "Group",
      name: "Greatest Board",
      description: "This is the greatest board ever!!"
    }
  end
end

