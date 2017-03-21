class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:usr_contact).permit(:name, :mobile, :email, :password, :password_confirmation, :image)
  end

  def account_update_params
    params.require(:usr_contact).permit(:name, :mobile, :email, :password, :password_confirmation, :current_password)
  end

end
