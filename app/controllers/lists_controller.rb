class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new  
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect_to root_path
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update_attributes(list_params)

    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :due_date, :note)
  end

end