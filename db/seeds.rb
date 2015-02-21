# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.delete_all
r1 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"}) 
r2 = Role.create({name: "Clerk", description: "Can perform any CRUD operation on any resource"}) 
r3 = Role.create({name: "Coordinator", description: "Can read and buy magazines without paying "})
r4 = Role.create({name: "Client", description: "Can read and buy magazines"})

User.delete_all
u1 = User.create({name: "rayghod", email: "rayghod@mail.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({name: "Pracownik biura", email: "clerk@mail.com", password: "clerk", password_confirmation: "clerk", role_id: r2.id})
u3 = User.create({name: "Koordynator", email: "koordynator@mail.com", password: "koordynator", password_confirmation: "koordynator", role_id: r3.id})
u4 = User.create({name: "Klient", email: "klient@mail.com", password: "klient", password_confirmation: "klient", role_id: r4.id, street: "Litewska", housenumber: 39, apartmentnumber: 2, city: "Kraków", zipcode:"30-014"})


i1 = Item.create({name: "Rayban Sunglasses", number: "Stylish shades", price: 99.99})
i2 = Item.create({name: "Gucci watch", number: "Expensive timepiece", price: 199.99})
i3 = Item.create({name: "Henri Lloyd Pullover", number: "Classy knitwear", price: 299.99})
i4 = Item.create({name: "Porsche socks", number: "Cosy footwear", price: 399.99})


