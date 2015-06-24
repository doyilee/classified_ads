class Item < ActiveRecord::Base
	belongs_to :category

	enum category_id: [:Vehicle, :Housing, :Jobs, :General]

end
