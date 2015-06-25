class Item < ActiveRecord::Base
  validates_presence_of :name
	belongs_to :category
	has_attached file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
