class BoardsController < ApplicationController
    def create
        board = Board.create(board_params)
        render json: board
    end

    def index
        boards = Board.where(user_id: params[:user_id])
        render json: boards
    end

    def show
        board = Board.find(params[:id])
        render json: board
    end

    def update
        board = Board.find(params[:id])
        board.update(board_params)
        render json: board
    end

    def destroy
        board = Board.find(params[:id])
        board.destroy
    end

    def board_params
        params.require(:board).permit(:name, :user_id, :board_id)
    end
end
