class ChangePosts < ActiveRecord::Migration
  def self.up
		change_table :posts do |t|
		  t.rename :country_id, :area_id
		end
  end

  def self.down
		change_table :posts do |t|
		end
  end
end