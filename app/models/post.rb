class Post < ActiveRecord::Base
	include Pacecar
	acts_as_archive
	acts_as_taggable
	acts_as_commentable
	has_many :pictures
	has_many :links
	accepts_nested_attributes_for :pictures,:allow_destroy=>true,:reject_if=>proc {|object|object['image'].blank?}
	accepts_nested_attributes_for :links,:allow_destroy=>true,:reject_if=>proc {|object|object['url'].blank?}
	belongs_to :user
	belongs_to :area
end
