module MeducationSDK
  module Badges
    class CommunityMemberBadge < Badge
      self.path = "/badges/community_member_badges"

      def name
        'Community Member'
      end

      def description
       'Unlocked by joining three communities.'
      end

      def metal
        :bronze
      end
    end

    class CommunityMemberBadgeMock < CommunityMemberBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
