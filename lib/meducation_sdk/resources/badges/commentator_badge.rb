module MeducationSDK
  module Badges
    class CommentatorBadge < Badge
      self.path = "/badges/commentator_badges"

      def name
        'Commentator'
      end

      def description
       'Unlocked by making 10 comments rated at +3.'
      end

      def metal
        :silver
      end
    end

    class CommentatorBadgeMock < CommentatorBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end
