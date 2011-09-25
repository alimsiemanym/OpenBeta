# Default universes.
module Universes
  puts "Seeding default universes."
  Universe.create!( :name => 'Original', :abbreviation => 'N/A', :description => 'An original work of fiction, not part of any larger universe.')
  Universe.create!( :name => 'Harry Potter', :abbreviation => 'HP', :description => 'The adventures of the wizard Harry Potter as he enters the Wizarding World of Great Britain and struggles against the tyranny of the evil Lord Voldemort.')
  Universe.create!( :name => 'Star Trek (2009)', :abbreviation => 'ST2009', :description => 'Also called Star Trek: Reboot')
  puts "... complete."
end