module MeducationSDK
  class Board < Loquor::Resource
    self.path = "/boards"

    def owner
      @owner ||= "MeducationSDK::#{owner_type.gsub("::", "")}".constantize.find(owner_id)
    end

    def created_by
      @created_by ||= User.find(created_by_id)
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

