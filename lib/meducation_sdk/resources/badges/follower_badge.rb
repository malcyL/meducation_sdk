module MeducationSDK
  module Badges
    class FollowerBadge < Badge
      self.path = "/badges/follower_badges"

      def name
        'Follower'
      end

      def description
       'Unlocked by following 10 people'
      end

      def metal
        :bronze
      end
    end

    class FollowerBadgeMock < FollowerBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end

