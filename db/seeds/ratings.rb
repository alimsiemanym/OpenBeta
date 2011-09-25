# Default rating values.
# Currently using MPAA ratings (G, PG, etc)
module Ratings
  puts "Seeding default ratings."
  Rating.create!( :code=> 'G' )
  Rating.create!( :code=> 'PG' )
  Rating.create!( :code=> 'PG-13' )
  Rating.create!( :code=> 'R' )
  Rating.create!( :code=> 'NC-17' )
  Rating.create!( :code=> 'XXX' )
  puts "... complete."
end