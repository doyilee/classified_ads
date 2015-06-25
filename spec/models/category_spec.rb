require 'rails_helper'
require 'active_support/core_ext/module/delegation'

module Shoulda
  module Matchers
    module ActiveRecord

			RSpec.describe Category, type: :model do
			  
				describe Category do
				  it { should have_many(:items) }
				end

				describe Category do
					it { should validate_presence_of(:name)}
				end

			end
		end
	end
end