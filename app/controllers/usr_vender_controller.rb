class UsrVenderController < ApplicationController

  def index
  end

  def new
    @vender_property = UsrVenderProperty.new
  end

  def create
    @vender_property = UsrVenderProperty.new(vender_property_params)
    if @vender_property.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def vender_property_params
    params.require(:post).permit(:specifiedArea, :mobile)
  end

end


