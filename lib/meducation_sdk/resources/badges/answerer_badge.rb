module MeducationSDK
  module Badges
    class AnswererBadge < Badge
      self.path = "/badges/answerer_badges"
    end

    class AnswererBadgeMock < AnswererBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
