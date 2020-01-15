class CommentsController < ApplicationController
  def create
    @behaviour = Behaviour.find(params[:behaviour_id])
    @comment = @behaviour.comments.create(comment_params)
    redirect_to behaviour_path(@behaviour)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end 
