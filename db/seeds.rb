# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Area.create([{:name => 'Asia'},{:name => 'Middle East'},{:name => 'Europe'},{:name => 'Africa'},{:name => 'North America'},{:name => 'Canada'},{:name => 'South America'}])
puts File.dirname(__FILE__)
ActiveRecord::Base.connection.execute "truncate table areas"
parent_id=0
File.new('/Users/apple/Desktop/c.txt').each do |l|
	if l.start_with? '-'
		Area.create(:name => l.strip,:parent_id => parent_id)
	elsif !l.blank?
		parent_id=Area.create(:name => l.strip).id
	else
		next
	end
end