# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Area.create([{:name => 'Asia'},{:name => 'Middle East'},{:name => 'Europe'},{:name => 'Africa'},{:name => 'North America'},{:name => 'Canada'},{:name => 'South America'}])
# puts File.dirname(__FILE__)
ActiveRecord::Base.connection.execute "truncate table areas"
# parent_id=0
# p Rails.root.to_s+'/db/c.txt'
# File.new(Rails.root.to_s+'/db/c.txt').each do |l|
# 	if l.start_with? '-'
# 		Area.create(:name => l.strip,:parent_id => parent_id)
# 	elsif !l.blank?
# 		parent_id=Area.create(:name => l.strip).id
# 	else
# 		next
# 	end
# end
areas = Area.create([
  { :created_at => "2011-01-31 11:09:15 UTC", :depth => 0, :lft => 1, :name => "Asia", :parent_id => nil, :rgt => 24, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 2, :name => "-Shanghai", :parent_id => 1, :rgt => 3, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 4, :name => "-Beijing", :parent_id => 1, :rgt => 5, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 6, :name => "-Guangzhou", :parent_id => 1, :rgt => 7, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 8, :name => "-Vietnam", :parent_id => 1, :rgt => 9, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 10, :name => "-Japan", :parent_id => 1, :rgt => 11, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 12, :name => "-South Korea", :parent_id => 1, :rgt => 13, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 14, :name => "-North Korea", :parent_id => 1, :rgt => 15, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 16, :name => "-Hong KOng", :parent_id => 1, :rgt => 17, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 18, :name => "-Philippines", :parent_id => 1, :rgt => 19, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 20, :name => "-Thailand", :parent_id => 1, :rgt => 21, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 22, :name => "-Singapore", :parent_id => 1, :rgt => 23, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 25, :name => "Middle East", :parent_id => nil, :rgt => 42, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 26, :name => "-Pakistan", :parent_id => 13, :rgt => 27, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 28, :name => "-Afghanistan", :parent_id => 13, :rgt => 29, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 30, :name => "-Iraq", :parent_id => 13, :rgt => 31, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 32, :name => "-Jordan", :parent_id => 13, :rgt => 33, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 34, :name => "-Turkey", :parent_id => 13, :rgt => 35, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 36, :name => "-Israel", :parent_id => 13, :rgt => 37, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 38, :name => "-Kuwait", :parent_id => 13, :rgt => 39, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 40, :name => "-Saudi Arabia", :parent_id => 13, :rgt => 41, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 43, :name => "Europe", :parent_id => nil, :rgt => 70, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 44, :name => "-Finland", :parent_id => 22, :rgt => 45, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 46, :name => "-Switzerland", :parent_id => 22, :rgt => 47, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 48, :name => "-Norway", :parent_id => 22, :rgt => 49, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 50, :name => "-England", :parent_id => 22, :rgt => 51, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 52, :name => "-France", :parent_id => 22, :rgt => 53, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 54, :name => "-Germany", :parent_id => 22, :rgt => 55, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 56, :name => "-Poland", :parent_id => 22, :rgt => 57, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 58, :name => "-Spain", :parent_id => 22, :rgt => 59, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 60, :name => "-Italy", :parent_id => 22, :rgt => 61, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 62, :name => "-Greece", :parent_id => 22, :rgt => 63, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 64, :name => "-Romania", :parent_id => 22, :rgt => 65, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 66, :name => "-Ukraine", :parent_id => 22, :rgt => 67, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 68, :name => "-Austria", :parent_id => 22, :rgt => 69, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 71, :name => "Africa", :parent_id => nil, :rgt => 82, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 72, :name => "-Kenya", :parent_id => 36, :rgt => 73, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 74, :name => "-South Africa", :parent_id => 36, :rgt => 75, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 76, :name => "-Congo", :parent_id => 36, :rgt => 77, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 78, :name => "-Liberia", :parent_id => 36, :rgt => 79, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 80, :name => "-Egypt", :parent_id => 36, :rgt => 81, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 83, :name => "North America", :parent_id => nil, :rgt => 96, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 84, :name => "-New York", :parent_id => 42, :rgt => 85, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 86, :name => "-San Francisco", :parent_id => 42, :rgt => 87, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 88, :name => "-Philadelphia", :parent_id => 42, :rgt => 89, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 90, :name => "-Chicago", :parent_id => 42, :rgt => 91, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 92, :name => "-Seattle", :parent_id => 42, :rgt => 93, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 94, :name => "-Pittsburg", :parent_id => 42, :rgt => 95, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 97, :name => "Canada", :parent_id => nil, :rgt => 102, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 98, :name => "-Toronto", :parent_id => 49, :rgt => 99, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 100, :name => "-Montreal", :parent_id => 49, :rgt => 101, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 0, :lft => 103, :name => "South America", :parent_id => nil, :rgt => 122, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 104, :name => "-Bahamas", :parent_id => 52, :rgt => 105, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 106, :name => "-Brazil", :parent_id => 52, :rgt => 107, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 108, :name => "-Mexico", :parent_id => 52, :rgt => 109, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 110, :name => "-Argentina", :parent_id => 52, :rgt => 111, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 112, :name => "-Colombia", :parent_id => 52, :rgt => 113, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 114, :name => "-Paraguay", :parent_id => 52, :rgt => 115, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 116, :name => "-Venezuela", :parent_id => 52, :rgt => 117, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 118, :name => "-Uruguay", :parent_id => 52, :rgt => 119, :updated_at => "2011-01-31 11:09:32 UTC" },
  { :created_at => "2011-01-31 11:09:16 UTC", :depth => 1, :lft => 120, :name => "-Chile", :parent_id => 52, :rgt => 121, :updated_at => "2011-01-31 11:09:32 UTC" }
])

