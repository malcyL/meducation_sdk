module MeducationSDK
  class KnowledgeBankAnswer < Loquor::Resource
    self.path = "/knowledge_bank_answers"

    def question
      @question = KnowledgeBankQuestion.find(question_id)
    end

    def user
      @user = User.find(user_id)
    end
  end

  class KnowledgeBankAnswerMock < KnowledgeBankAnswer
    extend Loquor::ResourceMock

    self.attributes = {
      id: 1,
      question_id: 5,
      user_id: 12,
      parsed_content: "My great answer"
    }
  end
end
