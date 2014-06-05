module MeducationSDK
  class Purchases
    include Helpers

    def self.create(user, purchase_option_id, order)
      new(user, purchase_option_id, order).create
    end

    attr_reader :user, :purchase_option_id, :order

    def initialize(user, purchase_option_id, order)
      @user = user
      @purchase_option_id = purchase_option_id
      @order = order
    end

    def create
      Loquor.post("/purchases", {user: @user, purchase_option_id: @purchase_option_id, order: @order})
    end

  end
end
