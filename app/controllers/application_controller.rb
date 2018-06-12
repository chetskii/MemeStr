class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    # Returns the value of an instance variable called current_user
    # If @current_user has no value, it assigns it one by finding a user by the ID stored in the session (the cookie provided in the request)
    #  Only does this if the requests cookie contains a users ID to begin with. Otherwise it will return nil...
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # Takes the value we get from the current_use and converts it into a boolean. Are they logged in? True or false.
    def logged_in?
        !!current_user
    end

    def authorize
        redirect_to new_session_path
    end
end
