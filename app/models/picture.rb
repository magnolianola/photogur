class Picture < ActiveRecord::Base
	has_many :comments

	scope :alphabetical, -> { order("title DESC") }
end
