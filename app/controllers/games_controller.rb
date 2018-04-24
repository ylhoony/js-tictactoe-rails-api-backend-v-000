class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def index
    games = Game.all
    render json: games, status: 201
  end

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show
    # game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def update
    # game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(state:[])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
