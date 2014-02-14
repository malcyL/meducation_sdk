module MeducationSDK
  module Badges
    class CitizenBadge < Badge
      self.path = "/badges/citizen_badges"

      def name
        'Citizen'
      end

      def description
       'Unlocked by joining Meducation.'
      end

      def metal
        :bronze
      end
    end

    class CitizenBadgeMock < CitizenBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
