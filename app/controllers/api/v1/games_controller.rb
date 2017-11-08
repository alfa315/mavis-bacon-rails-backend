class Api::V1::GamesController < ApplicationController

  def index
   @games = Game.all
   render json: @games
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: {error: @game.errors.full_message}, status: 422
    end
  end

  def update
    @game = Game.find(params[:id])

    @game.update(game_params)
    if @game.save
     render json: @game
    else
     render json: {errors: @game.errors.full_messages}, status: 422
    end
  end

  private
  def game_params
   params.require(:game).permit(:name)
  end

end
