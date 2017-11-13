class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    puts params
    @game = Game.new(params)
    if @game.save
      render json: @game
    else
      render json: {error: @game.errors.full_messages}, status: 422
    end
  end

  private

  # def game_params
  #   params.permit(:user_id, :wpm, :game_won)
  # end

end
