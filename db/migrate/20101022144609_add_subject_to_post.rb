class AddSubjectToPost < ActiveRecord::Migration
  def self.up
		change_table :posts do |t|
		  t.string :subject
		end
  end

  def self.down
		change_table :posts do |t|
		end
  end
end