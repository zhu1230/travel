class Post < ActiveRecord::Base
	has_many :pictures
	has_many :links
	belongs_to :user
end
