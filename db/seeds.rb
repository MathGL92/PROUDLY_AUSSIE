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

puts "Creating 10 users"

User.create!(email: "user@user.com", password: "password", last_name: "Green", first_name: "Steve")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Taylor", first_name: "Kathy")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Smith", first_name: "Sharon")

producer_alan = User.create!(email: "alan@user.com", password: "password", last_name: "Turing", first_name: "Alan")

producer_josh = User.create!(email: "josh@user.com", password: "password", last_name: "Turing", first_name: "Josh")

producer_mary = User.create!(email: "mary@user.com", password: "password", last_name: "Jean", first_name: "Mary")

producer_lorna= User.create!(email: "lorna@user.com", password: "password", last_name: "Bull", first_name: "Lorna")

producer_francky= User.create!(email: "francky@user.com", password: "password", last_name: "Marte", first_name: "Francky")

producer_phil= User.create!(email: "phil@user.com", password: "password", last_name: "Burton", first_name: "Phil")

producer_clarck= User.create!(email: "Clarck@user.com", password: "password", last_name: "Trole", first_name: "Clarck")


puts "Created #{User.count} users"

puts "Creating 9 producers"

producer1 = Producer.new(name: "Kathy", address: "251 Upper King Valley Rd, Cheshunt", tagline: "Wine, olives, oranges for 20 years", introduction: "Boutique vineyard with delicious wine and great service. Wine tastings
by appointment Thursdays to Sundays from 12 - 4pm. Also sells
chemical free olives and oranges/lemons in season. Contact Jeff for
more info and bookings.", ABN: "123-456-789", company_name: "Roselea Vineyard", approved: true, user_id: producer_kathy.id)
producer1_photo_file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.photo.attach(io: producer1_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1_bg_photo_file = URI.open('https://images.unsplash.com/photo-1562601579-599dec564e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.bg_photo.attach(io: producer1_bg_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1.save!

producer2 = Producer.new(name: "Sharon", address: "74 Slaughterhouse Rd, Rutherglen", tagline: "premium wines since 2005", introduction: "Scion is a producer of artisan wines, handcrafted from vine to bottle. Our vision is to produce premium wines guided by the creative and modern interpretation of traditional Rutherglen varietals. We grow and handcraft wines in small batches – from aromatic whites to elegant reds and delicate dessert wines. Located just 2km south of Rutherglen on our estate vineyard, Scion’s cellar door is nestled in the natural landscape among grey box gums.", ABN: "987-654-321", company_name: "Scion Wine", approved: true, user_id: producer_sharon.id)
producer2_photo_file = URI.open('https://images.unsplash.com/photo-1592592851366-4ec8bffdb30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=970&q=80')
producer2.photo.attach(io: producer2_photo_file, filename: 'producer2.jpg', content_type: 'image/jpg')
producer2_bg_photo_file = URI.open('https://images.unsplash.com/photo-1573061750909-d2586d3fe8b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer2.bg_photo.attach(io: producer2_bg_photo_file, filename: 'producer2.jpg', content_type: 'image/jpg')
producer2.save!


#### producer for our stroy ############

producer3 = Producer.new(name: "Alan", address: "12 Laurel Street, Rockbank Victoria", tagline: "'Spread the Love' of honey since 2000", introduction: "We believe that our planet offers so much beauty and abundance, a living Garden of Eden...pure, natural and delicious. \n We are based in Melbourne's West and source our pure Australian honey from native flora away from genetically modified crops and pesticides. \n Our organic plant oils are sourced from the world's finest which are known for their therapeutic qualities to uplift, relax and renew. We then create a product that is both unique and delicious. \n In each individual jar we infuse very precise amounts of the world's finest organic plant oils. \n The result? A delicious flavour experience! We are sure you won’t be disappointed.", ABN: "525-456-709", company_name: "Bees of Eden Honey", approved: true, user_id: producer_alan.id)
producer3_photo_file = URI.open('https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
producer3.photo.attach(io: producer3_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3_bg_photo_file = URI.open('https://static.wixstatic.com/media/8faf1c_631d21caf4a744aa95815443d284e7e6.jpg/v1/fill/w_413,h_294,al_c,q_80,usm_0.66_1.00_0.01/8faf1c_631d21caf4a744aa95815443d284e7e6.webp')
producer3.bg_photo.attach(io: producer3_bg_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3.save!

###########################################

producer4 = Producer.new(name: "Josh", address: "Shop 1/ 8-10 FORREST AVENUE, NEWHAVEN VIC 3925", tagline: "ORGANIC products, for you and your home", introduction: "We are an Australian, family owned business, established in 2004. \n \n We manufacture and retail beautiful ORGANIC products, for you and your home, including hardwood furniture, bed linen, mattresses and futons, pillows, quilts, baby bedding, protectors, towels and clothing.", ABN: "521-156-709", company_name: "Organature", approved: true, user_id: producer_josh.id)
producer4_photo_file = URI.open('https://images.unsplash.com/photo-1596193318541-2a6d89421dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80')
producer4.photo.attach(io: producer4_photo_file, filename: 'producer4.jpg', content_type: 'image/jpg')
producer4_bg_photo_file = URI.open('https://images.unsplash.com/photo-1594526761005-4ccdbd608d2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer4.bg_photo.attach(io: producer4_bg_photo_file, filename: 'producer4.jpg', content_type: 'image/jpg')
producer4.save!

producer5 = Producer.new(name: "Mary", address: "100 Hughes Rd, Bargara QLD 4670", tagline: "Handcrafted Organic Australian Jewellery", introduction: "We are committed to 100% of our products being sourced and handcrafted with passion wholeheartedly in Australia. By supporting Elements Jewellery, you’re supporting Australian craftsmen. We aim to empower artisans, their families and their communities in the process.", ABN: "321-156-799", company_name: "Elements Jewellery", approved: true, user_id: producer_mary.id)
producer5_photo_file = URI.open('https://images.unsplash.com/photo-1506956191951-7a88da4435e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80')
producer5.photo.attach(io: producer5_photo_file, filename: 'producer5.jpg', content_type: 'image/jpg')
producer5_bg_photo_file = URI.open('https://images.unsplash.com/photo-1535632787350-4e68ef0ac584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer5.bg_photo.attach(io: producer5_bg_photo_file, filename: 'producer5.jpg', content_type: 'image/jpg')
producer5.save!

producer6 = Producer.new(name: "Lorna", address: "3/5 Cubitt Way Dandenong South, VIC 3175. 8/90 Collins St", tagline: "the earth’s favourite little skincare", introduction: "Bubba Organics the earth’s favourite little skincare co, create Organic by Nature baby skincare ranges using the best Locally sourced natural ingredients to create beautiful products that you can trust and your baby will love. \n \n Our extra gentle pure organic formulation is perfect for everyday use for your growing family and for all with sensitive skin. Available in 250ml & 500ml pump bottles.", ABN: "521-151-709", company_name: "Bubba Organics", approved: true, user_id: producer_lorna.id)
producer6_photo_file = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80')
producer6.photo.attach(io: producer6_photo_file, filename: 'producer6.jpg', content_type: 'image/jpg')
producer6_bg_photo_file = URI.open('https://images.unsplash.com/photo-1489760176169-fd3d32805239?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer6.bg_photo.attach(io: producer6_bg_photo_file, filename: 'producer6.jpg', content_type: 'image/jpg')
producer6.save!

producer7 = Producer.new(name: "Francky", address: "Hollyburton Farm, 1677 Melbourne-Lancefield Rd, Bolinda VIC 3432", tagline: "Happy animals equate to far tastier organic meat and environmental care.", introduction: "Hollyburton is a NASAA certified Organic Farm in the Macedon Ranges just outside Melbourne spanning 440 acres, owned by the Scott family for 24 years.\n We produce Organic Beef, Organic Lamb, Organic Chicken, Organic Eggs, Free Range Pork , doonas made from our own wool and Wadding for patchwork quilting.", ABN: "251-156-709", company_name: "Hollyburton Farm", approved: true, user_id: producer_francky.id)
producer7_photo_file = URI.open('https://images.unsplash.com/photo-1517705185975-b3301eaa9c8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1629&q=80')
producer7.photo.attach(io: producer7_photo_file, filename: 'producer7.jpg', content_type: 'image/jpg')
producer7_bg_photo_file = URI.open('https://images.unsplash.com/photo-1516762167031-bc59fb134985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
producer7.bg_photo.attach(io: producer7_bg_photo_file, filename: 'producer7.jpg', content_type: 'image/jpg')
producer7.save!

producer8 = Producer.new(name: "Phil", address: "100 Hughes Rd, Bargara QLD 4670", tagline: "Passionate about creating with sustainable and natural materials", introduction: "These pure Organic Earrings are handmade from natural sustainable, Eco-friendly and ethically sourced materials. Made by hand in our small family studio in Bargara, QLD using traditional processes and committed to the environment.", ABN: "521-156-709", company_name: "Elements Jewellery", approved: true, user_id: producer_phil.id)
producer8_photo_file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer8.photo.attach(io: producer8_photo_file, filename: 'producer8.jpg', content_type: 'image/jpg')
producer8_bg_photo_file = URI.open('https://www.australianmade.com.au/Assets/3141b911-b2d5-4b60-a863-a04af54b94fb.jpg?width=340&height=340')
producer8.bg_photo.attach(io: producer8_bg_photo_file, filename: 'producer8.jpg', content_type: 'image/jpg')
producer8.save!

# producer9 = Producer.new(name: "Clarck", address: "45B Wharf St, Maclean, New South Wales, 2463", tagline: "You will see quality workmanship and design in every piece.", introduction: "", ABN: "521-156-789", company_name: "Australian Woodwork", approved: true, user_id: producer_clarck.id)
# producer9_photo_file = URI.open('https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60')
# producer9.photo.attach(io: producer9_photo_file, filename: 'producer9.jpg', content_type: 'image/jpg')
# producer9_bg_photo_file = URI.open('https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80')
# producer9.bg_photo.attach(io: producer9_bg_photo_file, filename: 'producer9.jpg', content_type: 'image/jpg')
# producer9.save!


puts "Created #{Producer.count} producers"

puts "Creating 14 products"

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

##############

product9 = Product.new(name: "Quilt – Winter Weight – Certified Organic Cotton" , price: 245.0 , producer_id: producer4.id, description: "Cosy Winter Weight Organic Cotton Quilt. Organature quilts (also known as Duvet, Comforter or Doona) are made with GOTS certified 100% organic cotton fabric and filling. No synthetic fibres to cause perspiration. Our quilts are light weight, cosy and comfortable. Winter weight, approx 460 grams per m2. ")
product9_photo_file = URI.open('https://organature.com/wp-content/uploads/organic-cotton-winter-weight-quilt-doona-1-545x454.jpg')
product9.photo.attach(io: product9_photo_file, filename: 'product9.jpg', content_type: 'image/jpg')
product9.save!

product10 = Product.new(name: "Natural Earrings" , price: 30.0 , producer_id: producer5.id, description: "These Natural Earrings are handmade from natural sustainable, Eco-friendly and ethically sourced materials. Made by hand in our family studio in QLD, Australia using traditional processes and committed to the environment.")
product10_photo_file = URI.open('https://cdn.shopify.com/s/files/1/1804/2457/products/Natural_earrings_1024x1024.jpg?v=1586189071')
product10.photo.attach(io: product10_photo_file, filename: 'product9.jpg', content_type: 'image/jpg')
product10.save!

product11 = Product.new(name: "GOATS MILK & MANUKA HONEY BABY MOISTURE LOTION 250ML" , price: 26.95, producer_id: producer6.id, description: "With Aloe vera, Sweet Almond Oil and a hint of Orange Blossom, this gentle formulation has been developed to hydrate and comfort bubba’s delicate skin whilst the antibacterial and anti-inflammatory properties help soften and support it. Pure, ethical baby skin care, the way nature intended.")
product11_photo_file = URI.open('https://www.bubbaorganics.com.au/wp-content/uploads/2018/07/PROD-disney-pooh-bml.jpg')
product11.photo.attach(io: product11_photo_file, filename: 'product11.jpg', content_type: 'image/jpg')
product11.save!

product12 = Product.new(name: "Organic Winter Wool Doona" , price: 360, producer_id: producer7.id, description: "These doonas are the ultimate experience in warmth for those cold winter nights. They are 800gsm doonas which are equivalent to 4 blankets.\n Hollyburton doonas are thicker than most wool doonas on the market but because it is wool it is also breathable and can be used in a variety of night temperatures\n Experience the difference in your sleep now")
product12_photo_file = URI.open('https://images.unsplash.com/photo-1517912181842-e5a9d4701a4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1144&q=80')
product12.photo.attach(io: product12_photo_file, filename: 'product12.jpg', content_type: 'image/jpg')
product12.save!

product13 = Product.new(name: "Stoneware Drop Earrings" , price: 25.0, producer_id: producer8.id, description: "Materials for Stoneware Drop Earrings:\n Australian Ceramic stoneware \n Colour off white and rustic brown - matte finish \n Hypoallergenic surgical stainless-steel studs, clasps, ring or Sterling silver studs, clasps, ring \n \n Dimensions: Approximately 45mm.")
product13_photo_file = URI.open('https://images.unsplash.com/photo-1571487609887-b4ccacb26eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1700&q=80')
product13.photo.attach(io: product13_photo_file, filename: 'product13.jpg', content_type: 'image/jpg')
product13.save!

# product14 = Product.new(name: "" , price: , producer_id: producer9.id, description: "")
# product14_photo_file = URI.open('')
# product14.photo.attach(io: product14_photo_file, filename: 'product14.jpg', content_type: 'image/jpg')
# product14.save!


puts "Created #{Product.count} products"

puts "Creating 11 Categories..."

category1 = Tag.create!(name: "Organic") #honey, dates
category2 = Tag.create!(name: "Handmade") #purse, jerkey
category3 = Tag.create!(name: "Condiments") #spread, Jam
category4 = Tag.create!(name: "Vegan") #spread, Jam
category5 = Tag.create!(name: "Meat") #spread, Jam
category6 = Tag.create!(name: "Garment") #spread, Jam
category7 = Tag.create!(name: "Bag") #spread, Jam
category8 = Tag.create!(name: "Vintage") #spread, Jam
category9 = Tag.create!(name: "Clothing") #spread, Jam
category10 = Tag.create!(name: "Alcohol") #spread, Jam
category11 = Tag.create!(name: "Fruit & Veg") #spread, Jam


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
tagging9 = Tagging.create!(product_id: product9.id , tag_id: category2.id)
tagging10 = Tagging.create!(product_id: product10.id , tag_id: category1.id)
tagging11 = Tagging.create!(product_id: product11.id , tag_id: category1.id)
tagging12 = Tagging.create!(product_id: product12.id , tag_id: category2.id)
tagging13 = Tagging.create!(product_id: product13.id , tag_id: category2.id)
# tagging14 = Tagging.create!(product_id: product14.id , tag_id: category2.id)

puts "Added tags to Products."

puts "Seed Completed"
