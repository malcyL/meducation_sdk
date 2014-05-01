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

    def item_mesh_headings
      @item_mesh_headings ||= begin
        @data['item_mesh_headings'].map do |imh|
          ItemMeshHeading.new(item_id: imh['item_id'], item_type: imh['item_type'], mesh_root: imh['mesh_root'], mesh_heading: imh['mesh_heading'], relevance: imh['relevance'])
        end
      end
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
      rating: 10,
      item_mesh_headings: [
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'A', mesh_heading: 'D000001', relevance: 0.1),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'B', mesh_heading: 'D000002', relevance: 0.2),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'C', mesh_heading: 'D000003', relevance: 0.3)
      ]
    }

  end
end
