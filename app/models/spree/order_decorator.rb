Spree::Order.state_machine.before_transition to: :complete, do: :create_user_account

Spree::Order.class_eval do
  
  def create_user_account
    if Spree::User.find_by_email(self.email).nil?
      user = Spree::User.new(email: self.email, bill_address_id: self.bill_address_id, ship_address_id: self.ship_address_id)
      unless user.save(:validate => false)
        logger.error "automatic creation of the user was not successful"
      end
      self.user_id = user.id
    end
  end  
  
end