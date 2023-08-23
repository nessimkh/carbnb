require "open-uri"

puts "Cleaning up Database"
Rental.destroy_all
Vehicle.destroy_all
User.destroy_all

puts "Creating new Vehicles, User & Rentals whuuu"

puts "Creating new User"
# Users
file = URI.open("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange-thumbnail.png")
sorina = User.new(
  first_name: "Sorina",
  last_name: "Tudor",
  email: "sorina@test.com",
  password: "123456"
)
sorina.avatar.attach(io: file, filename: "sorina.png", content_type: "image/png")
sorina.save

file = URI.open("https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png")
nessim = User.new(
  first_name: "Nessim",
  last_name: "Khayyat",
  email: "nessim@test.com",
  password: "123456"
)
nessim.avatar.attach(io: file, filename: "nessim.png", content_type: "image/png")
nessim.save

file = URI.open("https://w7.pngwing.com/pngs/732/397/png-transparent-computer-icons-avatar-woman-user-avatar-child-face-heroes-thumbnail.png")
zuzanna = User.new(
  first_name: "Zuzanna",
  last_name: "Dobak",
  email: "zuza@test.com",
  password: "123456"
)
zuzanna.avatar.attach(io: file, filename: "zuzanna.png", content_type: "image/png")
zuzanna.save

puts "#{User.count } users in database"

# Vehicles
# 100.times do
#   vehicle = Vehicle.create!(
#   model: Faker::Vehicle.make_and_model,
#   transmission: Faker::Vehicle.transmission,
#   power_source: Faker::Vehicle.fuel_type,
#   color: Faker::Vehicle.color,
#   doors: Faker::Vehicle.door_count,
#   kilometer: Faker::Vehicle.kilometrage,
#   year: Faker::Vehicle.year,
#   license_plate: Faker::Vehicle.license_plate
# )
# end

# sorinas_car = Vehicle.create(
#   model: "Renault",
#   transmission: "manuel",
#   power_source: "stick",
#   user_id: sorina.id)

  # Rentals
# Rental.create(
#   start_time: "21/08/2023",
#   end_time: "25/08/2023",
#   vehicle: sorinas_car,
#   user: nessim)

puts "Done!!"

# Creating our photos DB

