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
  		redirect_to 

  end

  def edit
  end

	def update
	end

  def show
  end

  def destroy
  end

  
end
