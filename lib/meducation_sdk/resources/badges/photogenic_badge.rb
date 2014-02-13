module MeducationSDK
  module Badges
    class PhotogenicBadge < Badge
      self.path = "/badges/photogenic_badges"

      def name
        'Photogenic'
      end

      def description
       'Unlocked by uploading a profile picture.'
      end

      def metal
        :bronze
      end
    end

    class PhotogenicBadgeMock < PhotogenicBadge
      extend Loquor::ResourceMock
      self.attributes = { id: 1, user_id: 1 }
    end
  end
end

