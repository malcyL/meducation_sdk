module MeducationSDK
  module Badges
    class CommentatorBadge < Badge
      self.path = "/badges/commentator_badges"
    end

    class CommentatorBadgeMock < CommentatorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
