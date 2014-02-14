module MeducationSDK
  module Badges
    class EminentAuthorBadge < Badge
      self.path = "/badges/eminent_author_badges"

      def name
        'Eminent Author'
      end

      def description
       'Unlocked by having 10 resources rated at +40.'
      end

      def metal
        :gold
      end
    end

    class EminentAuthorBadgeMock < EminentAuthorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
