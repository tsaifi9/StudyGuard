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

  def join
    @group = Group.find params[:id]
    current_user.groups << @group

    redirect_to @group
  end

  def invite
    @group = Group.find params[:id]
    @email = params[:email]
    UserMailer.invite_user(@email, @group).deliver
    redirect_to @group
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
