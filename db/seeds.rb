puts "Cleaning up Database"
Rental.destroy_all
Vehicle.destroy_all
User.destroy_all

puts "Creating new Vehicles, User & Rentals whuuu"

# Users
sorina = User.create(
  first_name: "Sorina",
  last_name: "Tudor",
  email: "sorina@test.com",
  password: "123456"
)

nessim = User.create(
  first_name: "Nessim",
  last_name: "Khayyat",
  email: "nessim@test.com",
  password: "123456"
)


# Vehicles
100.times do
  vehicle = Vehicle.create!(
  model: Faker::Vehicle.make_and_model,
  transmission: Faker::Vehicle.transmission,
  power_source: Faker::Vehicle.fuel_type,
  color: Faker::Vehicle.color,
  doors: Faker::Vehicle.door_count,
  kilometer: Faker::Vehicle.kilometrage,
  year: Faker::Vehicle.year,
  license_plate: Faker::Vehicle.license_plate
  )
end

sorinas_car = Vehicle.create(
  model: "Renault",
  transmission: "manuel",
  power_source: "stick",
  user_id: sorina.id)


  # Rentals
Rental.create(
  start_time: "21/08/2023",
  end_time: "25/08/2023",
  vehicle: sorinas_car,
  user: nessim)

puts "Done!!"
