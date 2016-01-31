class Api::UsersController < ApplicationController
  def index
    a = User.all.order("score DESC").limit(10)
    render json: { score_list: a }, status: :ok
  end

  def create
    user = User.new(name: params[:name], score: params[:score], kill_count: params[:kill_count])
    user.save
    render json: user, status: :created
  end
end
