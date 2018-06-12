class SessionsController < ApplicationController
  def new
    # Renders the login form
  end

  def create # Once user submits login form it will...
    # Look for user with that email...
    @user = User.find_by_email(params[:email])
    # AND the password is correct...
    if @user && @user.authenticate(params[:password])
      # Add the user ID to the session...
      session[:user_id] = @user.id

      flash[:success] = "Welcome, #{@user.username}"
      # Redirect to the users profile/show page...
      # redirect_to user_path(@user)
      redirect_to user_path @user
    else
      #  Otherwise redirect back to the login form page to try again
      flash[:danger] = 'Incorrect email or password. Please try again'
      redirect_to new_session_path
    end
  end

  def destroy
    # Clear the user ID out of the cookie
    session[:user_id] = nil
    # Redirect to the homepage
    redirect_to root_path
  end
end
