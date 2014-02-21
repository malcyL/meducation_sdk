module MeducationSDK
  class Message < Resource
    self.path = "/messages"

    def from
      @user ||= User.find(from_id)
    end

    def thread
      @thread ||= MessageThread.find(thread_id)
    end
  end

  class MessageMock < Message
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      thread_id: 20,
      from_id: 10,
      parsed_content: "Foobar123"
    }
  end
end


