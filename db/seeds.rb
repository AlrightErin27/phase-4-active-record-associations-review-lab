# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pp 'creating passengers...'
eric = Passenger.create(name: 'Eric Idle')
michael = Passenger.create(name: 'Michael Palin')
john = Passenger.create(name: 'John Cleese')

pp 'creating taxis...'
knight = Taxi.create(driver: 'Black Knight')
ni = Taxi.create(driver: 'Knights Who Say Ni')
rabbit = Taxi.create(driver: 'Rabbit of Caerbannog')

pp 'creating rides...'
Ride.create(date: 'December 1309', passenger_id: eric.id, taxi_id: ni.id)
Ride.create(date: 'November 1377', passenger_id: john.id, taxi_id: knight.id)
Ride.create(date: 'July 1388', passenger_id: eric.id, taxi_id: ni.id)
Ride.create(date: 'January 1342', passenger_id: michael.id, taxi_id: rabbit.id)
Ride.create(date: 'October 1355', passenger_id: michael.id, taxi_id: rabbit.id)
Ride.create(date: 'June 1365', passenger_id: john.id, taxi_id: rabbit.id)

pp 'done 🌱'
