module MeducationAPI
  class MediaFile < Loquor::Resource
    self.path = "/media_files"

    def user
      @user ||= User.find(user_id)
    end
  end
end
