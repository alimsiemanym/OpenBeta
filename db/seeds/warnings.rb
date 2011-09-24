# Default warning values.
module Warnings
  puts "Seeding default warnings."
  Warning.create!( :name => "Alternate universe (AU)", :description => "Takes place in a significantly different universe, reality, or timeline than the canon universe." )
  Warning.create!( :name => "Character death", :description => "A major or otherwise important character dies." )
  Warning.create!( :name => "Rape", :description => "Contains rape or other non-consensual sexual contact." )
  Warning.create!( :name => "Slash", :description => "Homosexual (gay or lesbian) relationships." )
  Warning.create!( :name => "Trans", :description => "Contains transgendered or transsexual characters, relationships, or other content." )
  Warning.create!( :name => "Yaoi slash", :description => "Homosexual relationships, specifically male-on-male.")
  Warning.create!( :name => "Yuri slash", :description => "Homosexual relationships, specifically lesbianism (female-on-female.)")
  puts "... complete."
end