  class ItemController < ApplicationController
  
  def index
    @items = Items.where(:user_id => @auth) # only shows user questions
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    i = Item.create(params[:item])
    @auth.items << i

    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to items_path
  end

end

