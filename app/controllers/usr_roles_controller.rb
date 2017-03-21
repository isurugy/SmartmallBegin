class UsrRolesController < ApplicationController

  def index
    @roles = UsrRole.all #show all users
  end

  def new
    @role = UsrRole.new
    @all_permissions = UsrPermission.all
    @role_permissions = @role.usr_role_permissions.build
  end

  def create
    @role = UsrRole.new(role_params)
    params[:usr_permissions][:id].each do |permission|
      if !permission.empty?
        @role.usr_role_permissions.build(:usr_permission_id => permission, :value => '######')
      end
    end
    if @role.save
      @test = UsrRolePermission.new()
      redirect_to usr_roles_path
    else
      render 'new'
    end
  end

  def show
    @role = UsrRole.find(params[:id])
    @permissions = @role.usr_permissions
  end

  private
  def role_params
    params.require(:usr_role).permit(:role_name, :description)
  end

end
