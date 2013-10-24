class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      flash[:success] ="Usuario #{@user.username} creado"
      redirect_to root_url

    else
      redirect_back_or_to root_url
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.permit( :username, :email, :password, :password_confirmation, :sexo, :fecha_nac )
    end
end
