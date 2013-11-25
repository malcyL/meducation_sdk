module MeducationSDK
  class PremiumTutorial < Loquor::Resource
    self.path = "/premium_tutorials"
  end

  class PremiumTutorialMock < PremiumTutorial
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      title: "Al's Medicine Tutorial",
    }
  end
end
