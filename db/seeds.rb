
require "open-uri"
require "faker"

puts 'Cleaning database ...'
Product.destroy_all 
Category.destroy_all 
puts 'Database cleaned!'
puts 'Creating new data base ...'

# ------------Categories-------------------
puts 'Creating categories...'
mugs = Category.create!(title: 'Personalised Mugs', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/3_u7umqm.png", description: "Here you can browse and select from our hand crafted mugs wich are great for your special ocassions.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
bracelets = Category.create!(title: 'Custom Bracelets', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/1_ivkwkz.png", description: "Select bracelet witth your custome message or favorite gems colors.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
glasses = Category.create!(title: 'Glitter Glasses', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png", description: "Found out more of our glass and glitter crafts that looks amazing and bring that special emotions every time when on a table.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
key_chain = Category.create!(title: 'Key Chain', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906959/NCC/4_mysffs.png", description: "Found out more of our key chains crafts that looks amazing and bring that special emotions every time when on a table.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
domino = Category.create!(title: 'Art Domino', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906940/NCC/4_wgf3kz.png", description: "Found out more of our art domino crafts that looks amazing and bring that special emotions every time when on a table.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
body_chain = Category.create!(title: 'Body Key Chain', images: "https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906889/NCC/1_gli6xw.png", description: "Found out more of our body key chains crafts that looks amazing and bring that special emotions every time when on a table.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?")
# -----------Products-----------------


test_mug = Product.create!({
  title: 'Bday mug',
  sku: 'Bday mug',
  price: 1, 
  description: "Birth day custome made mug, ideal for special ocassions gift.\n
  
  You can chose from many different styles.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/3_u7umqm.png',
  category: mugs
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png")
# test_mug.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# test_mug.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# test_mug.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
test_mug.save!


bday_mug = Product.create!({
  title: 'Bday mug',
  sku: 'Bday mug',
  price: 8.99, 
  description: "Birth day custome made mug, ideal for special ocassions gift.\n
  
  You can chose from many different styles.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/3_u7umqm.png',
  category: mugs
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png")
# bday_mug.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# bday_mug.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# bday_mug.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
bday_mug.save!


my_mug = Product.create!({
  title: 'My mug',
  sku: 'My mug',
  price: 10.99,
  description: "Birth day custome made mug, ideal for special ocassions gift.\n
  
  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eos nostrum fugiat accusamus nam tempora cumque et eligendi commodi nesciunt sunt?", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/3_u7umqm.png',
  category: mugs
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png")
# my_mug.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# my_mug.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# my_mug.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
my_mug.save!


custome_mug = Product.create!({
  title: 'Custome mug with photo',
  sku: 'Custome mug with photo',
  price: 10,
  description: "Print your photo on a coffeee mug\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/3_u7umqm.png',
  category: mugs
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/1_bggu3t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906859/NCC/2_utpg6n.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906860/NCC/4_qfocd3.png")
# custome_mug.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# custome_mug.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# custome_mug.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
custome_mug.save!

# ---------Glasses------------------
custome_glass = Product.create!({
  title: 'Custome glass with colors',
  sku: 'Custome glass with colors',
  price: 12.90,
  description: "Pichk wine glass in your fav color\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png',
  category: glasses
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png")
# custome_glass.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# custome_glass.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# custome_glass.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
custome_glass.save!


craft_glass = Product.create!({
  title: 'Custome glass with colors',
  sku: 'Custome glass with colors',
  price: 16.90,
  description: "Pichk wine glass in your fav color\n
  
  Pic you favourite pic and we gonna print it on a mug.
  Pic you favourite pic and we gonna print it on a mug.
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png',
  category: glasses
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png")
# craft_glass.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# craft_glass.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# craft_glass.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
craft_glass.save!

wine_glass = Product.create!({
  title: 'Wine glass with sprinkles lol',
  sku: 'Wine glass with sprinkles lol',
  price: 13.99,
  description: "This is perfect wine glass\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png',
  category: glasses
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906984/NCC/1_afgf7t.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906983/NCC/2_ewctko.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906982/NCC/3_pdyg4n.png")
# wine_glass.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# wine_glass.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# wine_glass.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
wine_glass.save!

# -----------Bracelets---------------------

bracelet = Product.create!({
  title: 'Bracelet',
  sku: 'Bracelet',
  price: 7.99,
  description: "This is custome made bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906918/NCC/3_gb1wd3.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906917/NCC/2_xm6bsa.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906919/NCC/4_hvctf6.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/1_ivkwkz.png',
  category: bracelets
})
# pic_1 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906918/NCC/3_gb1wd3.png")
# pic_2 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906917/NCC/2_xm6bsa.png")
# pic_3 = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/5_fesq26.png")
# bracelet.images.attach(io: pic_1, filename: "pic_1.jpg", content_type: "image/png")
# bracelet.images.attach(io: pic_2, filename: "pic_2.jpg", content_type: "image/png")
# bracelet.images.attach(io: pic_3, filename: "pic_3.jpg", content_type: "image/png")
bracelet.save!


name_bracelet = Product.create!({
  title: 'name_bracelet',
  sku: 'name_bracelet',
  price: 10.99,
  description: "This is custome made name_bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug.", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906918/NCC/3_gb1wd3.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906917/NCC/2_xm6bsa.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906919/NCC/4_hvctf6.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/1_ivkwkz.png',
  category: bracelets
})
# name_bracelet_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# name_bracelet.image.attach(io: name_bracelet_pic, filename: "name_bracelet_pic.jpg", content_type: "image/jpg")
name_bracelet.save!


african_bracelet = Product.create!({
  title: 'african_bracelet',
  sku: 'african_bracelet',
  price: 8.99,
  description: "This is custome made african_bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug. Some traditional african style and colors bracelet. Looking amazing!", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906918/NCC/3_gb1wd3.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906917/NCC/2_xm6bsa.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906919/NCC/4_hvctf6.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/1_ivkwkz.png',
  category: bracelets
})
# african_bracelet_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# african_bracelet.image.attach(io: african_bracelet_pic, filename: "african_bracelet_pic.jpg", content_type: "image/jpg")
african_bracelet.save!


love_bracelet = Product.create!({
  title: 'love_bracelet',
  sku: 'love_bracelet',
  price: 9.99,
  description: "This is custome made love_bracelet\n
  
  Pic you favourite pic and we gonna print it on a mug. Some veru very nice LOOOVEEE bracelet for coupleees", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906918/NCC/3_gb1wd3.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906917/NCC/2_xm6bsa.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906919/NCC/4_hvctf6.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906916/NCC/1_ivkwkz.png',
  category: bracelets
})
# love_bracelet_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# love_bracelet.image.attach(io: love_bracelet_pic, filename: "love_bracelet_pic.jpg", content_type: "image/jpg")
love_bracelet.save!


# --------------- Domino ---------------------

domino = Product.create!({
  title: 'Art Domino',
  sku: 'domino',
  price: 9.99,
  description: "This is custome made domino\n
  
  Pic you favourite pic and we gonna print it on a mug. Some veru very nice LOOOVEEE bracelet for coupleees", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906940/NCC/4_wgf3kz.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906936/NCC/2_rmhez9.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906941/NCC/3_w9cowo.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906942/NCC/1_rdthap.png',
  category: domino
})
# domino_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# domino.image.attach(io: domino_pic, filename: "domino_pic.jpg", content_type: "image/jpg")
domino.save!

# -------------- Key Chain ------------------------

key_chain = Product.create!({
  title: 'Custom Key Chain',
  sku: 'key_chain',
  price: 9.99,
  description: "This is custome made key_chain\n
  
  Pic you favourite pic and we gonna print it on a mug. Some veru very nice LOOOVEEE bracelet for coupleees", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906962/NCC/2_rwhrak.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906959/NCC/4_mysffs.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906962/NCC/3_y7mgtr.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906963/NCC/1_g2geky.png',
  category: key_chain
})
# key_chain_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# key_chain.image.attach(io: key_chain_pic, filename: "key_chain_pic.jpg", content_type: "image/jpg")
key_chain.save!

# ---------------- Body Key Chain ---------------------------

body_chain = Product.create!({
  title: 'Custom Key Chain',
  sku: 'Body Key Chain',
  price: 9.99,
  description: "This is custome made body_chain\n
  
  Pic you favourite pic and we gonna print it on a mug. Some veru very nice LOOOVEEE bracelet for coupleees", 
  photo_1: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906889/NCC/1_gli6xw.png',
  photo_2: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906895/NCC/7_wluvhc.png',
  photo_3: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906890/NCC/5_uoslei.png',
  photo_4: 'https://res.cloudinary.com/dxoo6hrvw/image/upload/v1627906891/NCC/4_mq2567.png',
  category: body_chain
})
# body_chain_pic = URI.open("https://res.cloudinary.com/dxoo6hrvw/image/upload/v1606773048/mugs_zur7kg.jpg")
# body_chain.image.attach(io: body_chain_pic, filename: "body_chain_pic.jpg", content_type: "image/jpg")
body_chain.save!

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