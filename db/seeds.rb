# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all
EventUser.destroy_all

User.create(name:"Larry")
User.create(name:"Marie")
User.create(name:"Tony")

Event.create(description:"Conférence sur l'IA", date: DateTime.new(2018,6,1), place: "Palais Brongniart", creator_id: 1)
Event.create(description:"Conférence sur l'IOT", date: DateTime.new(2018,6,12), place: "Cité des Sciences", creator_id: 2)
Event.create(description:"Grosse Beuverie", date: DateTime.new(2018,6,15), place: "Chez Thomas", creator_id: 1)

EventUser.create(event_id: 1, attendee_id: 2)
EventUser.create(event_id: 1, attendee_id: 3)

EventUser.create(event_id: 2, attendee_id: 1)

EventUser.create(event_id: 3, attendee_id: 3)
