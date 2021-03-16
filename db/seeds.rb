
require "open-uri"
require "faker"

puts 'Cleaning database ...'
Product.destroy_all 
Category.destroy_all 
puts 'Database cleaned!'
puts 'Creating new data base ...'

# ------------Categories-------------------
puts 'Creating categories...'
mugs = Category.create!(title: 'Mugs')
bracelets = Category.create!(title: 'Bracelets')
glasses = Category.create!(title: 'Glasses')
# -----------Products-----------------

# puts 'Creating products...'
# Teddy.create!(sku: 'original-teddy-bear', name: 'Teddy bear', category: kids, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')

# Teddy.create!(sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: geek, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
# Teddy.create!(sku: 'octocat',   name: 'Octocat -  GitHub',      category: geek, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')



bday_mug = Product.create!({
  title: 'Bday mug',
  sku: 'Bday mug',
  price: 8.99,
  description: "Birth day custome made mug, ideal for special ocassions gift.\n
  
  You can chose from many different styles.", 
  images: 'https://images.pexels.com/photos/1207918/pexels-photo-1207918.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: mugs
})
# bday_mug_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773047/bday-mug_lnuz9x.jpg")
# bday_mug.image.attach(io: bday_mug_pic, filename: "bday_mug_pic.jpg", content_type: "image/jpg")
bday_mug.save!


custome_mug = Product.create!({
  title: 'Custome mug with photo',
  sku: 'Custome mug with photo',
  price: 10,
  description: "Print your photo on a coffeee mug\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  images: 'https://images.pexels.com/photos/1755215/pexels-photo-1755215.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: mugs
})
# custome_mug_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# custome_mug.image.attach(io: custome_mug_pic, filename: "custome_mug_pic.jpg", content_type: "image/jpg")
custome_mug.save!

# ---------Glasses------------------
custome_glass = Product.create!({
  title: 'Custome glass with colors',
  sku: 'Custome glass with colors',
  price: 12.90,
  description: "Pichk wine glass in your fav color\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  images: 'https://images.pexels.com/photos/928854/pexels-photo-928854.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: glasses
})
# custome_glass_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# custome_glass.image.attach(io: custome_glass_pic, filename: "custome_glass_pic.jpg", content_type: "image/jpg")
custome_glass.save!

wine_glass = Product.create!({
  title: 'Wine glass with sprinkles lol',
  sku: 'Wine glass with sprinkles lol',
  price: 13.99,
  description: "This is perfect wine glass\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  images: 'https://images.pexels.com/photos/1129482/pexels-photo-1129482.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: glasses
})
# wine_glass_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# wine_glass.image.attach(io: wine_glass_pic, filename: "wine_glass_pic.jpg", content_type: "image/jpg")
wine_glass.save!

# -----------Bracelets---------------------

bracelet = Product.create!({
  title: 'Bracelet',
  sku: 'Bracelet',
  price: 7.99,
  description: "This is custome made bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  images: 'https://images.pexels.com/photos/553236/pexels-photo-553236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: bracelets
})
# bracelet_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# bracelet.image.attach(io: bracelet_pic, filename: "bracelet_pic.jpg", content_type: "image/jpg")
bracelet.save!


name_bracelet = Product.create!({
  title: 'name_bracelet',
  sku: 'name_bracelet',
  price: 10.99,
  description: "This is custome made name_bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  images: 'https://images.pexels.com/photos/234798/pexels-photo-234798.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  category: bracelets
})
# name_bracelet_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# name_bracelet.image.attach(io: name_bracelet_pic, filename: "name_bracelet_pic.jpg", content_type: "image/jpg")
name_bracelet.save!

# ------------------Using Faker-----------------------


# PRODUCTS_COUNT = 100

# MAX_CATEGORIES = 3

# MAX_VARIANTS = 4
# VARIANTS_WEIGHT = 0.53

# CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |title|
#   Category.find_or_create_by!(title: title)
# end

# PRODUCTS_COUNT.times do

#   title = ''

#   # generate unique title
#   loop do
#     title = Faker::Commerce.product_name
#     break unless Product.exists?(title: title)
#   end

#   product = Product.new(
#     title: title,
#     price_cents: rand(2000)
#   )

#   num_categories = 1 + rand(MAX_CATEGORIES)
#   product.categories = CATEGORIES.sample(num_categories)

#   if rand > VARIANTS_WEIGHT
#     num_variants = 1 + rand(MAX_VARIANTS)
#     num_variants.times do
#       product.variants.build(
#         title: rand > VARIANTS_WEIGHT ? Faker::Commerce.color : Faker::Commerce.material,
#         price: Faker::Commerce.price
#       )
#     end
#   end

#   product.save!

#  end
puts "Seeding is finished"