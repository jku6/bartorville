class ItemsController < ApplicationController
  
  def index
    @items = Item.where(:user_id => @auth) # only shows user questions
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  

  def create
    @item = Item.new(params[:item])
    user = User.find(@auth.id)
    user.items << @item

    if @item.save 
      redirect_to dashboard_index_path(@user)
    else
      render :new
    end
  end
  


  def edit
    @item = Item.find(params[:id])
  end

  def update
        @item = Item.find(params[:id])
        if @item.update_attributes(params[:item])
            redirect_to @item
        else
            render :edit    
        end
    end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to items_path
  end

end

