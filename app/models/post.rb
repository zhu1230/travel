class Post < ActiveRecord::Base
	has_many :pictures
	has_many :links
	accepts_nested_attributes_for :pictures,:allow_destroy=>true,:reject_if=>proc {|object|object['image'].blank?}
	accepts_nested_attributes_for :links,:allow_destroy=>true,:reject_if=>proc {|object|object['image'].blank?}
	belongs_to :user
end
