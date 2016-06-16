# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

Category.delete_all
Product.delete_all
User.delete_all
ProductsCategory.delete_all

drinks = Category.create(name: "Drinks")
candy = Category.create(name: "Candy")
cookies = Category.create(name: "Cookies")
latin_america = Category.create(name: "Latin America")
scandinavia = Category.create(name: "Scandinavia")
central_europe = Category.create(name: "Central Europe")

alfajores = Product.create(
  name: "Alfajores",
  price: 10.49,
  description: "A traditional confection found in some regions of Spain, the Philippines, and in parts of Latin America.",
  stock: 20,
  image_url: "http://perudelights.com/wp-content/uploads/2012/09/Alfajores-10.jpg"
  )

stroopwafels = Product.create(
  name: "Stroopwafels",
  price: 9.49,
  description: "A stroopwafel is a waffle made from two thin layers of baked dough with a caramel-like syrup filling in the middle",
  stock: 10,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/Stroopwafels_01.jpg"
  )

mazapan = Product.create(
  name: "Mazapan",
  price: 5.99,
  description: "Almond based cookie",
  stock: 99,
  image_url: "http://farm4.static.flickr.com/3189/2740040709_9fb21d08ec.jpg"
  )

jarritos = Product.create(
  name: "Jarritos",
  price: 9.79,
  description: "Delicious hibiscus flavored soft drink.",
  stock: 4,
  image_url: "http://texas-wholesale.com/images/products/760005%20-2920-JARRITOS-JAMAICA-12oz-24ct-.jpg"
  )

pelon_pelo_rico = Product.create(
  name: "Pelon Pelo Rico",
  price: 9.79,
  description: "Delicious tamarind candies",
  stock: 10,
  image_url: "http://cdn1.bigcommerce.com/server2500/k2eyh8/products/151/images/365/Mexican_Candy_Hershey_Pelon_Pelo_Rico_Normal__53689.1365646002.1280.1280.jpg?c=2"
  )

pepperkakor = Product.create(
  name: "Pepperkakor",
  price: 4.99,
  description: "A ginger biscuit, ginger nut or ginger snap is a globally popular biscuit based snack food, flavoured with ginger. Ginger biscuits are flavoured with powdered ginger and a variety of other spices, most commonly cinnamon, molasses and nutmeg",
  stock: 30,
  image_url: "http://mittkok.expressen.se/wp-content/uploads/2014/12/08382c5d-740d-4741-8c3d-d2e96bbf5046-636x424.jpg"
  )

smoelentrekkers = Product.create(
  name: "Smoelen-trekkers",
  price: 2.99,
  description: "Sour & sugary candy",
  stock: 100,
  image_url: "https://elsgoos.files.wordpress.com/2012/10/smoelentrekkers1.jpg"
  )

User.create(
  name:'tom',
  email: 'tom@tom.com',
  password: 'tomtom'
  )

User.create(
  name:'tim',
  email: 'tim@tim.com',
  password: 'timtim',
  admin: true
  )

ProductsCategory.create(
  product_id: alfajores.id,
  category_id: cookies.id
  )

ProductsCategory.create(
  product_id: alfajores.id,
  category_id: latin_america.id
  )

ProductsCategory.create(
  product_id: stroopwafels.id,
  category_id: cookies.id
  )

ProductsCategory.create(
  product_id: stroopwafels.id,
  category_id: scandinavia.id
  )

ProductsCategory.create(
  product_id: mazapan.id,
  category_id: cookies.id
  )

ProductsCategory.create(
  product_id: mazapan.id,
  category_id: latin_america.id
  )

ProductsCategory.create(
  product_id: jarritos.id,
  category_id: drinks.id
  )

ProductsCategory.create(
  product_id: jarritos.id,
  category_id: latin_america.id
  )

ProductsCategory.create(
  product_id: pelon_pelo_rico.id,
  category_id: candy.id
  )

ProductsCategory.create(
  product_id: pelon_pelo_rico.id,
  category_id: latin_america.id
  )

ProductsCategory.create(
  product_id: pepperkakor.id,
  category_id: cookies.id
  )

ProductsCategory.create(
  product_id: pepperkakor.id,
  category_id: scandinavia.id
  )

ProductsCategory.create(
  product_id: smoelentrekkers.id,
  category_id: candy.id
  )

ProductsCategory.create(
  product_id: smoelentrekkers.id,
  category_id: central_europe.id
  )
