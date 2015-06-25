class Category < ActiveRecord::Base
	validates_presence_of :name
	has_many :items
	has_many :subcategories
end
