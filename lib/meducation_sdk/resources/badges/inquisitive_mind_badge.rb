module MeducationSDK
  module Badges
    class InquisitiveMindBadge < Badge
      self.path = "/badges/inquisitive_mind_badges"

      def name
        'Inquisitive Mind'
      end

      def description
       'Unlocked by asking 10 questions rated at least +10.'
      end

      def metal
        :silver
      end
    end

    class InquisitiveMindBadgeMock < InquisitiveMindBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
