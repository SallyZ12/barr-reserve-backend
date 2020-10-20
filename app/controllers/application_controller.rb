class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    include ::ActionController::Helpers

    helper_method :current_owner
    helper_method :logged_in?


    def current_owner
      User.find_by(id: session[:user_id])
    end


     def logged_in?
       !!current_owner
     end




end
