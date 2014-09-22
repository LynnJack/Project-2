# I've defined a class, Items.
class ItemsController < ApplicationController

  #  I've defined the index action and I've created an instance variable @items that corresponds to a request for all of them (the collection of each item).
  #  Index handles multiple items, therefore instance variable is plural (@items)
  def index
    @items = Item.all
  end
# Defining the show action and setting an instance variable corresponding to a request for a single item.
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params.require(:item).permit(:name, :status, :condition))
    @item.user = current_user  # setting the cu to the owner of item
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params.require(:item).permit(:name, :status, :condition))
      redirect_to items_path
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
end













