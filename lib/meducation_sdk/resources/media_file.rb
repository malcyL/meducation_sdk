module MeducationSDK
  class MediaFile < Loquor::Resource
    self.path = "/media_files"

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= ItemComment.where(item_id: id, item_type: "MediaFile")
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
      rating: 10
    }
  end
end
