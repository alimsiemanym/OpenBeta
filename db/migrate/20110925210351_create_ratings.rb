class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.string :code, :null => false
      t.timestamps
    end
    add_index :ratings, :code, :unique => true
  end

  def self.down
    remove_index :ratings, :code
    drop_table :ratings
  end
end
