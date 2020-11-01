# Proudly Aussie
> Proudly Aussie is a **Ruby in Rails** market place that enables everyone living in Australia to connect with local producers and buy their products. What makes Proudly Aussie different is that the human is at the forefront: we try to recreate the experience when shopping at a local market.

Project homepage: https://www.proudly-aussie.com/

## Features
What can you do with Proudly Aussie?
* If you  are a producer, you can:
  * create an account. After making sure you are producing in Australia, the Proudly Aussie team will activate it and you could:
  * update your personnal page,
  * add some products to your personnal e-boutique
* If you are living in Australia, you can:
  * look for producers (search bar, category cards or straight in the list or on the map),
  * visit their page and "meet" our producers,
  * add some products in your shopping bag,
  * update the quantities straight from your shopping bag
  * purchase the products 

## Tech/framework used
* Proudly Aussie is buil on Ruby on Rails and PostgreSQL for backend; JS, HTML and CSS for frontend.

* We are using Mapbox API and Stripe.

* Ruby 2.6.6

* Rails 6.0.3.2

* RubyGems used: devise, autoprefixer, font-awesome, simple_form, etc.

* Database: postgreSQL & Active Record Storage, Cloudinary for photo cloud storage

* Deployment: Heroku

## Process - Agile

* Started by building MVP then added additional features and iterated along the way

* Draw schema with n:n relationships and polymorphic tables

* Use of command line to create rails app

* MVC framework (db -> model -> routes -> controller -> view)

* Tested on rails s & rails c

* Implemented UI using HTML, SCSS, aos, Bootstrap following Figma designs

## Installation
To clone the project locally:
```
git clone git@github.com:MathGL92/PROUDLY_AUSSIE.git
cd PROUDLY_AUSSIE/
```
To work on the project you will need Rails and Ruby installed.
You need to run
```bundle install```
and
```yarn install```
You will also need to run 
```
rails db:create
rails db:migrate
rails db:seed
```
You are good to go :tada:

## Contributing
If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are warmly welcome.
1. Fork my repo 
2. Create your feature branch: ```git checkout -b feature/fooBar```
3. Commit your changes: ```git commit -m 'Add some fooBar'```
4. Push to the branch: ```git push origin feature/fooBar```
5. Create a new Pull Request
