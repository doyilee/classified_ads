class CategoriesController < ApplicationController

before_action :find_category, only: (:edit, :show, :update; :create)

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

private

	def find_category
		@category = Category.find(params[:id])
	end

end
