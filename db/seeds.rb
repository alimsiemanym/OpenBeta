# Load external seeds
puts "Loading default seed data."
require File.expand_path('../seeds/genres', __FILE__) 
require File.expand_path('../seeds/warnings', __FILE__) 
require File.expand_path('../seeds/genders', __FILE__) 
require File.expand_path('../seeds/ratings', __FILE__) 
require File.expand_path('../seeds/universes', __FILE__) 
puts "Default seed data load complete."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
