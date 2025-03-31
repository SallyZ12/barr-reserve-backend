class Api::V1::UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]

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

      if params[:user][:admin] === 'No' || is_admin === false

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



def update
  @user =  set_user
# binding.pry
    if @user.admin === "Yes" && params[:user][:admin] === "Yes"
       @user.update(user_params)
          @user.save
            render json: @user

       elsif @user.admin === "No" && params[:user][:admin] === "No"
         @user.update(user_params)
            @user.save
              render json: @user

       elsif @user.admin === "Yes" && params[:user][:admin] === "No"
            @user.update(user_params)
              @user.save
                render json: @user

       elsif @user.admin === "No" && params[:user][:admin] === "Yes" && is_admin === false
          @user.update(user_params)

         if @user.save
            render json: @user
            else
           resp = {
            error: @user.errors.full_messages.to_sentence
            }
            render json: resp
         end

     else render json: {
       error: "Admin exists -- only one permitted"
     }

   end
end


      def destroy
          @user = set_user

          if @user.reservations.present?
            render json: {
              error: "Can not delete an Owner with Reservations"
            }

        else
          @user.destroy
          render json: @user
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
