module MeducationSDK
  module Badges
    class EminentAuthorBadge < Badge
      self.path = "/badges/eminent_author_badges"
    end

    class EminentAuthorBadgeMock < EminentAuthorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
