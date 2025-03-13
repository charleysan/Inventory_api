class OwnersController < ApplicationController
  def create
    user = User.create(name: params[:name], email: params[:email], password: params[:password], occupation: params[:occupation], level: params[:level], role: params[:role])
  render json: user
end
end
