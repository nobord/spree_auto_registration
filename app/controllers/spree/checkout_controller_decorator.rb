Spree::CheckoutController.class_eval do

  before_action :check_if_user_exist, only: :update, if: proc { params[:state].eql?('address') }  

  private
  
  def check_if_user_exist
    if current_spree_user.nil? and !Spree::User.find_by_email(params[:order][:email]).nil?
      flash[:error] = "We have already the user account with this email address. Please log in to your account first."
      authenticate_spree_user!
    end
    
    if !current_spree_user.nil? and (params[:order][:email] != current_spree_user.email)
      flash[:error] = "This email address belongs to another user account. Please login as #{current_order.email} or use your previous address #{current_spree_user.email} or use another email address."
      redirect_to checkout_state_path(@order.state) and return
    end
  end
  
  # TODO : kontrola zda je tohle nutné:
  def user_params
    params.require(:user).permit(Spree::PermittedAttributes.user_attributes)
  end

end
