class AddPostIdToLinks < ActiveRecord::Migration
  def self.up
		change_table :links do |t|
		  t.integer :post_id
		end
  end

  def self.down
		change_table :links do |t|
		end
  end
end