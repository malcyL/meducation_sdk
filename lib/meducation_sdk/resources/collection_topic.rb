module MeducationSDK

  class CollectionTopic < Resource

    self.path = "/collection_topics"

    def collection
      @collection ||= Collection.find(collection_id)
    end

    def authors
      @authors ||= Author.where(id: author_ids)
    end

    def users
      @users ||= User.where(id: authors.map(&:user_id))
    end

    def comments
      @comments ||= Comment.where(id: comment_ids)
    end

    def item_mesh_headings
      @item_mesh_headings ||= begin
        @data['item_mesh_headings'].map do |imh|
          ItemMeshHeading.new(item_id: imh['item_id'], item_type: imh['item_type'], mesh_root: imh['mesh_root'], mesh_heading: imh['mesh_heading'], relevance: imh['relevance'])
        end
      end
    end

  end

  class CollectionTopicMock < CollectionTopic
    extend Loquor::ResourceMock

    self.attributes = {
      id: 728463,
      title: 'This is a mock collection topic',
      description: 'This is a sample description',
      collection_id: 1,
      section_id: 17,
      resource_ids: [3, 4, 5],
      rating: 123,
      author_ids: [7, 12, 54],
      item_mesh_headings: [
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'A', mesh_heading: 'D000001', relevance: 0.1),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'B', mesh_heading: 'D000002', relevance: 0.2),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'C', mesh_heading: 'D000003', relevance: 0.3)
      ]
    }
  end
end
