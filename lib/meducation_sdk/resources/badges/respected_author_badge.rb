module MeducationSDK
  module Badges
    class RespectedAuthorBadge < Badge
      self.path = "/badges/respected_author_badges"
    end

    class RespectedAuthorBadgeMock < RespectedAuthorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
