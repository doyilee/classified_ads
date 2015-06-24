class CategoriesController < ApplicationController

  def index
		@categories = Categories.all
  end

  def new
		@category = Categories.new
  end

  def edit
  end

  def show
  end

end
