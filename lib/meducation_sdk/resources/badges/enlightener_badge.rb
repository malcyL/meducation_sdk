module MeducationSDK
  module Badges
    class EnlightenerBadge < Badge
      self.path = "/badges/enlightener_badges"
    end

    class EnlightenerBadgeMock < EnlightenerBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
