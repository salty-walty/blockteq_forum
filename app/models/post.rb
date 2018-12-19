class Post < ApplicationRecord
	 has_ancestry
	 
	 has_many :comments
	 belongs_to :user

	 paginates_per 3
end
