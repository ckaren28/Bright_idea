class UsersController < ApplicationController
  def index
    if @user =session[:user_id]
      @user = User.find(session[:user_id])
      @ideas = Idea.all.order("likes_count DESC")
    else
      redirect_to '/login'
    end
  end

  def create
      @user = User.new(name:params[:name], alias:params[:alias], email:params[:email], password:params[:password])
        if @user.save
            session[:user_id] = @user.id
            redirect_to "/bright_ideas"
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to :back
        end
  end

  def show
      @user = User.find(params[:id])
  end

  private
   def user_params
     params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
   end
end
