require "open-uri"

puts "Cleaning the database..."
LineItems.destroy_all
Producer.destroy_all
Product.destroy_all
ShoppingCart.destroy_all
Tagging.destroy_all
Tag.destroy_all
User.destroy_all

puts "Creating 2 users"

User.create!(email: "user@user.com", password: "password", last_name: "Fulop", first_name: "Bence")

user2 = User.create!(email: "user2@user.com", password: "password", last_name: "McCrystal", first_name: "Matthew")

puts "Created #{User.count} users"



puts "Creating 6 heroes"

hero1 = Hero.new(name: "Mr Strong", power: "Strength", description: "I can lift anything, I'm really strong.", address: "73 Darcy St, Melbourne", price: 300)
hero1.user = user

hero1_file = URI.open('https://images.unsplash.com/photo-1471286174890-9c112ffca5b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
hero1.photo.attach(io: hero1_file, filename: 'hero1.jpg', content_type: 'image/jpg')
hero1.save!



hero2 = Hero.new(name: "The Teleportman", power: "Teleportation", description: "I can teleport you to anywhere in under 5 seconds, no kidding", address: "57 Flinders Lane, Melbourne", price: 8999)
hero2.user = user
hero2_file = URI.open('https://images.unsplash.com/photo-1589686901292-69c7c0f73d7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80
')
hero2.photo.attach(io: hero2_file, filename: 'hero2.jpg', content_type: 'image/jpg')
hero2.save!

hero3 = Hero.new(name: "Fireman", power: "Fire Breathing", description: "Do you need to fix your barbeque? I can do that!", address: "17 kerr St, Fitzroy 3065", price: 600)
hero3.user = user
hero3_file = URI.open('https://images.unsplash.com/photo-1581102669483-5f0e38688a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
hero3.photo.attach(io: hero3_file, filename: 'hero3.jpg', content_type: 'image/jpg')
hero3.save!

hero4 = Hero.new(name: "Maite the Invisible", power: "Invisibility", description: "I'm mighty and invisible", address: "68, Flinders St, Melbourne", price: 4000)
hero4.user = user
hero4_file = URI.open('https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80')
hero4.photo.attach(io: hero4_file, filename: 'hero4.jpg', content_type: 'image/jpg')
hero4.save!


hero5= Hero.new(name: "Butterfly lady", power: "Flight", description: "I will deliver your goods in no time", address: "70 rue des Coudrais, 92330 Sceaux", price: 8700)
hero5.user = user
hero5_file = URI.open('https://images.unsplash.com/photo-1494631781929-c23495644b46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
hero5.photo.attach(io: hero5_file, filename: 'hero5.jpg', content_type: 'image/jpg')
hero5.save!

hero6= Hero.new(name: "Nico the proto", power: "Superteacher", description: "Any problem in coding? I can help you fix any algorithm under 5 min. Test me, you will not regret it.", address: "6 Williams Road, Prahran 3181", price: 200)
hero6.user = user
hero6_file = URI.open("https://res.cloudinary.com/dnqhwb9dm/image/upload/v1599801384/Capture_d_e%CC%81cran_2020-09-11_a%CC%80_15.15.03_adr38l.png")
hero6.photo.attach(io: hero6_file, filename: 'hero6.jpg', content_type: 'image/jpg')
hero6.save!

puts "Created: #{Hero.count} heroes"
