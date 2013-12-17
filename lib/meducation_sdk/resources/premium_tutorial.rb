module MeducationSDK
  class PremiumTutorial < Loquor::Resource
    self.path = "/premium_tutorials"

    def user
      @user ||= User.find(user_id)
    end
  end

  class PremiumTutorialMock < PremiumTutorial
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      title: "Al's Medicine Tutorial",
      user_id: 5
    }
  end
end
