puts "Cleaning up Database"
Rental.destroy_all
Vehicle.destroy_all
User.destroy_all

puts "Creating new Vehicles, User & Rentals whuuu"
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

sorinas_car = Vehicle.create(
  model: "Renault",
  transmission: "manuel",
  power_source: "stick",
  user_id: sorina.id)

Rental.create(
  start_time: "21/08/2023",
  end_time: "25/08/2023",
  vehicle: sorinas_car,
  user: nessim)

puts "Done!!"
