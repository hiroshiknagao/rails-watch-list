class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.all
    @list = @lists.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

end
