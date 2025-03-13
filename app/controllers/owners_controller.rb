class OwnersController < ApplicationController
 
  def index
    owner = Owner.all
    render json: owner
  end

  def create
    owner = Owner.create(name: params[:name], email: params[:email], password: params[:password], occupation: params[:occupation], level: params[:level], role: params[:role])
  render json: owner
  end


  def update
    owner = Owner.find(params[:id])
    owner.update!(
      name: params[:name] || owner.name,
      email: params[:email] || owner.email,
      occupation: params[:occupation] || owner.occupation,
      level: params[:level] || owner.level
      )
    render json: owner
  end

  def destroy
    owner = Owner.find(params[:id])
    owner.destroy
    render json: owner
  end
end
