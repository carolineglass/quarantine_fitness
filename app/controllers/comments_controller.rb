class CommentsController < ApplicationController
    def create
        @logged_in_user.comments << Comment.create(comment_params)
        redirect_to routine_path(comment_params[:routine_id])
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to routine_path(@comment.routine)
    end

    private 

    def comment_params
        params.require(:comment).permit(:comment, :routine_id)
    end 
end
