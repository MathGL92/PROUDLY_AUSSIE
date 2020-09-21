require "open-uri"

puts "Cleaning the database..."

Tagging.destroy_all
Tag.destroy_all
Order.destroy_all
LineItem.destroy_all
ShoppingCart.destroy_all
Product.destroy_all
Producer.destroy_all
User.destroy_all

puts "Creating 3 users"

User.create!(email: "user@user.com", password: "password", last_name: "Green", first_name: "Steve (Customer)")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Taylor", first_name: "Kathy (Producer)")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Smith", first_name: "Sharon (Producer)")

producer_james = User.create!(email: "user4@user.com", password: "password", last_name: "Young", first_name: "James (Producer)")

producer_matt = User.create!(email: "user5@user.com", password: "password", last_name: "Smith", first_name: "Matt (Producer)")

puts "Created #{User.count} users"

puts "Creating two producers"

producer1 = Producer.new(name: "Kathy", address: "251 Upper King Valley Rd, Cheshunt", introduction: "Boutique vineyard with delicious wine and great service. Wine tastings
by appointment Thursdays to Sundays from 12 - 4pm. Also sells
chemical free olives and oranges/lemons in season. Contact Jeff for
more info and bookings.", ABN: "123-456-789", company_name: "Roselea Vineyard", approved: true, user_id: producer_kathy.id)
producer1_photo_file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.photo.attach(io: producer1_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1_bg_photo_file = URI.open('https://images.unsplash.com/photo-1562601579-599dec564e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.bg_photo.attach(io: producer1_bg_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1.save!

producer2 = Producer.create!(name: "Sharon", address: "74 Slaughterhouse Rd, Rutherglen", introduction: "Scion is a producer of artisan wines, handcrafted from vine to bottle. Our vision is to produce premium wines guided by the creative and modern interpretation of traditional Rutherglen varietals. We grow and handcraft wines in small batches – from aromatic whites to elegant reds and delicate dessert wines. Located just 2km south of Rutherglen on our estate vineyard, Scion’s cellar door is nestled in the natural landscape among grey box gums.", ABN: "987-654-321", company_name: "Scion Wine", approved: true, user_id: producer_sharon.id)


puts "Created #{Producer.count} producers"

puts "Creating 6 products"

product1 = Product.new(name: "Home made Honey" , price: 35, producer_id: producer1.id, description: "Manuka honey has medicinal bio-active properties and follows an NPA rating system, it has been proven to be effective for use in a large variety of health enhancing scenarios, when you buy from Australian Food Services you're buying from the beekeepers.")
product1_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
product1.photo.attach(io: product1_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product1.save!

product2 = Product.create!(name: "Handmade Purse" , price: 25.5, producer_id: producer1.id, description: "All of In Blue Handmade's leathers are second source, eco-tanned and full grain. Full grain means that the top of the hide will show the wear of the animal. We love the look, we believe that distress adds character and style to each piece!" )
product3 = Product.create!(name: "Dried Dates" , price: 10, producer_id: producer1.id, description: "It is used primarily as a shade tree that also bears fruit.
Its precise natural distribution is uncertain due to extensive cultivation, but is thought to be in southern Asia, between Lebanon, northern India, and southern and central China, and possibly also southeastern Europe though more likely introduced there.
This plant has been introduced in Madagascar and grows as an invasive species in the western part of the island.")
product4 = Product.create!(name: "Beef jerky" , price: 75.8, producer_id: producer2.id, description:"Where are my Teriyaki lovers???? My sweet tender Sweet Teriyaki Jerky is soooooooooooo good! Marinated to perfection and baked fresh for you to enjoy. You will literally say Oh my GOD! while licking your fingers! Get ready to lick those fingers!!!")
product5 = Product.create!(name: "Organic Orange Jam" , price: 15, producer_id: producer2.id, description: "Handmade Orange Jam, Natural Handmade, Organic Dessert***CONTENT***Orange, granulated sugar, cinnamon stick, anise, clove, lemon. We offer you jams prepared with delicious oranges of the Mediterranean region.")
product6 = Product.create!(name: "Sweet Red pepper and Goats Cheese Spread" , price: 20, producer_id: producer2.id, description: "Sweet Red Peppers & Goat Cheese is ideal as a sauce for meat, especially pork or chicken. Try it instead of ketchup with hamburgers. Toss with pasta or rice. Spread on sandwiches or pizzas. A superb dip with Greek rusk, crackers or vegetables.
")
puts "Created #{Product.count} products"

puts "Creating 3 Categories..."

category1 = Tag.create!(name: "Organic") #honey, dates
category2 = Tag.create!(name: "Handmade") #purse, jerkey
category3 = Tag.create!(name: "Condiments") #spread, Jam

puts "Created #{Tag.count} categories"

puts "Adding tags to Products..."

tagging1 = Tagging.create!(product_id: product1.id , tag_id: category1.id)
tagging2 = Tagging.create!(product_id: product3.id , tag_id: category1.id)
tagging3 = Tagging.create!(product_id: product2.id , tag_id: category2.id)
tagging4 = Tagging.create!(product_id: product4.id , tag_id: category2.id)
tagging5 = Tagging.create!(product_id: product5.id , tag_id: category3.id)
tagging6 = Tagging.create!(product_id: product6.id , tag_id: category3.id)

puts "Added tags to Products."

puts "Seed Completed"
