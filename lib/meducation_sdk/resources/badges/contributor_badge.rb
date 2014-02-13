module MeducationSDK
  module Badges
    class ContributorBadge < Badge
      self.path = "/badges/contributor_badges"
      def name
        'Contributor'
      end

      def description
       'Unlocked by contributing to Meducation.'
      end

      def metal
        :gold
      end
    end

    class ContributorBadgeMock < ContributorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
