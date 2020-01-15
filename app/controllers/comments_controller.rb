class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @behaviour = Behaviour.find(params[:behaviour_id])
    @comment = @behaviour.comments.create(comment_params)
    redirect_to behaviour_path(@behaviour)
  end

  def destroy
    @behaviour = Behaviour.find(params[:behaviour_id])
    @comment = @behaviour.comments.find(params[:id])
    @comment.destroy
    redirect_to behaviour_path(@behaviour)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
