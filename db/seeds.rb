puts "Cleaning the database..."

User.destroy_all
Producer.destroy_all
LineItem.destroy_all
Product.destroy_all
ShoppingCart.destroy_all
Tagging.destroy_all
Tag.destroy_all

puts "Creating 3 users"

User.create!(email: "user@user.com", password: "password", last_name: "Steve", first_name: "Customer")

producer_kathy = User.create!(email: "user2@user.com", password: "password", last_name: "Kathy", first_name: "Producer")

producer_sharon = User.create!(email: "user3@user.com", password: "password", last_name: "Sharon", first_name: "Producer")


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

product1 = Product.create!(name: "Home made Honey" , price: 35, producer_id: producer1.id)
product2 = Product.create!(name: "Handmade Purse" , price: 25.5, producer_id: producer1.id)
product3 = Product.create!(name: "Dried Dates" , price: 10, producer_id: producer1.id)
product4 = Product.create!(name: "Beef jerky" , price: 75.8, producer_id: producer2.id)
product5 = Product.create!(name: "Organic Orange Jam" , price: 15, producer_id: producer2.id)
product6 = Product.create!(name: "Goat's Cheese" , price: 20, producer_id: producer2.id)
puts "Created #{Product.count} products"

puts "Creating 4 Categories..."

category1 = Tag.create!(name: "homemade")
category2 = Tag.create!(name: "organic")
category3 = Tag.create!(name: "food + drink")
category4 = Tag.create!(name: "bences special mix")

puts 'Completed'

