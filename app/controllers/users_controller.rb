class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    @user.comments.each do |comment|
      @post = Post.find(comment.post_id)
    end

  end

  def new 
    @user = User.new 
  end 

  def create 
    @user = User.new(user_params)

    if @user.valid? 
      @user.save 
      redirect_to user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
