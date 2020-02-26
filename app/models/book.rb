class Book < ApplicationRecord
	validates :ja, presence: true
	validates :en, presence: true
end
