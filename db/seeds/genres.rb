# Default genre values. This list is based on the wikipedia article found here:
# http://en.wikipedia.org/w/index.php?title=List_of_genres&oldid=451881486
module Genres
  puts "Seeding default genres."
  Genre.create!( :name => 'Action' )
  Genre.create!( :name => 'Adventure' )
  Genre.create!( :name => 'Angst' )
  Genre.create!( :name => 'Comedy' )
  Genre.create!( :name => 'Crime' )
  Genre.create!( :name => 'Cyberpunk' )
  Genre.create!( :name => 'Detective story' )
  Genre.create!( :name => 'Drama' )
  Genre.create!( :name => 'Erotic' )
  Genre.create!( :name => 'Faction' )
  Genre.create!( :name => 'Family' )
  Genre.create!( :name => 'Fantasy' )
  Genre.create!( :name => 'Friendship' )
  Genre.create!( :name => 'General' )
  Genre.create!( :name => 'Historical fiction' )
  Genre.create!( :name => 'Horror' )
  Genre.create!( :name => 'Hurt/Comfort' )
  Genre.create!( :name => 'Military' )
  Genre.create!( :name => 'Mystery' )
  Genre.create!( :name => 'Parody' )
  Genre.create!( :name => 'Philosophical' )
  Genre.create!( :name => 'Political' )
  Genre.create!( :name => 'Romance' )
  Genre.create!( :name => 'Saga' )
  Genre.create!( :name => 'Satire' )
  Genre.create!( :name => 'Science fiction' )
  Genre.create!( :name => 'Speculative' )
  Genre.create!( :name => 'Spiritual' )
  Genre.create!( :name => 'Spy fiction' )
  Genre.create!( :name => 'Steampunk' )
  Genre.create!( :name => 'Supernatural' )
  Genre.create!( :name => 'Suspense' )
  Genre.create!( :name => 'Thriller' )
  Genre.create!( :name => 'Tragedy' )
  Genre.create!( :name => 'Urban' )
  Genre.create!( :name => 'Western' )
  puts "... complete."
end