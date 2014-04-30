module MeducationSDK
  class ExternalResource < Loquor::Resource
    self.path = "/external_resources"

    def created_by
      @created_by ||= User.find(created_by_id)
    end

    def indexable_content
      @indexable_content ||= begin
        object = IndexableContent.where(item_id: id, item_type: "ExternalResource").first
        object ? object.content : ''
     end
    end

    def self.reimport_metadata(id)
      new Loquor.post("#{path}/#{id}/reimport_metadata", {})
    end

  end

  class ExternalResourceMock < ExternalResource
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      created_by_id: 1,
      site_name: 'FooTube',
      url: 'http://footube.example.com/foo/bar',
      title: 'Foo Bar Baz',
      description: 'The Foo Bar Baz mock external resource is a great FooTube video.',
      rating: 10
    }

  end
end
