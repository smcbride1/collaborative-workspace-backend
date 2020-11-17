class WorkspacesController < ApplicationController
    def create
        workspace = Workspace.create(workspace_params)
        render json: workspace
    end

    def index
        workspaces = Workspace.where(board_id: params[:board_id])
        render json: workspaces
    end

    def show
        workspace = Workspace.find(params[:id])
        render json: workspace
    end

    def update
        workspace = Workspace.find(params[:id])
        workspace.update(workspace_params)
        render json: workspace
    end

    def destroy
        workspace = Workspace.find(params[:id])
        render json: workspace
    end

    def workspaces_params
        params.require(:workspace).permit(:user_id)
    end
end
