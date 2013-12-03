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
      title: "Abdominal Ultrasound Tutorial"
    }
  end
end
