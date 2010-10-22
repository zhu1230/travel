class AddUrlToLinks < ActiveRecord::Migration
  def self.up
		change_table :links do |t|
		  t.string :url
		end
  end

  def self.down
		change_table :links do |t|
		end
  end
end