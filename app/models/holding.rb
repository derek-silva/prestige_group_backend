class Holding < ApplicationRecord
	belongs_to :general_partner
	has_many :stocks
end
