class IdeasController < ApplicationController
  def index
  end

  def create
      user = User.find(session[:user_id])
      Idea.create(content:params[:content], user:user)
      redirect_to '/bright_ideas'
  end

  def show
      @idea = Idea.find(params[:id])
      @likes = Like.all
  end

  def destroy
      idea = Idea.find(params[:id]).destroy
      redirect_to '/bright_ideas'
  end
  private
  def idea_params
      params.require(:idea).permit(:content)
    end
end
