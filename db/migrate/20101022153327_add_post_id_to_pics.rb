class AddPostIdToPics < ActiveRecord::Migration
  def self.up
		change_table :pictures do |t|
		  t.integer :post_id
		end
  end

  def self.down
		change_table :pictures do |t|
		end
  end
end