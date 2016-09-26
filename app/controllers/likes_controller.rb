class LikesController < ApplicationController
  def create
      idea = Idea.find(params[:idea_id])
      like = Like.new(user: current_user, idea:idea)
      like.save
      redirect_to '/bright_ideas'
  end

  def destroy
      user = User.find(session[:user_id])
      idea = Idea.find(params[:id]).id
      like = Like.find_by(user:user, idea:idea )
      if like.destroy
          redirect_to '/bright_ideas'
      end
  end
end
