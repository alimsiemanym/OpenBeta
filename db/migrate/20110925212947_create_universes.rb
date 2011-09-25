class CreateUniverses < ActiveRecord::Migration
  def self.up
    create_table :universes do |t|
      t.string :name, :null => false
      t.string :abbreviation, :null => false
      t.text :description

      t.timestamps
    end

    add_index :universes, [:name, :abbreviation], :unique => true
  end

  def self.down
    remove_index :universes, [:name, :abbreviation]
    drop_table :universes
  end
end
