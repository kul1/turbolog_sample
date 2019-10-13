class Jinda::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
     @user = Jinda::User.from_omniauth(request.env["omniauth.auth"])
     sign_in_and_redirect @user      
  end
end
