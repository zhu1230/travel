class ChangeTablePics < ActiveRecord::Migration
  def self.up
		change_table :pictures do |t|
		  t.rename :discription, :description
		end
  end

  def self.down
		change_table :pictures do |t|
		end
  end
end