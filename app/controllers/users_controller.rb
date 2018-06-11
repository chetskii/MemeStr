class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    # Instantiates a User object to render a form
    @user = User.new
  end

  def create
    # Takes all submitted form info and uses it to create a user account - Then it redirects to new_session_path as defined in.... (CONT)
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private # Makes sure only a name, email, password, and password_confirmation can be submitted in the form for security.
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
    # Password confirmation is a property Bcrypt uses to confirm the user that's signing up entered their password the way they intended.
  end
end