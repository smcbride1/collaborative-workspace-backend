class ListsController < ApplicationController
    def create
        list = List.create(list_params)
        render json: list
    end

    def index
        lists = List.where(board_id: params[:board_id])
        render json: lists
    end

    def show
        list = List.find(params[:id])
        render json: list
    end

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
    end

    def lists_params
        params.require(:list).permit(:board_id, :name)
    end
end
