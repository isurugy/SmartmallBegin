class UsrBuyerController < ApplicationController
  def index
    @currentuserid = current_usr_contact.id
    @buyer_details = UsrBuyer.find(id= @currentuserid)
  end

  def new
    @buyer = UsrBuyer.new
    @usr_buyer_payment_method = UsrBuyerPaymentMethod.new
  end

  def create
    @buyer = UsrBuyer.new(buyer_params)
    @buyer.usr_contact_id = @currentuserid
    @usr_buyer_payment_method = UsrBuyerPaymentMethod.new(usr_buyer_payment_method_params)
    if @buyer.save()
      redirect_to root_path, notice: 'Buyer details successfully updated' and return
    else
      redirect to root_path, notice: 'Buyer details could not be saved successfully' and return
    end

    if @usr_buyer_payment_method.save
      redirect_to root_path, notice: 'Usr buyer payment method was successfully created.' and return
    else
      redirect_to root_path, notice: 'Usr buyer payment method was not successfully created.' and return
    end

  end

  def edit
    @buyer = UsrBuyer.find(usr_contact_id = @currentuserid)
  end

  def update
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
    params.require(:usr_buyer).permit(:user_image, :gender, :first_name, :last_name, :contact_number, :dob, :anniversary )
  end
  def usr_buyer_payment_method_params
    params.require(:usr_buyer_payment_method).permit(:card_name, :card_number, :cvv, :expiry_date)
  end
end
