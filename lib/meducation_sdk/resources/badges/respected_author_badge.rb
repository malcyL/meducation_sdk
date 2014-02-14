module MeducationSDK
  module Badges
    class RespectedAuthorBadge < Badge
      self.path = "/badges/respected_author_badges"

      def name
        'Respected Author'
      end

      def description
       'Unlocked by having 3 resources rated at +25.'
      end

      def metal
        :silver
      end
    end

    class RespectedAuthorBadgeMock < RespectedAuthorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
