class AddIndicesToGenders < ActiveRecord::Migration
  def self.up
    add_index :genders, [ :name, :abbreviation ], :unique => true
  end

  def self.down
    remove_index :genders, [:name, :abbreviation]
  end
end
