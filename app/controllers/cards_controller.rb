class CardsController < ApplicationController
    def create
        card = Card.create(card_params)
        render json: card
    end

    def index
        cards = Card.where(list_id: params[:list_id])
        render json: cards
    end

    def show
        card = Card.find(params[:id])
        render json: card
    end

    def update
        card = Card.find(params[:id])
        card.update(card_params)
        render json: card
    end

    def destroy
        card = Card.find(params[:id])
        card.destroy
    end

    def cards_params
        params.require(:card).permit(:name, :list_id, :content)
    end
end
