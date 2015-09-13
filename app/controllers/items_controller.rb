class ItemsController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @items = @list.items
  end

  def show
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])

  end

  def new
  end

  def create
    @list = List.find(params[:list_id])
    @items = @list.items.new(items_params)
    if @list.save
      redirect_to lists_path
    end  
  end

  def edit
  end

  def update
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
      if @item.destroy
        redirect_to(:action => :index)
      end
  end

  

  def items_params
    params.require(:item).permit(:content)
  end
end
