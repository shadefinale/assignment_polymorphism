# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 6 bands

# 3 stadiums
# 24 restaraunts
srand(12345)
MULTIPLIER = 3
BAND_MULTIPLIER = 12
RESTAURANT_MULTIPLIER = 8


MULTIPLIER.times do |i|
  Stadium.create(name: "STADIUM #{i+1}",
                 sport: "SPORT #{i+1}",
                 capacity: rand(1.1000) * MULTIPLIER)
end

(MULTIPLIER * RESTAURANT_MULTIPLIER).times do |i|
  Restaurant.create(name: "Restaurant #{i+1}",
                 fare: "CUISINE STYLE #) #{i+1}",
                 capacity: rand(1.1000) * MULTIPLIER)
end

def select_location
  total_venues = MULTIPLIER + (RESTAURANT_MULTIPLIER * MULTIPLIER)
  if rand(total_venues) + 1 <= MULTIPLIER
    return Stadium.all.sample
  else
    return Restaurant.all.sample
  end
end

(BAND_MULTIPLIER * MULTIPLIER).times do |i|
  Band.create(name: "BAND_NAME#{i+1}",
              genre: "GENRE #{i%MULTIPLIER}",
              location: select_location)
end
