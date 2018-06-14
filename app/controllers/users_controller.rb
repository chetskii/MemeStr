class UsersController < ApplicationController

  before_action :authorize, only: [:show, :edit, :update, :destroy]

  def index 
    @users = User.last(5) # Returns last 5 users
    @featured = Meme.all.sample(3) # Returns 3 random memes from Meme table
    @new = Meme.last(3) # Returns the last 3 memes from Meme table
  end

  def show
    @user = User.find(params[:id])
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
  end

  def edit
  end

  def update
  end

  def destroy # Destroys current user and deletes cookie then sends back to signup page
    current_user.destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end

  private # Makes sure only a name, email, password, and password_confirmation can be submitted in the form, for security.
  def user_params
    params.require(:user).permit(:username,:email,:password,:password_confirmation)
    # Password confirmation is a property Bcrypt uses to confirm the user that's signing up entered their password the way they intended.
  end
end
