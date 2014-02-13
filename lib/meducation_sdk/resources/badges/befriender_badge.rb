module MeducationSDK
  module Badges
    class BefrienderBadge < Badge
      self.path = "/badges/befriender_badges"
    end

    class BefrienderBadgeMock < BefrienderBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
