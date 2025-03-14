class ItemsController < ApplicationController

  def index
    item = Item.all
    render json: item
  end

  def create
    item = Item.create!(name: params[:name], price: params[:price], owner_id: params[:owner_id], store_id: params[:store_id])
  render json: item
  end


  def update
    item = Item.find(params[:id])
    item.update!(
      name: params[:name] ||  item.name,
     price: params[:price] ||  item.price,
     owner_id: params[:owner_id] || item.owner_id,
     store_id: params[:store_id] || item.store_id
      )
    render json: item
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render json: item
  end
end
