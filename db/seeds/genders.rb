# Default gender values.
# Note: by default, the genders 'Unknown', 'Male', and 'Female' are required.
# Additional ones can be specified as well.
module Genders
  puts "Seeding default genders."
  Gender.create!( :id=>1, :name => 'Unknown', :abbreviation => '?')
  Gender.create!( :name => 'Male', :abbreviation => 'M')
  Gender.create!( :name => 'Female', :abbreviation => 'F')
  puts "... complete."
end