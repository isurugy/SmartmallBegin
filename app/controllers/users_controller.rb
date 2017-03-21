class UsersController < ApplicationController
  def index
    @cotacts = Contact.all
  end

  def register
  end
end
