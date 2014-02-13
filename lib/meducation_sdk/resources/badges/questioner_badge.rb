module MeducationSDK
  module Badges
    class QuestionerBadge < Badge
      self.path = "/badges/questioner_badges"
    end

    class QuestionerBadgeMock < QuestionerBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
