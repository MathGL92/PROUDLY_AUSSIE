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

User.create!(email: "user@user.com", password: "password", last_name: "Green", first_name: "Steve")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Taylor", first_name: "Kathy")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Smith", first_name: "Sharon")

producer_alan = User.create!(email: "alan@user.com", password: "password", last_name: "Turing", first_name: "Alan")


puts "Created #{User.count} users"

puts "Creating two producers"

producer1 = Producer.new(name: "Kathy", address: "251 Upper King Valley Rd, Cheshunt", tagline: "Wine, olives, oranges for 20 years", introduction: "Boutique vineyard with delicious wine and great service. Wine tastings
by appointment Thursdays to Sundays from 12 - 4pm. Also sells
chemical free olives and oranges/lemons in season. Contact Jeff for
more info and bookings.", ABN: "123-456-789", company_name: "Roselea Vineyard", approved: true, user_id: producer_kathy.id)
producer1_photo_file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.photo.attach(io: producer1_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1_bg_photo_file = URI.open('https://images.unsplash.com/photo-1562601579-599dec564e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.bg_photo.attach(io: producer1_bg_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1.save!

producer2 = Producer.create!(name: "Sharon", address: "74 Slaughterhouse Rd, Rutherglen", tagline: "premium wines since 2005", introduction: "Scion is a producer of artisan wines, handcrafted from vine to bottle. Our vision is to produce premium wines guided by the creative and modern interpretation of traditional Rutherglen varietals. We grow and handcraft wines in small batches – from aromatic whites to elegant reds and delicate dessert wines. Located just 2km south of Rutherglen on our estate vineyard, Scion’s cellar door is nestled in the natural landscape among grey box gums.", ABN: "987-654-321", company_name: "Scion Wine", approved: true, user_id: producer_sharon.id)

producer3 = Producer.new(name: "Alan", address: "12 Laurel Street, Rockbank Victoria", tagline: "'Spread the Love' of honey since 2000", introduction: "We believe that our planet offers so much beauty and abundance, a living Garden of Eden...pure, natural and delicious. \n We are based in Melbourne's West and source our pure Australian honey from native flora away from genetically modified crops and pesticides. \n Our organic plant oils are sourced from the world's finest which are known for their therapeutic qualities to uplift, relax and renew. We then create a product that is both unique and delicious. \n In each individual jar we infuse very precise amounts of the world's finest organic plant oils. \n The result? A delicious flavour experience! We are sure you won’t be disappointed.", ABN: "525-456-709", company_name: "Bees of Eden Honey", approved: true, user_id: producer_alan.id)
producer3_photo_file = URI.open('https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
producer3.photo.attach(io: producer3_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3_bg_photo_file = URI.open('https://static.wixstatic.com/media/8faf1c_631d21caf4a744aa95815443d284e7e6.jpg/v1/fill/w_413,h_294,al_c,q_80,usm_0.66_1.00_0.01/8faf1c_631d21caf4a744aa95815443d284e7e6.webp')
producer3.bg_photo.attach(io: producer3_bg_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3.save!


puts "Created #{Producer.count} producers"

puts "Creating 8 products"

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

product7 = Product.new(name: "Pure Bush honey" , price: 13.95, producer_id: producer3.id, description: "Ingredients:﻿ \n 100% Australian bush honey. \n \n A delicious bush honey naturally produced from Victorian wildflowers. Like all our honey blends, our honey begins raw. Pure Bush Honey is harvested with care, extracted without artificially heating beyond hive temperatures and using a single, simple filtration that allows pollen and enzymes to remain intact providing all the health benefits that honey is famous for. If the honey crystallizes, simply sit the jar in warm water; this is a sign that you have quality living honey! We care for our honey and our bees! \n \nSpread the love! ")
product7_photo_file = URI.open('https://static.wixstatic.com/media/789382_2e5552748a364784b17f12c0ea844015~mv2.png/v1/fill/w_292,h_400,al_c,q_85,usm_0.66_1.00_0.01/789382_2e5552748a364784b17f12c0ea844015~mv2.webp')
product7.photo.attach(io: product7_photo_file, filename: 'product7.jpg', content_type: 'image/jpg')
product7.save!

product8 = Product.new(name: "Peppermint Honey" , price: 14.95, producer_id: producer3.id, description: "Ingredients:﻿ \n Organic peppermint oil, pure Australian bush honey. \n \n This oil is from a chocolate peppermint variety, and is very popular with kids! \n Awake with the uplifting minty scent of pure peppermint oil.  A refreshing scent with a chocolate undertone that tastes like an after dinner mint when mixed with our honey. \n We love it first thing in the morning in our green tea. It also goes well over chocolate panacotta!")
product8_photo_file = URI.open('https://static.wixstatic.com/media/8faf1c_e645187ea8bd414a80d656fad8b10cc0.png/v1/fill/w_209,h_285,al_c,q_85,usm_0.66_1.00_0.01/8faf1c_e645187ea8bd414a80d656fad8b10cc0.webp')
product8.photo.attach(io: product8_photo_file, filename: 'product8.jpg', content_type: 'image/jpg')
product8.save!


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
tagging7 = Tagging.create!(product_id: product7.id , tag_id: category1.id)
tagging8 = Tagging.create!(product_id: product8.id , tag_id: category2.id)

puts "Added tags to Products."

puts "Seed Completed"
