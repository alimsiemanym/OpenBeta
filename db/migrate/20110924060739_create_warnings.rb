class CreateWarnings < ActiveRecord::Migration
  def self.up
    create_table :warnings do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :warnings
  end
end
