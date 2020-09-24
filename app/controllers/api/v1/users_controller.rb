class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def show
    # if logged_in?
      @user = set_user

    render json: @user
  end

  def create

    @user = User.new(user_params)
      if params[:user][:admin] === 'No' || is_admin === true

            if @user.save
              session[:user_id] = @user.id
              render json: @user, status: :created
            else
              resp = {
              error: @user.errors.full_messages.to_sentence
            }
            render json: resp
            end
      else
        render json: {
        error: "Admin exists -- only one permitted"
        }
    end
end








  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :apartment, :password, :admin)
    end

    def is_admin
    User.all.each do |user|
      if user.admin === "Yes"
        return true
      end
    end
    return false
  end




end
