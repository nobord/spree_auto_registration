Spree::Core::Engine.routes.draw do
  devise_scope :spree_user do
    put '/user/spree_user/confirmation', to: 'user_confirmations#update', as: :update_spree_user_confirmation
  end
end
