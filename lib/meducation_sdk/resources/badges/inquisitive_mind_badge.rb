module MeducationSDK
  module Badges
    class InquisitiveMindBadge < Badge
      self.path = "/badges/inquisitive_mind_badges"
    end

    class InquisitiveMindBadgeMock < InquisitiveMindBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
