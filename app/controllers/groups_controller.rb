class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
  end

  def show
    @group = Group.find params[:id]
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create group_params
    current_user.groups << @group

    redirect_to groups_path
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
