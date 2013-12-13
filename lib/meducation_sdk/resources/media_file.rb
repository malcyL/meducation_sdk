module MeducationSDK
  class MediaFile < Loquor::Resource
    self.path = "/media_files"

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= ItemComment.where(item_id: id, item_type: "MediaFile")
    end

    def media_type
      case media_type_id
      when 1; 'slideshow'
      when 2;   'video'
      when 3;  'podcast'
      when 4; 'other'
      when 5; 'image'
      when 6; 'document'
      when 7; 'application'
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
      title: "Abdominal Ultrasound Tutorial"
    }
  end
end
