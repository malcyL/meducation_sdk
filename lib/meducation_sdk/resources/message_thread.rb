module MeducationSDK
  class MessageThread < Loquor::Resource
    self.path = "/message_threads"

    def contributors
      @contributors ||= MessageThreadContributor.where(thread_id: id)
    end

    def messages
      @messages ||= Message.where(thread_id: id)
    end
  end

  class MessageThreadMock < MessageThread
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1
    }
  end
end

