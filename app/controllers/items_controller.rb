class ItemsController < ApplicationController
	before_action :find_item, only: [:edit, :update, :show, :destroy]

  def index
  	@items = Item.all 

  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  		redirect_to items_path
  	else
  		flash[:error] = "Failed to add new product." 
  		render :new
  	end
  end

  def edit
  end

	def update
		if @item.update(item_params)
			flash[:notice] = "Successfully updated product." 
			redirect_to items_path
		else
			flash[:error] = "Failed to update product." 
			render :edit
		end
	end

  def show
  end

  def destroy
  	if @item.destroy
			flash[:notice] = "Successfully deleted product." 
		end
    redirect_to items_path
  end

  private
  def item_params
  	params.require(:item).permit(:name, :price, :description)
  end

  def find_item
  	@item = Item.find(params[:id])
  end
end
