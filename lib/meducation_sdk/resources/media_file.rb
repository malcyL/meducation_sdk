module MeducationSDK
  class MediaFile < Resource
    self.path = '/media_files'

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= Comment.where(item_id: id, item_type: 'MediaFile')
    end

    def indexable_content
      @indexable_content ||= begin
        object = IndexableContent.where(item_id: id, item_type: 'MediaFile').first
        object ? object.content : ''
      end
    end

    def item_mesh_headings
      @item_mesh_headings ||= begin
        @data['item_mesh_headings'].map do |imh|
          ItemMeshHeading.new(item_id: imh['item_id'], item_type: imh['item_type'], mesh_root: imh['mesh_root'], mesh_heading: imh['mesh_heading'], relevance: imh['relevance'])
        end
      end
    end

    module State
      def self.uploaded; 1 end
      def self.processing; 2 end
      def self.available; 3 end
      def self.redacted; 4 end
    end
  end

  class MediaFileMock < MediaFile
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 1,
      media_type_id: 2,
      media_type: "video",
      title: "Abdominal Ultrasound Tutorial",
      preview_image_url: "http://www.example.com/1.jpg",
      item_mesh_headings: [{id: 1, name: "cardiology"}],
      mesh_headings: [{id: 1, name: "cardiology"}],
      rating: 10,
      usefulness: 1,
      item_mesh_headings: [
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'A', mesh_heading: 'D000001', relevance: 0.1),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'B', mesh_heading: 'D000002', relevance: 0.2),
        ItemMeshHeading.new(item_id: 1, item_type: 'ExternalResource', mesh_root: 'C', mesh_heading: 'D000003', relevance: 0.3)
      ]
    }
  end
end
