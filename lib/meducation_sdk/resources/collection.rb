module MeducationSDK

  class Collection < Loquor::Resource

    self.path = "/collections"

    def sections
      @sections ||= Section.where(collection_id: id)
    end

  end

  class CollectionMock < Collection
    extend Loquor::ResourceMock

    self.attributes = {
      id: 7,
      title: 'This is a mock collection',
      description: 'This is a sample description',
      market_description: 'This is a sample market description',
      section_ids: [2,3,4,5,6],
      topic_ids: [1,2,3,4],
      resource_ids: [9,8,7,6]
    }

  end

end
