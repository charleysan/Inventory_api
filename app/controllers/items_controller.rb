class ItemsController < ApplicationController

  def index
    item = Item.all
    render json: item
  end

  def create
    item = Item.create(name: params[:name], price: params[ price])
  render json: item
  end


  def update
    item = Item.find(params[:id])
    item.update!(
      name: params[:name] ||  item.name,
     price: params[:price] ||  item.price
      )
    render json: item
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render json: item
  end
end
