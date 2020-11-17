class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def index
        comments = Comment.where(card_id: params[:card_id])
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy
        comment = Comment.find(params[:id])
        render json: comment
    end

    def comments_params
        params.require(:comment).permit(:card_id, :content)
    end
end
