module MeducationSDK
  module Badges
    class ContributorBadge < Badge
      self.path = "/badges/contributor_badges"
    end

    class ContributorBadgeMock < ContributorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
