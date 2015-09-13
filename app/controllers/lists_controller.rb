class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list  = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    end
  end

  def edit
    
  end

  def update
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to lists_path
    end
  end

  def list_params
    params.require(:list).permit(:title, :description)
  end
end
