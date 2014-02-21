require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class KnowledgeBankAnswerTest < ResourceTest
    test_resource(KnowledgeBankAnswer, '/knowledge_bank_answers')
  end
end
