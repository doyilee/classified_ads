require 'rails_helper'

RSpec.describe Category, type: :model do
  
	describe Person do
	  it { should have_many(:items) }
	end

end
