# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Category.destroy_all
# ActionPost.destroy_all

# User.create(first_name: "Jim", last_name: "Halpert", email: "jim@dundermifflin.com", user_name: 'big_tuna', img_url: "https://s-i.huffpost.com/gen/2028878/images/n-UPROXX-628x314.jpg")
# User.create(first_name: "Michael", last_name: "Scott", email: "michael@dundermifflin.com", user_name: 'prison_mike', img_url: "https://i2.wp.com/mtncatholic.com/wp-content/uploads/2016/10/6357600113572837231773916132_michael-scott-s-top-tantrums.png?fit=500%2C359")
# User.create(first_name: "Dwight", last_name: "Schrute", email: "dwight@dundermifflin.com", user_name: 'assistant_regional_manager', img_url: "https://typeset-beta.imgix.net/rehost/2016/10/31/dfe8a990-943e-44fc-a613-f6a3c7aaedff.jpg?w=970&h=582&fit=crop&crop=faces&auto=format&q=70")

Category.create(name: 'Food', tag: '#food')
Category.create(name: 'Causes', tag: '#causes')
Category.create(name: 'Health', tag: '#health')

ActionPost.create(title: "Best Steak in NYC", content: "sfkjwelfhdslfs;fkjalsfhwekh", location: 'nyc', category_id: 1, img_url: 'https://cdn.vox-cdn.com/thumbor/GUObzu8Gwb3cYiZb7OPj9h_IKV0=/0x0:1020x680/1370x1028/filters:focal(429x259:591x421):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62411665/frankie_and_johnnies.76.jpg', user_id: 1)
ActionPost.create(title: "Picnic Spot in Central Park", content: "sfkjwelfhdslfs;fkjalsfhwekh", location: 'nyc', category_id: 3, img_url: 'https://media.timeout.com/images/103857651/1372/772/image.jpg', user_id: 1)
ActionPost.create(title: "New Food Truck", content: "sfkjwelfhdslfs;fkjalsfhwekh", location: 'nyc', category_id: 1, img_url: 'https://rh-vendoradmin.s3.amazonaws.com/trucks/original/5194/51e74ba3-127c-40ae-a081-7b0d46204482.jpg', user_id: 2)
ActionPost.create(title: "Black Lives Matterd Petition", content: "sfkjwelfhdslfs;fkjalsfhwekh", location: 'nyc', category_id: 2, img_url: 'https://blacklivesmatter.com/wp-content/uploads/2020/03/blm-crisis-response-1200x1200-01.jpg', user_id: 3)
ActionPost.create(title: "Mindfullness", content: "sfkjwelfhdslfs;fkjalsfhwekh", location: 'nyc', category_id: 3, img_url: 'https://i.pinimg.com/originals/60/16/dd/6016dda5a02fc9d1900bc14158676f6e.jpg', user_id: 3)
