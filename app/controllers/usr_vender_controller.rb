class UsrVenderController < ApplicationController

  def index
  end

  def new
    @vender_property = UsrVenderProperty.new
  end

  def create
    @vender_property = UsrVenderProperty.new(vender_property_params)
    @currentuser = current_usr_contact
    @user_contct_vender = UsrContactVender.new()


    if @vender_property.save
      @vender_property_last = UsrVenderProperty.last.id
      @user_contct_vender.usr_contacts_id =  @currentuser.id
      @user_contct_vender.usr_vender_properties_id = @vender_property_last

      if @user_contct_vender.save
        redirect_to root_path
      end

    else
      render 'new'
    end
  end

  private
  def vender_property_params
    params.require(:post).permit(:specifiedArea, :mobile)
  end

end


