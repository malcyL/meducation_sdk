module MeducationSDK
  class Group < Loquor::Resource
    self.path = "/groups"

    def created_by
      @created_by = User.find(created_by_id)
    end

    def admins
      [created_by]
    end
  end

  class GroupMock < Group
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      name: "A great group",
      description: "Some description of a group",
      created_by_id: 23,
      image_url: "http://i.telegraph.co.uk/multimedia/archive/02351/cross-eyed-cat_2351472k.jpg",
      url: "my_url"
    }
  end
end


