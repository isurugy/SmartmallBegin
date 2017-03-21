class BuyerController < ApplicationController
  def index
  end

  def new
    @buyer = UsrBuyer.new
  end

  def create
    @currentuser = current_user
    @buyer = UsrBuyer.new(buyer_params)
    @currentuser.usr_buyer = @buyer
    if @buyer.save()
      redirect_to root_path
    else
      redirect_to root_path
    end

  end

  def edit
    @currentuserid = current_user.id
    @buyer = UsrBuyer.find(usr_contact_id = @currentuserid)
  end

  def update
    @currentuserid = current_user.id
    @buyer = UsrBuyer.find(usr_contact_id = @currentuserid)
    if @buyer.update_attributes(buyer_params)
      redirect_to root_path
    else
      redirect_to root_path
    end


  end

  def destroy

  end

  private
  def buyer_params
    params.require(:usr_buyer).permit(:addressLine1, :addressLine2, :addressLine3, :city, :zipCode, :country, :dob, :anniversary )
  end
end
