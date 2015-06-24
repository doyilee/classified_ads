class CategoriesController < ApplicationController

before_action :find_category, only: (:edit, :show, :update; :create)

  def index
		@categories = Categories.all
  end

  def new
		@category = Categories.new
  end

	def create
		if @category = Category.create(category_params)
			flash[:notice] = 'Category created successfully'
			redirect_to(categories_index_path)
		else
			flash[:error] = 'Category not created. Please try again.'
			render('new')
		end
	end

  def edit
  end

	def update
		if @category.update(category_params)
			flash[:notice] = 'Category successfully updated'
			redirect_to(categories_index_path)
		else
			flash[:error] = 'Please try again'
			render(text: 'Category not updated', status: 400)
		end
	end

  def show
  end


private

	def find_category
		@category = Category.find(params[:id])
	end

	def category_params
		params.require(:category).permit(:name)
	end

end
