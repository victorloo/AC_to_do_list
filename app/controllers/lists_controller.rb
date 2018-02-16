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
    if @list.save
      redirect_to root_path
    else
      render :action => :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      redirect_to list_path(@list)
    else
      render :action => :edit
    end
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