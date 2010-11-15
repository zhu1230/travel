class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
		t.string :name
		t.integer :parent_id
		t.integer :lft
		t.integer :rgt
		t.integer :depth
      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
