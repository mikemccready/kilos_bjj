# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create([
    {user_name: 'Admin', email: 'admin@kilos.com'},
    {user_name: 'Mike', email: 'mike@kilos.com'},
])

Video.delete_all
Video.create([
    {source: 'https://www.youtube.com/watch?v=mtQvMfBQYXA', 
     title: 'Kurt Osiander | Armbar + Choke', 
     description: 'Kurt Osiander Move of the Week - Armbar + Choke'},
])
