class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    include ::ActionController::Helpers

    helper_method :current_player
    helper_method :logged_in?


    def current_player
      User.find_by(id: session[:user_id])
    end


     def logged_in?
       !!current_player
     end




end
