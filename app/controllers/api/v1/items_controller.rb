class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    render json: 'item was deleted', status: 204
  end

  def create
    @item = Item.new(name: params[:name], description: params[:description], image_url: params[:image_url])
    if @item.save
      render json: @item
    end
  end
end
