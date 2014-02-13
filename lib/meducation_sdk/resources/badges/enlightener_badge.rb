module MeducationSDK
  module Badges
    class EnlightenerBadge < Badge
      self.path = "/badges/enlightener_badges"

      def name
        'Enlightener'
      end

      def description
       'Posted an accepted answer for 10 questions.'
      end

      def metal
        :silver
      end
    end

    class EnlightenerBadgeMock < EnlightenerBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
