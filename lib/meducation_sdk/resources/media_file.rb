module MeducationSDK
  class MediaFile < Loquor::Resource
    self.path = "/media_files"

    def user
      @user ||= User.find(user_id)
    end

    def comments
      @comments ||= ItemComment.where(item_id: id, item_type: "MediaFile")
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
