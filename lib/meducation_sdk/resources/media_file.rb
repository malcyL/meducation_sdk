module MeducationSDK
  class MediaFile < Resource
    self.path = "/media_files"

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= Comment.where(item_id: id, item_type: "MediaFile")
    end

    def indexable_content
      @indexable_content ||= begin
        object = IndexableContent.where(item_id: id, item_type: "MediaFile").first
        object ? object.content : ''
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
      mesh_headings: [{id: 1, name: "cardiology"}], 
      rating: 10,
      views_in_last_30_days: 30,
      views_in_last_60_days: 60,
      usefulness: 1
    }
  end
end
