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

puts "Creating 22 users"

User.create!(email: "user@user.com", password: "password", last_name: "Green", first_name: "Steve")

user_mathieu = User.create!(email: "fbence90@gmail.com", password: "password", last_name: "Longe", first_name: "Mathieu")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Taylor", first_name: "Kathy")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Smith", first_name: "Sharon")

producer_alan = User.create!(email: "alan@user.com", password: "password", last_name: "Turing", first_name: "Alan")

producer_josh = User.create!(email: "josh@user.com", password: "password", last_name: "Turing", first_name: "Josh")

producer_mary = User.create!(email: "mary@user.com", password: "password", last_name: "Jean", first_name: "Mary")

producer_lorna= User.create!(email: "lorna@user.com", password: "password", last_name: "Bull", first_name: "Lorna")

producer_francky= User.create!(email: "francky@user.com", password: "password", last_name: "Marte", first_name: "Francky")

producer_phil= User.create!(email: "phil@user.com", password: "password", last_name: "Burton", first_name: "Phil")

producer_clarck= User.create!(email: "clarck@user.com", password: "password", last_name: "Trole", first_name: "Clarck")

producer_lloyd = User.create!(email: "lloyd@user.com", password: "password", last_name: "Morely", first_name: "Lloyd")

producer_david= User.create!(email: "david@user.com", password: "password", last_name: "Satire", first_name: "David")

producer_henrik= User.create!(email: "henrik@user.com", password: "password", last_name: "Sanson", first_name: "Henrik")

producer_warren= User.create!(email: "warren@user.com", password: "password", last_name: "Marley", first_name: "Warren")

producer_wendy= User.create!(email: "wendy@user.com", password: "password", last_name: "Johnsson", first_name: "Wendy")

producer_marlon= User.create!(email: "marlon@user.com", password: "password", last_name: "Flirt", first_name: "Marlon")

producer_elizabeth= User.create!(email: "elizabeth@user.com", password: "password", last_name: "Miear", first_name: "Elizabeth")

producer_cherry= User.create!(email: "cherry@user.com", password: "password", last_name: "Crystal", first_name: "Cherry")

producer_scott = User.create!(email: "scott@user.com", password: "password", last_name: "McFlurry", first_name: "Scott")

user_16 = User.create!(email: "user16@user.com", password: "password", last_name: "Brown", first_name: "Sheila")

user_17 = User.create!(email: "user17@user.com", password: "password", last_name: "Smith", first_name: "Kyle")

user_18 = User.create!(email: "user18@user.com", password: "password", last_name: "Albright", first_name: "Madeline")


puts "Created #{User.count} users"

puts "Creating 21 producers"

