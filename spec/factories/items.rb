FactoryGirl.define do
  factory :item do      # from items table, however many you want
		name "test item"
		price 10.99    # item price is a decimal on the table
		category   # belongs to a category, sets up the association
  end
end
