# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
rows = CSV.read("initial_data.csv", headers: true)

rows.each do |row|
  next if [row["Name"], row["Affiliations"], row["Species"], row["Gender"]].include?(nil)

  names = row["Name"].strip.titleize.split(" ")
  next if names.length() < 2

  last_name = names[names.length()-1].strip
  first_name = names.slice(0, names.length()-1).join(" ")

  gender = row["Gender"].downcase!
  if ["male", "man", "men", "m"].include? gender
    gender = :male
  elsif ["female", "woman", "women", "f"].include? gender
    gender = :female
  else
    gender = :others
  end
  
  person = Person.create_or_find_by(
    first_name: first_name,
    last_name: last_name,
    species: row["Species"],
    gender: gender,
    weapon: row["Weapon"],
    vehicle: row["Vehicle"]
  )

  if row["Location"]
    locations = row["Location"].strip.titleize.split(",")
    locations.each do |l|
      location = Location.create_or_find_by(
        name: l.strip
      )
      PersonLocation.create(
        location_id: location.id,
        person_id: person.id
      )
    end
  end
  
  affiliations = row["Affiliations"].strip.titleize.split(",")
  affiliations.each do |a|
    affiliation = Affiliation.create_or_find_by(
      name: a.strip
    )
    PersonAffiliation.create(
      affiliation_id: affiliation.id,
      person_id: person.id
    )
  end

end
