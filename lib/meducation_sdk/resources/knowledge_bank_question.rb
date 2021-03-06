module MeducationSDK
  class KnowledgeBankQuestion < Resource
    self.path = "/knowledge_bank_questions"
    self.spi_type = "KnowledgeBank::Question"

    def user
      @user = User.find(user_id)
    end
  end

  class KnowledgeBankQuestionMock < KnowledgeBankQuestion
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      user_id: 12,
      title: "My great question",
      parsed_content: "More details about my question"
    }
  end
end