# Creating our Car DB
puts "Creating Vehicles 🚘"
file = URI.open("https://w7.pngwing.com/pngs/1022/160/png-transparent-car-2015-audi-a7-audi-rs7-audi-sportback-concept-audi-sedan-car-performance-car-thumbnail.png")
vehicle = Vehicle.new(model: "Audi A7", transmission: "Manual", power_source: "Electric", color: "Silver Grey", doors: "5", kilometer: "87000", year: "2016", license_plate: "M-SM 5687")
vehicle.photo.attach(io: file, filename: "audia7.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Audi A7", transmission: "Manual", power_source: "Electric", color: "Black", doors: "5", kilometer: "87000", year: "2016", license plate: "M-SM 5687", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/968/490/png-transparent-2017-buick-verano-2016-buick-verano-car-buick-regal-car-compact-car-sedan-car-thumbnail.png")
vehicle = Vehicle.new(model: "Buick Verano", transmission: "Automatic", power_source: "Diesel", color: "Red", doors: "5", kilometer: "99000", year: "2013", license_plate: "B-SM 1287")
vehicle.photo.attach(io: file, filename: "buickverano.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Buick Verano", transmission: "Automatic", power_source: "Diesel", color: "Red", doors: "5", kilometer: "99000", year: "2013", license plate: "B-SM 1287", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/628/780/png-transparent-2015-ford-focus-car-2018-ford-focus-2014-ford-focus-ford-compact-car-sedan-car-thumbnail.png")
vehicle = Vehicle.new(model: "Ford Focus", transmission: "Automatic", power_source: "Ethanol", color: "Blue", doors: "3", kilometer: "1000", year: "2023", license_plate: "M-LA 1385")
vehicle.photo.attach(io: file, filename: "fordfocus.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Ford Focus", transmission: "Automatic", power_source: "Ethanol", color: "Blue", doors: "3", kilometer: "1000", year: "2023", license_plate: "M-LA 1385", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/787/519/png-transparent-2018-lincoln-navigator-lincoln-mkx-lincoln-mkz-lincoln-continental-lincoln-compact-car-car-vehicle-thumbnail.png")
vehicle = Vehicle.new(model: "Lincoln MKZ", transmission: "Automatic", power_source: "Ethanol", color: "Dark grey", doors: "3", kilometer: "1000", year: "2023", license_plate: "M-LA 1385")
vehicle.photo.attach(io: file, filename: "lincolnmkz.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Lincoln MKZ", transmission: "Automatic", power_source: "Hybrid", color: "Silver", doors: "5", kilometer: "34000", year: "2020", license plate: "R-NK 1234", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/137/976/png-transparent-2017-chevrolet-malibu-car-2018-chevrolet-malibu-hybrid-general-motors-chevrolet-compact-car-sedan-car-thumbnail.png")
vehicle = Vehicle.new(model: "Chevy Malibu", transmission: "Automatic", power_source: "Electric", color: "Black", doors: "5", kilometer: "2500", year: "2023", license_plate: "K-AR 4299")
vehicle.photo.attach(io: file, filename: "chevymalibu.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Chevy Malibu", transmission: "Automatic", power_source: "Electric", color: "Silver", doors: "5", kilometer: "2500", year: "2023", license plate: "K-AR 4299", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/121/92/png-transparent-nissan-kicks-car-nissan-juke-crossover-nuevo-compact-car-driving-car-thumbnail.png")
vehicle = Vehicle.new(model: "Nissan Juke", transmission: "Automatic", power_source: "Diesel", color: "Orange", doors: "3", kilometer: "1990", year: "2022", license_plate: "G-LP 2683")
vehicle.photo.attach(io: file, filename: "nissanjuke.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Nissan Juke", transmission: "Automatic", power_source: "Diesel", color: "Green", doors: "3", kilometer: "1990", year: "2022", license plate: "G-LP 2683", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/101/456/png-transparent-bmw-m3-bmw-3-series-bmw-5-series-car-bmw-m3-compact-car-sedan-performance-car-thumbnail.png")
vehicle = Vehicle.new(model: "BMW M3", transmission: "CVT", power_source: "Gasoline Hybrid", color: "Yellow", doors: "5", kilometer: "44500", year: "2017", license_plate: "O-HV 1285")
vehicle.photo.attach(io: file, filename: "bmwm3.png", content_type: "image/png")
vehicle.save
# Car.create(model: "BMW M3", transmission: "CVT", power_source: "Gasoline Hybrid", color: "Blue", doors: "5", kilometer: "44500", year: "2017", license plate: "O-HV 1285", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/217/483/png-transparent-black-dodge-ram-1500-crew-cab-truck-2015-ram-1500-ram-pickup-ram-trucks-dodge-car-front-view-of-dodge-ram-1500-car-truck-pickup-truck-vehicle-thumbnail.png")
vehicle = Vehicle.new(model: "Dodge Ram", transmission: "Automatic", power_source: "Diesel", color: "Black", doors: "5", kilometer: "123000", year: "2012", license_plate: "B-SA 2657")
vehicle.photo.attach(io: file, filename: "dodgeram.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Dodge Ram", transmission: "Automatic", power_source: "Diesel", color: "Yellow", doors: "5", kilometer: "123000", year: "2012", license plate: "B-SA 2657", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/640/69/png-transparent-2018-lincoln-navigator-l-car-2018-lincoln-continental-2017-lincoln-navigator-lincoln-compact-car-car-lincoln-motor-company-thumbnail.png")
vehicle = Vehicle.new(model: "Lincoln Navigator", transmission: "Automatic", power_source: "Gasoline Hybrid", color: "Red", doors: "5", kilometer: "3000", year: "2022", license_plate: "P-RD 1280")
vehicle.photo.attach(io: file, filename: "lincolnnavi.png", content_type: "image/png")
vehicle.save
# Car.create(model: "Lincoln Navigator", transmission: "Automatic", power_source: "Gasoline Hybrid", color: "Red", doors: "5", kilometer: "3000", year: "2022", license plate: "P-RD 1280", photo: "https://carimage.org.test.jpg")

file = URI.open("https://w7.pngwing.com/pngs/739/923/png-transparent-2015-dodge-charger-dodge-challenger-srt-hellcat-car-chrysler-dodge-performance-car-vehicle-transport-thumbnail.png")
vehicle = Vehicle.new(model: "Dodge Charger", transmission: "Manual", power_source: "Gasoline", color: "Red", doors: "5", kilometer: "64000", year: "2016", license_plate: "F-RA 3454")
vehicle.photo.attach(io: file, filename: "dodgechar.png", content_type: "image/png")
vehicle.save

# Car.create(model: "Dodge Charger", transmission: "Manual", power_source: "Gasoline", color: "Orange", doors: "5", kilometer: "64000", year: "2016", license plate: "F-RA 3454", photo: "https://carimage.org.test.jpg")

p "Created #{Vehicle.count} cars in database"

# Creating our Lists
# List.create(name: "Car")

# Creating our Rentals (because they are referencing the car lists)
# Rental.create(comment: "A Nice Car", car: Car.create, list: List.create)

puts "Seeds are planted 🌱 🌱 🌱"

# Vehicles
# 12.times do
#   vehicle = Vehicle.create!(
#   model: Faker::Vehicle.make_and_model,
#   transmission: Faker::Vehicle.transmission,
#   power_source: Faker::Vehicle.fuel_type,
#   color: Faker::Vehicle.color,
#   doors: Faker::Vehicle.door_count,
#   kilometer: Faker::Vehicle.kilometrage,
#   year: Faker::Vehicle.year,
#   license_plate: Faker::Vehicle.license_plate,
#   standard_km_rate: "0.98€/km"
#   )
# end
