class CommentsController < ApplicationController

    def create
        @micropost = Micropost.find(params[:micropost_id])
        @comment = Comment.new(comment_params)
        @comment.micropost = @micropost
        @comment.user = current_user
        respond_to do |format|
            if @comment.save!
                format.html { redirect_to user_path(@micropost.user)}
                format.js
            else
                format.html { redirect_to user_path(@micropost.user) }
            end
        end
    end 

    private

        def comment_params
            params.permit(:micropost_id, :user_id, :content)
        end
end
