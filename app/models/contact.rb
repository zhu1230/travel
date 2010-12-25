class Contact < ActiveRecord::Base
	validates_length_of :name, :within => 3..20, :on => :create, :message => "must be present"
	validates_length_of :email, :within => 3..20, :on => :create, :message => "must be present"
	validates_presence_of :message, :on => :create, :message => "can't be blank"
	validates_format_of :email,:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create,:message => "is invalid"
end
