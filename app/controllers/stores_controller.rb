class StoresController < ApplicationController


  def index
    store = Store.all
    render json: store
  end

  def create
    store = Store.create(name: params[:name], location: params[:location])
  render json: store
  end


  def update
    store = Store.find(params[:id])
    store.update!(
      name: params[:name] || store.name,
      location: params[:location] || store.location
      )
    render json: store
  end

  def destroy
    store = Store.find(params[:id])
    store.destroy
    render json: store
  end
end
