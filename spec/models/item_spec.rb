require 'rails_helper'
require 'active_support/core_ext/module/delegation'

module Shoulda
  module Matchers
    module ActiveRecord

			RSpec.describe Item, type: :model do
			  
				describe Item do
					it { should belong_to(:category)}
				end

			end
		end
	end
end