producer1 = Producer.new(name: "Kathy", address: "251 Upper King Valley Rd, Cheshunt", tagline: "Wine, olives, oranges for 20 years", introduction: "Boutique vineyard with delicious wine and great service. Wine tastings
by appointment Thursdays to Sundays from 12 - 4pm. Also sells
chemical free olives and oranges/lemons in season. Contact Jeff for
more info and bookings.", ABN: "123-456-789", company_name: "Roselea Vineyard", approved: true, user_id: producer_kathy.id)
producer1_photo_file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
producer1.photo.attach(io: producer1_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1_bg_photo_file = URI.open('https://images.unsplash.com/photo-1562601579-599dec564e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer1.bg_photo.attach(io: producer1_bg_photo_file, filename: 'producer1.jpg', content_type: 'image/jpg')
producer1.save!

producer2 = Producer.new(name: "Sharon", address: "74 Slaughterhouse Rd, Rutherglen", tagline: "premium wines since 2005", introduction: "Scion is a producer of artisan wines, handcrafted from vine to bottle. Our vision is to produce premium wines guided by the creative and modern interpretation of traditional Rutherglen varietals. We grow and handcraft wines in small batches – from aromatic whites to elegant reds and delicate dessert wines. Located just 2km south of Rutherglen on our estate vineyard, Scion’s cellar door is nestled in the natural landscape among grey box gums.", ABN: "987-654-321", company_name: "Scion Wine", approved: true, user_id: producer_sharon.id)
producer2_photo_file = URI.open('https://images.unsplash.com/photo-1592592851366-4ec8bffdb30e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer2.photo.attach(io: producer2_photo_file, filename: 'producer2.jpg', content_type: 'image/jpg')
producer2_bg_photo_file = URI.open('https://images.unsplash.com/photo-1573061750909-d2586d3fe8b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer2.bg_photo.attach(io: producer2_bg_photo_file, filename: 'producer2.jpg', content_type: 'image/jpg')
producer2.save!


#### producer for our stroy ############

producer3 = Producer.new(name: "Alan", address: "12 Laurel Street, Rockbank Victoria", tagline: "'Spread the Love' of honey since 2000", introduction: "We believe that our planet offers so much beauty and abundance, a living Garden of Eden...pure, natural and delicious. \n We are based in Melbourne's West and source our pure Australian honey from native flora away from genetically modified crops and pesticides. \n Our organic plant oils are sourced from the world's finest which are known for their therapeutic qualities to uplift, relax and renew. We then create a product that is both unique and delicious. \n In each individual jar we infuse very precise amounts of the world's finest organic plant oils. \n The result? A delicious flavour experience! We are sure you won’t be disappointed.", ABN: "525-456-709", company_name: "Bees of Eden Honey", approved: true, user_id: producer_alan.id)
producer3_photo_file = URI.open('https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80')
producer3.photo.attach(io: producer3_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3_bg_photo_file = URI.open('https://static.wixstatic.com/media/8faf1c_631d21caf4a744aa95815443d284e7e6.jpg/v1/fill/w_413,h_294,al_c,q_80,usm_0.66_1.00_0.01/8faf1c_631d21caf4a744aa95815443d284e7e6.webp')
producer3.bg_photo.attach(io: producer3_bg_photo_file, filename: 'producer3.jpg', content_type: 'image/jpg')
producer3.save!

###########################################

producer4 = Producer.new(name: "Josh", address: "Shop 1/ 8-10 FORREST AVENUE, NEWHAVEN VIC 3925", tagline: "ORGANIC products, for you and your home", introduction: "We are an Australian, family owned business, established in 2004. \n \n We manufacture and retail beautiful ORGANIC products, for you and your home, including hardwood furniture, bed linen, mattresses and futons, pillows, quilts, baby bedding, protectors, towels and clothing.", ABN: "521-156-709", company_name: "Organature", approved: true, user_id: producer_josh.id)
producer4_photo_file = URI.open('https://images.unsplash.com/photo-1596193318541-2a6d89421dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer4.photo.attach(io: producer4_photo_file, filename: 'producer4.jpg', content_type: 'image/jpg')
producer4_bg_photo_file = URI.open('https://images.unsplash.com/photo-1594526761005-4ccdbd608d2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer4.bg_photo.attach(io: producer4_bg_photo_file, filename: 'producer4.jpg', content_type: 'image/jpg')
producer4.save!

producer5 = Producer.new(name: "Mary", address: "100 Hughes Rd, Bargara QLD 4670", tagline: "Handcrafted Organic Australian Jewellery", introduction: "We are committed to 100% of our products being sourced and handcrafted with passion wholeheartedly in Australia. By supporting Elements Jewellery, you’re supporting Australian craftsmen. We aim to empower artisans, their families and their communities in the process.", ABN: "321-156-799", company_name: "Elements Jewellery", approved: true, user_id: producer_mary.id)
producer5_photo_file = URI.open('https://images.unsplash.com/photo-1506956191951-7a88da4435e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=450&q=80')
producer5.photo.attach(io: producer5_photo_file, filename: 'producer5.jpg', content_type: 'image/jpg')
producer5_bg_photo_file = URI.open('https://images.unsplash.com/photo-1535632787350-4e68ef0ac584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer5.bg_photo.attach(io: producer5_bg_photo_file, filename: 'producer5.jpg', content_type: 'image/jpg')
producer5.save!

producer6 = Producer.new(name: "Lorna", address: "3/5 Cubitt Way Dandenong South, VIC 3175. 8/90 Collins St", tagline: "the earth’s favourite little skincare", introduction: "Bubba Organics the earth’s favourite little skincare co, create Organic by Nature baby skincare ranges using the best Locally sourced natural ingredients to create beautiful products that you can trust and your baby will love. \n \n Our extra gentle pure organic formulation is perfect for everyday use for your growing family and for all with sensitive skin. Available in 250ml & 500ml pump bottles.", ABN: "521-151-709", company_name: "Bubba Organics", approved: true, user_id: producer_lorna.id)
producer6_photo_file = URI.open('https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer6.photo.attach(io: producer6_photo_file, filename: 'producer6.jpg', content_type: 'image/jpg')
producer6_bg_photo_file = URI.open('https://images.unsplash.com/photo-1489760176169-fd3d32805239?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer6.bg_photo.attach(io: producer6_bg_photo_file, filename: 'producer6.jpg', content_type: 'image/jpg')
producer6.save!

producer7 = Producer.new(name: "Francky", address: "Hollyburton Farm, 1677 Melbourne-Lancefield Rd, Bolinda VIC 3432", tagline: "Happy animals equate to far tastier organic meat and environmental care.", introduction: "Hollyburton is a NASAA certified Organic Farm in the Macedon Ranges just outside Melbourne spanning 440 acres, owned by the Scott family for 24 years.\n We produce Organic Beef, Organic Lamb, Organic Chicken, Organic Eggs, Free Range Pork , doonas made from our own wool and Wadding for patchwork quilting.", ABN: "251-156-709", company_name: "Hollyburton Farm", approved: true, user_id: producer_francky.id)
producer7_photo_file = URI.open('https://images.unsplash.com/photo-1517705185975-b3301eaa9c8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer7.photo.attach(io: producer7_photo_file, filename: 'producer7.jpg', content_type: 'image/jpg')
producer7_bg_photo_file = URI.open('https://images.unsplash.com/photo-1516762167031-bc59fb134985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
producer7.bg_photo.attach(io: producer7_bg_photo_file, filename: 'producer7.jpg', content_type: 'image/jpg')
producer7.save!

producer8 = Producer.new(name: "Phil", address: "100 Hughes Rd, Bargara QLD 4670", tagline: "Passionate about creating with sustainable and natural materials", introduction: "These pure Organic Earrings are handmade from natural sustainable, Eco-friendly and ethically sourced materials. Made by hand in our small family studio in Bargara, QLD using traditional processes and committed to the environment.", ABN: "521-156-709", company_name: "Elements Jewellery", approved: true, user_id: producer_phil.id)
producer8_photo_file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer8.photo.attach(io: producer8_photo_file, filename: 'producer8.jpg', content_type: 'image/jpg')
producer8_bg_photo_file = URI.open('https://www.australianmade.com.au/Assets/3141b911-b2d5-4b60-a863-a04af54b94fb.jpg?width=340&height=340')
producer8.bg_photo.attach(io: producer8_bg_photo_file, filename: 'producer8.jpg', content_type: 'image/jpg')
producer8.save!

producer9 = Producer.new(name: "Clarck", address: "45B Wharf St, Maclean, New South Wales, 2463", tagline: "You will see quality workmanship and design in every piece.", introduction: "", ABN: "521-156-789", company_name: "Australian Woodwork", approved: true, user_id: producer_clarck.id)
producer9_photo_file = URI.open('https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
producer9.photo.attach(io: producer9_photo_file, filename: 'producer9.jpg', content_type: 'image/jpg')
producer9_bg_photo_file = URI.open('https://images.unsplash.com/photo-1426927308491-6380b6a9936f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer9.bg_photo.attach(io: producer9_bg_photo_file, filename: 'producer9.jpg', content_type: 'image/jpg')
producer9.save!

producer10 = Producer.new(name: "Lloyd", address: "430 Treeton Rd, Cowaramup, Western Australia 6284 Australia", tagline: "One wine a day keeps the doctor away", introduction: "Brookwood Estate is a family owned and operated winery which enjoys an elevated position in the pristine Margaret River wine region. Our family were pioneer farmers of the region when the Mann family established the original Brookwood just south of Margaret River in 1910. This pioneering spirit has been at our core since we established Brookwood Estate in 1996 from a bare paddock. We grow our grapes using healthy and sustainable practices and craft our wines with as little intervention as possible. It is our love of farming, respect for mother nature and commitment to excellence that ensures we consistently deliver great wines for you to enjoy.", ABN: "511-156-789", company_name: "Brookwood Estate Winery", approved: true, user_id: producer_lloyd.id)
producer10_photo_file = URI.open('https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
producer10.photo.attach(io: producer10_photo_file, filename: 'producer10.jpg', content_type: 'image/jpg')
producer10_bg_photo_file = URI.open('https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer10.bg_photo.attach(io: producer10_bg_photo_file, filename: 'producer10.jpg', content_type: 'image/jpg')
producer10.save!


producer11 = Producer.new(name: "David", address: "482 Kilby Rd, Kew East VIC 3102", tagline: "French Wine from France to Aussie", introduction: "Producing the best French wine ever made in Australia. Crossing the product of dry land, low-yielding Coonawarra Cabernet Sauvignon and Barossa Valley Shiraz.", ABN: "521-156-789", company_name: "French Australian Wine", approved: true, user_id: producer_david.id)
producer11_photo_file = URI.open('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
producer11.photo.attach(io: producer11_photo_file, filename: 'producer11.jpg', content_type: 'image/jpg')
producer11_bg_photo_file = URI.open('https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
producer11.bg_photo.attach(io: producer11_bg_photo_file, filename: 'producer11.jpg', content_type: 'image/jpg')
producer11.save!

producer12 = Producer.new(name: "Henrik", address: "482 Kilby Rd, Kew East VIC 3102", tagline: "Making wine since 1990s.", introduction: "A passion for fine wines drives all operations at Pyramids Road Wines. Our focus is on the production of high quality low volume hand made wines. All our wines are hand crafted on the premises.", ABN: "521-156-789", company_name: "Decanter", approved: true, user_id: producer_henrik.id)
producer12_photo_file = URI.open('https://images.unsplash.com/photo-1573007974656-b958089e9f7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
producer12.photo.attach(io: producer12_photo_file, filename: 'producer12.jpg', content_type: 'image/jpg')
producer12_bg_photo_file = URI.open('https://images.unsplash.com/photo-1516594915697-87eb3b1c14ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer12.bg_photo.attach(io: producer12_bg_photo_file, filename: 'producer12.jpg', content_type: 'image/jpg')
producer12.save!


producer13 = Producer.new(name: "Warren", address: "25 Wyberba Lane, off Pyramids Road, Wyberba Q 4382", tagline: "As small winery owners, we do everything! No staff! But we love it.", introduction: "A passion for fine wines drives all operations at Pyramids Road Wines. Our focus is on the production of high quality low volume hand made wines. All our wines are hand crafted on the premises. Small scale production means most operations are hands-on – from pruning, training, picking in the vineyard to basket pressing, bottling and labeling in the winery.", ABN: "521-156-789", company_name: "Pyramids Road Wines", approved: true, user_id: producer_warren.id)
producer13_photo_file = URI.open('https://res.cloudinary.com/dnqhwb9dm/image/upload/v1600944007/Capture_d_e%CC%81cran_2020-09-24_a%CC%80_20.39.48_vrieag.png')
producer13.photo.attach(io: producer13_photo_file, filename: 'producer13.jpg', content_type: 'image/jpg')
producer13_bg_photo_file = URI.open('https://images.unsplash.com/photo-1526137630052-dc2c4693f0d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer13.bg_photo.attach(io: producer13_bg_photo_file, filename: 'producer13.jpg', content_type: 'image/jpg')
producer13.save!

producer14 = Producer.new(name: "Wendy", address: "194 Krondorf Road, Krondorf, Barossa, South Australia, 5352", tagline: "Awarded the Barossa's 'Best Small Cellar Door' in 2016", introduction: "Charles Melton has specialised in the production of limited release, premium red wines made from Barossa grapes since 1984. This small Barossa Valley winery located on the famous Krondorf Road, has since gained worldwide recognition for its premium red table wines. The wine portfolio now ranges from an iconic full bodied Rosé, the ‘Rose of Virginia’, to premium single vineyard Shiraz and Cabernet wines, through to Australia’s premier Rhone-style blend, the ‘Nine Popes’ GSM.", ABN: "521-156-719", company_name: "CHARLES MELTON WINES", approved: true, user_id: producer_wendy.id)
producer14_photo_file = URI.open('https://images.unsplash.com/photo-1551832717-1d4cff3e1834?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer14.photo.attach(io: producer14_photo_file, filename: 'producer14.jpg', content_type: 'image/jpg')
producer14_bg_photo_file = URI.open('https://res.cloudinary.com/dnqhwb9dm/image/upload/v1600944771/Capture_d_e%CC%81cran_2020-09-24_a%CC%80_20.52.20_yhs3v1.png')
producer14.bg_photo.attach(io: producer14_bg_photo_file, filename: 'producer14.jpg', content_type: 'image/jpg')
producer14.save!

producer15 = Producer.new(name: "Marlon", address: "23 Old Bittern Dromana Road, Merricks North 3926, Mornington Peninsula, Victoria, Australia", tagline: "Passion for wine is in the Scorpo blood.", introduction: "oday, the Scorpo family vineyard in Merricks North, on Australia’s Mornington Peninsula combines old world practices with new world flavours. Scorpo Wines combines the family heritage with expertise in growing premium grapes, meticulous attention to site selection, and a best practice approach to vineyard management and processes, trusting the old axiom that great fruit makes great wine.", ABN: "521-121-789", company_name: "Scorpo", approved: true, user_id: producer_marlon.id)
producer15_photo_file = URI.open('https://images.unsplash.com/photo-1581629774175-42f704962488?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
producer15.photo.attach(io: producer15_photo_file, filename: 'producer15.jpg', content_type: 'image/jpg')
producer15_bg_photo_file = URI.open('https://images.unsplash.com/photo-1504279577054-acfeccf8fc52?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
producer15.bg_photo.attach(io: producer15_bg_photo_file, filename: 'producer15.jpg', content_type: 'image/jpg')
producer15.save!

producer_16 = Producer.new(name: "Sheila", address: "41 Sydney St, Mackay QLD 4740", tagline: "Amazing wine from the Sunshine State", introduction: "Sirromet is a family owned and run winery situated at picturesque Mount Cotton, just a short drive from Brisbane and the Gold Coast, Sirromet’s state of the art facilities offers food and wine lovers the ultimate winery experience. Our story began when Terry Morris, Queensland entrepreneur and businessman, was in Victoria attending a dinner party with friends.", ABN: "521-156-789", company_name: "Sunshine Cove Winery ", approved: true, user_id: user_16.id)
producer_16_photo_file = URI.open('https://images.unsplash.com/photo-1534945773093-1119ae5684ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer_16.photo.attach(io: producer_16_photo_file, filename: 'producer16.jpg', content_type: 'image/jpg')
producer_16_bg_photo_file = URI.open('https://images.unsplash.com/photo-1573574635896-36753f4e38bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer_16.bg_photo.attach(io: producer_16_bg_photo_file, filename: 'producer16.jpg', content_type: 'image/jpg')
producer_16.save!

producer_17 = Producer.new(name: "Kyle", address: "111C College Rd, Sevenhill SA 5453", tagline: "Only the best of SA!", introduction: "Sevenhill's celebrated old stone winery and cellar door, stately St Aloysius' Church, the College building, spacious gardens and the surrounding vineyards provide visitors with a memorable experience of a welcoming and tranquil place.", ABN: "521-156-789", company_name: "Oasis Estate Winery", approved: true, user_id: user_17.id)
producer_17_photo_file = URI.open('https://images.unsplash.com/photo-1600603406200-5b2a104684ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
producer_17.photo.attach(io: producer_17_photo_file, filename: 'producer17.jpg', content_type: 'image/jpg')
producer_17_bg_photo_file = URI.open('https://images.unsplash.com/photo-1515779122185-2390ccdf060b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer_17.bg_photo.attach(io: producer_17_bg_photo_file, filename: 'producer17.jpg', content_type: 'image/jpg')
producer_17.save!

producer_18 = Producer.new(name: "Madeline", address: "290 Fletcher Rd, Karnup WA 6176", tagline: "The BEST from the WEST", introduction: "The Peel region with its close proximity to the Indian Ocean is the ideal location to grow wine grapes as it combines unique coastal limestone soils and a Mediterranean climate, ensuring wines with fruit intensity along with specific regional characteristics.", ABN: "521-156-789", company_name: "West Valley Wines", approved: true, user_id: user_18.id)
producer_18_photo_file = URI.open('https://images.unsplash.com/photo-1486302913014-862923f5fd48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer_18.photo.attach(io: producer_18_photo_file, filename: 'producer_18.jpg', content_type: 'image/jpg')
producer_18_bg_photo_file = URI.open('https://images.unsplash.com/photo-1600333859091-e3cab71c2adc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer_18.bg_photo.attach(io: producer_18_bg_photo_file, filename: 'producer_18.jpg', content_type: 'image/jpg')
producer_18.save!

producer19= Producer.new(name: "Elizabeth", address: "265 Brunswick St, Fitzroy", tagline: "one of the oldest commercial urban vineyards in the world.", introduction: "20 minutes from the city is Patritti Wine Cellars, established in 1926 and still entirely family owned. Located in Dover Gardens, the winery received five stars from James Halliday and is one of the oldest commercial urban vineyards in the world.", ABN: "521-156-789", company_name: "Patritti Wine Cellars", approved: true, user_id: producer_elizabeth.id)
producer19_photo_file = URI.open('https://images.unsplash.com/photo-1514448553123-ddc6ee76fd52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60')
producer19.photo.attach(io: producer19_photo_file, filename: 'producer19.jpg', content_type: 'image/jpg')
producer19_bg_photo_file = URI.open('https://images.unsplash.com/photo-1529877612930-6e7df7e2b02f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
producer19.bg_photo.attach(io: producer19_bg_photo_file, filename: 'producer19.jpg', content_type: 'image/jpg')
producer19.save!

producer20= Producer.new(name: "Cherry",
 address: "78 Penfolds Road, Adelaide, Adelaide, South Australia, 5072",
tagline: "Our focus is on producing world class wines and beef using controlled yields.",
introduction: "Boutique, handcrafted wines, the reds distinguished by intense rich colours and full earthy, white pepper, mulberry & blackberry flavours. The whites have the distinctive characters of the terroir of the Adelaide Hills, flinty aromatic and complex.", ABN: "521-156-789", company_name: "Bendbrook Wines & Beef", approved: true, user_id: producer_cherry.id)
producer20_photo_file = URI.open('https://images.unsplash.com/photo-1594744803329-e58b31de8bf5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
producer20.photo.attach(io: producer20_photo_file, filename: 'producer20.jpg', content_type: 'image/jpg')
producer20_bg_photo_file = URI.open('https://images.unsplash.com/photo-1593535388526-a6b8556c5351?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
producer20.bg_photo.attach(io: producer20_bg_photo_file, filename: 'producer20.jpg', content_type: 'image/jpg')
producer20.save!

producer21= Producer.new(name: "Scott",
 address: "150 Baroona Rd, Paddington QLD 4064",
tagline: "Combining simple and traditional winemaking technology.",
introduction: "Adelina is perfectly situated right next door to legendary Australian stalwart winery Wendouree just south of the township of Clare in South Australia.", ABN: "521-156-789", company_name: "Adelina Wines", approved: true, user_id: producer_scott.id)
producer21_photo_file = URI.open('https://images.unsplash.com/photo-1493752603190-08d8b5d1781d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
producer21.photo.attach(io: producer21_photo_file, filename: 'producer21.jpg', content_type: 'image/jpg')
producer21_bg_photo_file = URI.open('https://images.unsplash.com/photo-1568213816046-0ee1c42bd559?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80')
producer21.bg_photo.attach(io: producer21_bg_photo_file, filename: 'producer21.jpg', content_type: 'image/jpg')
producer21.save!



puts "Created #{Producer.count} producers"


###############################################

puts "Creating 28 products"

product1 = Product.new(name: "Home made Honey" , price: 35, producer_id: producer1.id, description: "Manuka honey has medicinal bio-active properties and follows an NPA rating system, it has been proven to be effective for use in a large variety of health enhancing scenarios, when you buy from Australian Food Services you're buying from the beekeepers.")
product1_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
product1.photo.attach(io: product1_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product1.save!

product2 = Product.new(name: "Handmade Purse" , price: 25.5, producer_id: producer1.id, description: "All of In Blue Handmade's leathers are second source, eco-tanned and full grain. Full grain means that the top of the hide will show the wear of the animal. We love the look, we believe that distress adds character and style to each piece!" )
product2_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
product2.photo.attach(io: product2_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product2.save!

product3 = Product.new(name: "Dried Dates" , price: 10, producer_id: producer1.id, description: "It is used primarily as a shade tree that also bears fruit.
Its precise natural distribution is uncertain due to extensive cultivation, but is thought to be in southern Asia, between Lebanon, northern India, and southern and central China, and possibly also southeastern Europe though more likely introduced there.
This plant has been introduced in Madagascar and grows as an invasive species in the western part of the island.")
product3_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
product3.photo.attach(io: product3_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product3.save!

product4 = Product.new(name: "Beef jerky" , price: 75.8, producer_id: producer2.id, description:"Where are my Teriyaki lovers???? My sweet tender Sweet Teriyaki Jerky is soooooooooooo good! Marinated to perfection and baked fresh for you to enjoy. You will literally say Oh my GOD! while licking your fingers! Get ready to lick those fingers!!!")
product4_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product4.photo.attach(io: product4_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product4.save!

product5 = Product.new(name: "Organic Orange Jam" , price: 15, producer_id: producer2.id, description: "Handmade Orange Jam, Natural Handmade, Organic Dessert***CONTENT***Orange, granulated sugar, cinnamon stick, anise, clove, lemon. We offer you jams prepared with delicious oranges of the Mediterranean region.")
product5_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
product5.photo.attach(io: product5_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product5.save!

product6 = Product.new(name: "Sweet Red pepper and Goats Cheese Spread" , price: 20, producer_id: producer2.id, description: "Sweet Red Peppers & Goat Cheese is ideal as a sauce for meat, especially pork or chicken. Try it instead of ketchup with hamburgers. Toss with pasta or rice. Spread on sandwiches or pizzas. A superb dip with Greek rusk, crackers or vegetables.
")
product6_photo_file = URI.open('https://images.unsplash.com/photo-1471943311424-646960669fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product6.photo.attach(io: product6_photo_file, filename: 'product1.jpg', content_type: 'image/jpg')
product6.save!

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
product12_photo_file = URI.open('https://images.unsplash.com/photo-1517912181842-e5a9d4701a4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product12.photo.attach(io: product12_photo_file, filename: 'product12.jpg', content_type: 'image/jpg')
product12.save!

product13 = Product.new(name: "Stoneware Drop Earrings" , price: 25.0, producer_id: producer8.id, description: "Materials for Stoneware Drop Earrings:\n Australian Ceramic stoneware \n Colour off white and rustic brown - matte finish \n Hypoallergenic surgical stainless-steel studs, clasps, ring or Sterling silver studs, clasps, ring \n \n Dimensions: Approximately 45mm.")
product13_photo_file = URI.open('https://images.unsplash.com/photo-1571487609887-b4ccacb26eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product13.photo.attach(io: product13_photo_file, filename: 'product13.jpg', content_type: 'image/jpg')
product13.save!

product14 = Product.new(name: "Wooden Salad Bowl" , price: 30 , producer_id: producer9.id, description: "Camphor Laurel's inherent qualities make it a perfect timber for a salad bowl - fine-grained, water-resistant, naturally anti-bacterial and with attractive colour and figure in the timber, it is widely used as timber for anything kitchen and food-related. The oils in the timber that give Camphor Laurel its characteristic smell quickly dissipate once it has been cut, kiln-dried and worked and will leave no residual taint on your chopping board or salad bowl. This particular design is a classic salad bowl shape with its wide rather than deep proportions and rolled rim, the sort of shape you might draw if asked to do a salad bowl! The 30cm size is very versatile, catering for up to 6 people and doubling happily as a fruit bowl if preferred. With its perfectly proportioned elegance, beautiful colour and classic simplicity it would accommodate all types of salad and suit any table setting.")
product14_photo_file = URI.open('https://images.unsplash.com/photo-1485814439394-ca57872604ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
product14.photo.attach(io: product14_photo_file, filename: 'product14.jpg', content_type: 'image/jpg')
product14.save!

product15 = Product.new(name: "2019 Sauvignon Blanc" , price: 25 , producer_id: producer10.id, description: "Fresh and delicate, bursting with flavours of gooseberry, white peach and nectarine with hints of cut straw. A crisp, dry aromatic white best enjoyed as a refreshing accompaniment to risotto, seafood and salads. \n \n Offering beautifully lifted aromas of green apple and lemon pith with subtle herbal infusion, the wine is pristine and juicy with an impressively long crisp finish. It’s bright and flavoursome with excellent balance and lively mouthfeel. At its best: now to 2024. ")
product15_photo_file = URI.open('https://res.cloudinary.com/dnqhwb9dm/image/upload/v1600935693/sauvignon_blanc_bawiub.png')
product15.photo.attach(io: product15_photo_file, filename: 'product15.jpg', content_type: 'image/jpg')
product15.save!

product16 = Product.new(name: "2019 Rosé" , price: 25 , producer_id: producer10.id, description: "Pink and fun with flavours Medium dry, red berries, rhubarb, rosewater, Shiraz based. A light bodied wine best enjoyed tapas, pasta dishes, Asian cuisine or anything BBQ’d. \n \n It’s instantly appealing on the nose showing watermelon, apple, strawberry and lemon peel characters, followed by a delightfully refreshing palate that’s light, crisp and lingering. A gorgeous anytime wine. At its best: now to 2021.")
product16_photo_file = URI.open('https://res.cloudinary.com/dnqhwb9dm/image/upload/v1600935548/rose_t5pqob.png')
product16.photo.attach(io: product16_photo_file, filename: 'product16.jpg', content_type: 'image/jpg')
product16.save!

product17 = Product.new(name: "2016 Shiraz Cabernet" , price: 28 , producer_id: producer10.id, description: "This classic blend is full bodied. Its hand crafted to be juicy and abundant with rich flavours of raspberry and forest fruits with a hint of spice. Smooth tannins lead to lingering flavours of spicy black fruits. \n \n The palate delivers excellent depth and intensity with wonderfully ripe flavours backed by fine texture and silky tannins, finishing gorgeously long and expansive. At its best: now to 2025.")
product17_photo_file = URI.open('https://res.cloudinary.com/dnqhwb9dm/image/upload/v1600930957/Capture_d_e%CC%81cran_2020-09-24_a%CC%80_16.57.39_k0dcwk.png')
product17.photo.attach(io: product17_photo_file, filename: 'product17.jpg', content_type: 'image/jpg')
product17.save!


product18 = Product.new(name: "Cabernet Shiraz" , price: 32 , producer_id: producer11.id, description: "The great Australian red blend is alive, kicking and boomeranging back. David takes us through the six best examples of this definitive Aussie style...")
product18_photo_file = URI.open('https://images.unsplash.com/photo-1569231993169-fe176108ac96?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product18.photo.attach(io: product18_photo_file, filename: 'product18.jpg', content_type: 'image/jpg')
product18.save!

product19 = Product.new(name: "2019 Shiraz" , price: 26 , producer_id: producer12.id, description: "It’s the kind of red you want on the wine rack all year round because it over-delivers and gets better and better. Expect a firm palate with soft tannins, nestled in a medium-body of fruit and spice. There’s dark plums, bright cherries and spicy cloves, drinking well now and only getting better.")
product19_photo_file = URI.open('https://images.unsplash.com/photo-1516594915697-87eb3b1c14ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product19.photo.attach(io: product19_photo_file, filename: 'product19.jpg', content_type: 'image/jpg')
product19.save!

product20 = Product.new(name: "2018 Shiraz" , price: 35 , producer_id: producer13.id, description: "An elegant Shiraz showing distinct varietal black pepper and spice characters with 12 months maturation in a mix of American and French oak.")
product20_photo_file = URI.open('https://images.unsplash.com/photo-1547151100-830d1991a064?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product20.photo.attach(io: product20_photo_file, filename: 'product20.jpg', content_type: 'image/jpg')
product20.save!


product21 = Product.new(name: "2016 Shiraz" , price: 35 , producer_id: producer14.id, description: "An elegant Shiraz showing distinct varietal black pepper and spice characters with 12 months maturation in a mix of American and French oak.")
product21_photo_file = URI.open('https://images.unsplash.com/photo-1558150052-fddeedcf27d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product21.photo.attach(io: product21_photo_file, filename: 'product21.jpg', content_type: 'image/jpg')
product21.save!

product22 = Product.new(name: "2018 Shiraz" , price: 45 , producer_id: producer15.id, description: "Deep red/purple in colour.  An enchanting nose of rich dark berries with pepper, liquorice spiciness and earth.  Wonderfully structured with savoury notes and silky persistent tannins.  This is an elegant example of cool climate shiraz.")
product22_photo_file = URI.open('https://images.unsplash.com/photo-1558150052-fddeedcf27d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product22.photo.attach(io: product22_photo_file, filename: 'product22.jpg', content_type: 'image/jpg')
product22.save!

product23 = Product.new(name: "Semi Dry Shiraz" , price: 25 , producer_id: producer_16.id, description: "Shiraz creates wines with medium to full-bodied character and varying flavour profiles and structure depending on region, climate and techniques.")
product23_photo_file = URI.open('https://images.unsplash.com/photo-1534735714471-c5ea63cbe1cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product23.photo.attach(io: product23_photo_file, filename: 'product23.jpg', content_type: 'image/jpg')
product23.save!

product24 = Product.new(name: "Reserve Shiraz" , price: 31 , producer_id: producer_17.id, description: "The Reserve Release Shiraz was harvested in the cool of the morning on March 14, 2014. It was then crushed and destemmed into one of Sevenhill’s historic, five-tonne open slate fermenters, where it was gently plunged and pumped-over twice a day for 14 days.")
product24_photo_file = URI.open('https://images.unsplash.com/photo-1490344948579-6632f4807a6a?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80')
product24.photo.attach(io: product24_photo_file, filename: 'product24.jpg', content_type: 'image/jpg')
product24.save!

product25 = Product.new(name: "Organic Cabernet Shiraz" , price: 32 , producer_id: producer_18.id, description: "Medium cherry red in colour. Honest red fruit nose. There are fragrant berry aromas with some leafy notes, presumably from the cabernet franc. Soft, harmonious, easy drinking red style.")
product25_photo_file = URI.open('https://images.unsplash.com/photo-1553514460-59632be5ddfe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product25.photo.attach(io: product25_photo_file, filename: 'product25.jpg', content_type: 'image/jpg')
product25.save!

product26= Product.new(name: "Fat Cat Shiraz" , price: 30, producer_id: producer19.id, description: "Tucked away in the cellar of many budding wine collectors, Patritti Wine Cellars has all the structure and pedigree of some of its higher priced brothers and sisters.")
product26_photo_file = URI.open('https://images.unsplash.com/photo-1546944517-4f38480ff03c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
product26.photo.attach(io: product26_photo_file, filename: 'product26.jpg', content_type: 'image/jpg')
product26.save!

product27= Product.new(name: "Organic Shiraz" , price: 25, producer_id: producer20.id, description: "Grape-fed by our own award winning wine grapes! The great Australian red blend is alive, kicking and boomeranging back. David takes us through the six best examples of this definitive Aussie style...")
product27_photo_file = URI.open('https://images.unsplash.com/photo-1508471608746-b7f6b8a5b0b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
product27.photo.attach(io: product27_photo_file, filename: 'product27.jpg', content_type: 'image/jpg')
product27.save!

product28= Product.new(name: "Adelina Dolcetto Barbera Rosato Shiraz" , price: 25, producer_id: producer21.id, description: "Adelina's latest Rosato, a blend of Dolcetto and Barbera taken from the Ceravolo vineyard, comprises 100% hand-picked, destemmed and crushed fruit filled directly into a concrete fermenter by gravity. Three barriques worth of juice is bled off after 30 hours, which is then naturally fermented and left to sit quietly in the same neutral barriques they started their life out in, for six months, before a light filtration and bottling. Only 780 bottles produced.")
product28_photo_file = URI.open('https://wineexperience.com.au/cms/assets/products/Adelina-Dolcetto-Barbera-Rosato_1585194948-200.jpg')
product28.photo.attach(io: product28_photo_file, filename: 'product28.jpg', content_type: 'image/jpg')
product28.save!

puts "Created #{Product.count} products"


#########################################

puts "Creating 11 Categories..."

category1 = Tag.new(name: "Organic")
category1_photo_file = URI.open('https://images.unsplash.com/photo-1533478583204-680d4ff74891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category1.photo.attach(io: category1_photo_file, filename: 'category1.jpg', content_type: 'image/jpg')
category1.save!

category2 = Tag.new(name: "Handmade")
category2_photo_file = URI.open('https://images.unsplash.com/photo-1506806732259-39c2d0268443?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category2.photo.attach(io: category2_photo_file, filename: 'category2.jpg', content_type: 'image/jpg')
category2.save!

category3 = Tag.new(name: "Condiments")
category3_photo_file = URI.open('https://images.unsplash.com/photo-1563599175592-c58dc214deff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category3.photo.attach(io: category3_photo_file, filename: 'category3.jpg', content_type: 'image/jpg')
category3.save!

category4 = Tag.new(name: "Vegan")
category4_photo_file = URI.open('https://images.unsplash.com/photo-1540914124281-342587941389?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category4.photo.attach(io: category4_photo_file, filename: 'category4.jpg', content_type: 'image/jpg')
category4.save!

category5 = Tag.new(name: "Meat")
category5_photo_file = URI.open('https://images.unsplash.com/photo-1542901031-ec5eeb518e83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category5.photo.attach(io: category5_photo_file, filename: 'category5.jpg', content_type: 'image/jpg')
category5.save!

category6 = Tag.new(name: "Accessories")
category6_photo_file = URI.open('https://images.unsplash.com/photo-1519431458145-1ca3d5ccd68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category6.photo.attach(io: category6_photo_file, filename: 'category6.jpg', content_type: 'image/jpg')
category6.save!

category7 = Tag.new(name: "Bag")
category7_photo_file = URI.open('https://images.unsplash.com/photo-1564159133-48b801a0c6f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category7.photo.attach(io: category7_photo_file, filename: 'category7.jpg', content_type: 'image/jpg')
category7.save!

category8 = Tag.new(name: "Vintage")
category8_photo_file = URI.open('https://images.unsplash.com/photo-1460776960860-7adc30a4e69d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category8.photo.attach(io: category8_photo_file, filename: 'category8.jpg', content_type: 'image/jpg')
category8.save!

category9 = Tag.new(name: "Clothing")
category9_photo_file = URI.open('https://images.unsplash.com/photo-1512436991641-6745cdb1723f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')
category9.photo.attach(io: category9_photo_file, filename: 'category9.jpg', content_type: 'image/jpg')
category9.save!

category10 = Tag.new(name: "Alcohol")
category10_photo_file = URI.open('https://images.unsplash.com/photo-1571323185405-d4c20ffd832d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category10.photo.attach(io: category10_photo_file, filename: 'category10.jpg', content_type: 'image/jpg')
category10.save!

category11 = Tag.new(name: "Fruit & Veg")
category11_photo_file = URI.open('https://images.unsplash.com/photo-1489450278009-822e9be04dff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
category11.photo.attach(io: category11_photo_file, filename: 'category11.jpg', content_type: 'image/jpg')
category11.save!

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
tagging14 = Tagging.create!(product_id: product14.id , tag_id: category2.id)
tagging15 = Tagging.create!(product_id: product15.id , tag_id: category10.id)
tagging16 = Tagging.create!(product_id: product16.id , tag_id: category10.id)
tagging17 = Tagging.create!(product_id: product17.id , tag_id: category10.id)
tagging18 = Tagging.create!(product_id: product18.id , tag_id: category10.id)
tagging19 = Tagging.create!(product_id: product19.id , tag_id: category10.id)
tagging20 = Tagging.create!(product_id: product20.id , tag_id: category10.id)
tagging21 = Tagging.create!(product_id: product21.id , tag_id: category10.id)
tagging22 = Tagging.create!(product_id: product22.id , tag_id: category10.id)
tagging23 = Tagging.create!(product_id: product23.id , tag_id: category10.id)
tagging24 = Tagging.create!(product_id: product24.id , tag_id: category10.id)
tagging25 = Tagging.create!(product_id: product25.id , tag_id: category10.id)
tagging26 = Tagging.create!(product_id: product26.id , tag_id: category10.id)
tagging27 = Tagging.create!(product_id: product27.id , tag_id: category10.id)
tagging28 = Tagging.create!(product_id: product28.id , tag_id: category10.id)

puts "Added tags to Products."

puts "Seed Completed"
