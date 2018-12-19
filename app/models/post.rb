class Post < ApplicationRecord
	 has_ancestry
	 
	 belongs_to :category
	 has_many :comments
	 belongs_to :user


	 paginates_per 3
end
