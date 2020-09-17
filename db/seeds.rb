puts "Cleaning the database..."

Tag.destroy_all
Tagging.destroy_all
LineItem.destroy_all
ShoppingCart.destroy_all
Product.destroy_all
Producer.destroy_all
User.destroy_all

puts "Creating 3 users"

User.create!(email: "user@user.com", password: "password", last_name: "Green", first_name: "Steve (Customer)")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Taylor", first_name: "Kathy (Producer)")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Smith", first_name: "Sharon (Producer)")


puts "Created #{User.count} users"

puts "Creating two producers"

producer1 = Producer.create!(name: "Kathy", address: "251 Upper King Valley Rd, Cheshunt", introduction: "Boutique vineyard with delicious wine and great service. Wine tastings
by appointment Thursdays to Sundays from 12 - 4pm. Also sells
chemical free olives and oranges/lemons in season. Contact Jeff for
more info and bookings.", ABN: "123-456-789", company_name: "Roselea Vineyard", approved: true, user_id: producer_kathy.id)
# producer1.user = producer_kathy


producer2 = Producer.create!(name: "Sharon", address: "74 Slaughterhouse Rd, Rutherglen", introduction: "Scion is a producer of artisan wines, handcrafted from vine to bottle. Our vision is to produce premium wines guided by the creative and modern interpretation of traditional Rutherglen varietals. We grow and handcraft wines in small batches – from aromatic whites to elegant reds and delicate dessert wines. Located just 2km south of Rutherglen on our estate vineyard, Scion’s cellar door is nestled in the natural landscape among grey box gums.", ABN: "987-654-321", company_name: "Scion Wine", approved: true, user_id: producer_sharon.id)


puts "Created #{Producer.count} producers"

puts "Creating 6 products"

product1 = Product.create!(name: "Home made Honey" , price: 35, producer_id: producer1.id, description: "Manuka honey has medicinal bio-active properties and follows an NPA rating system, it has been proven to be effective for use in a large variety of health enhancing scenarios, when you buy from Australian Food Services you're buying from the beekeepers.")
product2 = Product.create!(name: "Handmade Purse" , price: 25.5, producer_id: producer1.id, description: "All of In Blue Handmade's leathers are second source, eco-tanned and full grain. Full grain means that the top of the hide will show the wear of the animal. We love the look, we believe that distress adds character and style to each piece!" )
product3 = Product.create!(name: "Dried Dates" , price: 10, producer_id: producer1.id, description: "It is used primarily as a shade tree that also bears fruit.
Its precise natural distribution is uncertain due to extensive cultivation, but is thought to be in southern Asia, between Lebanon, northern India, and southern and central China, and possibly also southeastern Europe though more likely introduced there.
This plant has been introduced in Madagascar and grows as an invasive species in the western part of the island.")
product4 = Product.create!(name: "Beef jerky" , price: 75.8, producer_id: producer2.id, description:"Where are my Teriyaki lovers???? My sweet tender Sweet Teriyaki Jerky is soooooooooooo good! Marinated to perfection and baked fresh for you to enjoy. You will literally say Oh my GOD! while licking your fingers! Get ready to lick those fingers!!!")
product5 = Product.create!(name: "Organic Orange Jam" , price: 15, producer_id: producer2.id, description: "Handmade Orange Jam, Natural Handmade, Organic Dessert***CONTENT***Orange, granulated sugar, cinnamon stick, anise, clove, lemon. We offer you jams prepared with delicious oranges of the Mediterranean region.")
product6 = Product.create!(name: "Sweet Red pepper and Goats Cheese Spread" , price: 20, producer_id: producer2.id, description: "Sweet Red Peppers & Goat Cheese is ideal as a sauce for meat, especially pork or chicken. Try it instead of ketchup with hamburgers. Toss with pasta or rice. Spread on sandwiches or pizzas. A superb dip with Greek rusk, crackers or vegetables.
")
puts "Created #{Product.count} products"

puts "Creating 4 Categories..."

category1 = Tag.create!(name: "homemade")
category2 = Tag.create!(name: "organic")
category3 = Tag.create!(name: "food + drink")
category4 = Tag.create!(name: "bences special mix")

puts 'Completed'

