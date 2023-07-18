class ListsController < ApplicationController

  def create
    @list = List.create(list_params)  
    if @list.save
      render json: @list, status: 200
    end
  end

  def index
    @list = List.all
    render json: @list
  end

  def destroy
    @list = List.find params[:id]
    if @list.destroy
      render json: {message: "task deleted successfully"}, status: 200
    end
  end

  def update
    @list = List.find params[:id]
    if @list.update(list_params)
      render json: @list
    end
  end

  def delete_all
    @list = List.all
    if @list.destroy_all
      render json: {message: "All Task deleted successfully"}, status: 200
    end
  end
    
  private
    
  def list_params
    params.require(:list).permit(:title, :priority, :completed, :startDate, :endDate)
  end
    
end
