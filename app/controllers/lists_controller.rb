class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    
  end

  def new
    @list = List.new  
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect_to root_path
  end

  def update
    
  end

  def destroy
    
  end

  private

  def list_params
    params.require(:list).permit(:name, :due_date, :note)
  end

end