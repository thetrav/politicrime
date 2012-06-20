downtown = Area.create(:name => "Downtown")
commercial = Area.create(:name => "The Commercial Center")
university = Area.create(:name => "The University District")
industrial = Area.create(:name => "The Industrial District")
outskirts = Area.create(:name => "On the Outskirts of the City")

downtown.locations << Location.create(:name => "Police Station")
downtown.locations << Location.create(:name => "Court House")
downtown.locations << Location.create(:name => "Fire Station")
downtown.locations << Location.create(:name => "Prison")
downtown.locations << Location.create(:name => "AM Radio Station")

outskirts.locations << Location.create(:name => "Nuclear Power Plant")
outskirts.locations << Location.create(:name => "Intelligence HQ")
outskirts.locations << Location.create(:name => "Corporate HQ")
outskirts.locations << Location.create(:name => "CEO Residence")
outskirts.locations << Location.create(:name => "Army Base")

commercial.locations << Location.create(:name => "Pawn Shop")
commercial.locations << Location.create(:name => "Costume Store")
commercial.locations << Location.create(:name => "Car Dealership")

industrial.locations << Location.create(:name => "Homeless Shelter")
industrial.locations << Location.create(:name => "Low grade Residence")
industrial.locations << Location.create(:name => "Crack house")
industrial.locations << Location.create(:name => "Abandoned Warehouse")
industrial.locations << Location.create(:name => "Polluting Industry")

