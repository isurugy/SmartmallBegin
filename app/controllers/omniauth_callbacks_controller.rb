class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def twiter
  #     contact = UsrContact.from_omniauth(request.env['omniauth.auth'])
  #   if contact.persisted?
  #     sign_in_and_redirect contact, notice: 'Signed in!!'
  #   else
  #     session["devise.usr_contact_attributes"] = contact.attributes
  #     redirect_to new_usr_contact_registration_path
  #   end
  # end
#  alias_method :twiter, :all
  def twitter
    @contact = UsrContact.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @contact
  end

end
