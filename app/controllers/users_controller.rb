class UsersController < ApplicationController
 
 #GET '/'
 def new
  @user = User.new
 end

 #POST '/'
 def create
  @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to your personal To-Do list app!"
      redirect_to @user
    else
      render 'new'
    end
 end

 def show
  @user = User.find(params[:id])
 end

 def hash_password(password)
  BCrypt::Password.create(password).to_s
 end

 def test_password(password, hash)
  BCrypt::Password.new(hash) == password
 end

 private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :phone)
  end

end
