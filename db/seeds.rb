# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "faker"

puts 'Cleaning database'
# Category.destroy_all
# Product.destroy_all   
# GeneralPaediatric.destroy_all
# RespiratoryPaediatric.destroy_all
puts 'Database cleaned.'
puts 'Creating new data base.'

# ---------Categories---------------------
# categories = Category.create([{ title: 'Mugs' }, { title: 'Bracelets' }, { title: 'Glasses' }, { title: 'T-shirts' }])


# -----------Products-----------------
# bday_mug = Product.create({
#   title: 'Bday mug',
#   price: 8.99,
#   description: "Birth day custome made mug, ideal for special ocassions gift.\n
  
#   You can chose from many different styles.", 
#   # img: 'https://images.pexels.com/photos/1239403/pexels-photo-1239403.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
#   # category: categories.first
# })
# bday_mug_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773047/bday-mug_lnuz9x.jpg")
# bday_mug.image.attach(io: bday_mug_pic, filename: "bday_mug_pic.jpg", content_type: "image/jpg")
# bday_mug.save!

# --------------------------------------------

# custome_mug = Product.create({
#   title: 'Custome mug with photo',
#   price: 10,
#   description: "Print your photo on a coffeee mug\n
  
#   Pic you favourite pic and we gonna print it on a mug.", 
#   # img: 'https://images.pexels.com/photos/1239403/pexels-photo-1239403.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
#   # category: mugs.first
# })
# custome_mug_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# custome_mug.image.attach(io: custome_mug_pic, filename: "custome_mug_pic.jpg", content_type: "image/jpg")
# custome_mug.save!

# ------------------Using Faker-----------------------
PRODUCTS_COUNT = 100

MAX_CATEGORIES = 3

MAX_VARIANTS = 4
VARIANTS_WEIGHT = 0.53

CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |title|
  Category.find_or_create_by!(title: title)
end

PRODUCTS_COUNT.times do

  title = ''

  # generate unique title
  loop do
    title = Faker::Commerce.product_name
    break unless Product.exists?(title: title)
  end

  product = Product.new(
    title: title,
    price: Faker::Commerce.price
  )

  num_categories = 1 + rand(MAX_CATEGORIES)
  product.categories = CATEGORIES.sample(num_categories)

  if rand > VARIANTS_WEIGHT
    num_variants = 1 + rand(MAX_VARIANTS)
    num_variants.times do
      product.variants.build(
        title: rand > VARIANTS_WEIGHT ? Faker::Commerce.color : Faker::Commerce.material,
        price: Faker::Commerce.price
      )
    end
  end

  product.save!

 end
puts "Seeding is finished"