module MeducationSDK

  class CollectionSection < Loquor::Resource

    self.path = "/collection_sections"

    def topics
      @topics ||= Section.where(section_id: id)
    end

  end

  class CollectionSectionMock < Collection
    extend Loquor::ResourceMock

    self.attributes = {
      id: 463728,
      title: 'This is a mock collection section',
      description: 'This is a sample description',
      collection_id: 1,
      topic_ids: [1,2,4],
      resource_ids: [9,8]
    }

  end

end
