module MeducationSDK
  module Badges
    class Badge < Loquor::Resource

      def self.issue_or_update_progress(user_id)
        Loquor.put("#{self.path}/issue_or_update_progress", {user_id: user_id})
      end

      def user
        @user ||= User.find(user_id)
      end
    end

    class BadgeMock < Badge
      extend Loquor::ResourceMock

      self.attributes = {
        id: 1,
        user_id: 1
      }
    end
  end
end

