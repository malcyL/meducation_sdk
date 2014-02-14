module MeducationSDK
  module Badges
    class QuestionerBadge < Badge
      self.path = "/badges/questioner_badges"

      def name
        'Questioner'
      end

      def description
       'Unlocked by asking an answered question rated at least +10.'
      end

      def metal
        :bronze
      end
    end

    class QuestionerBadgeMock < QuestionerBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
