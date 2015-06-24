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
	end

  def show
  end

  def destroy
  end

  
end
