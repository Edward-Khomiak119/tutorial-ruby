class CommetsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "1q2" #коментарии могут оставлять только зарегестрированные пользователи


  def create
    @post = Post.find(params[:post_id])
    @commet = @post.commets.create(commet_params)
    redirect_to post_path(@post)
  end

  private def commet_params
    params.require(:commet).permit(:username, :body)
  end
end
