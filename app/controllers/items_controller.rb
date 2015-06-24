class ItemsController < ApplicationController

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
  	@item = Item.find(params[:id])
  end

	def update
		@item = Item.find(params[:id])
		if @item.update 
			flash[:notice] = "Successfully updated product." 
			redirect_to items_path
		else
			flash[:error] = "Failed to update product." 
			render :edit
		end
	end

  def show
  	@item = Item.find(params[:id])
  end

  def destroy
  end

  
end
