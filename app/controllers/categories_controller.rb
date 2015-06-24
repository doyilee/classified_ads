class CategoriesController < ApplicationController

before_action :find_category, only:[:edit, :show, :update, :destroy]

  def index
		@categories = Category.all
  end

  def new
		@category = Category.new
  end

	def create
		if @category = Category.create(category_params).save
			flash[:notice] = 'Category created successfully'
			redirect_to(categories_path)
		else
			flash[:error] = 'Category not created. Please try again.'
			render :new
		end
	end

  def edit
  end

	def update
		if @category.update(category_params)
			flash[:notice] = 'Category successfully updated'
      redirect_to(categories_path)
		else
			flash[:error] = 'Category not updated. Please try again.'
      render :edit
		end
	end

  def show
  end

	def destroy
		if @category.destroy
		  flash[:notice] = 'Category successfully destroyed'
		end
    redirect_to(categories_path)
	end


private

	def find_category
		@category = Category.find(params[:id])
	end

	def category_params
		params.require(:category).permit(:name)
	end

end
