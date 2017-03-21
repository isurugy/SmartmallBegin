class UsrController < ApplicationController
  def index
    @cotacts = UsrContact.all # get all registerd contacts
  end

  def register
  end
end
