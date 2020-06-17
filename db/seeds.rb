# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
ActionPost.destroy_all


10.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "password", email: "jim@dundermifflin.com", user_name: Faker::Twitter.screen_name, img_url: "https://s-i.huffpost.com/gen/2028878/images/n-UPROXX-628x314.jpg")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "password",  email: "michael@dundermifflin.com", user_name: Faker::Twitter.screen_name, img_url: "https://i2.wp.com/mtncatholic.com/wp-content/uploads/2016/10/6357600113572837231773916132_michael-scott-s-top-tantrums.png?fit=500%2C359")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "password",  email: "dwight@dundermifflin.com", user_name: Faker::Twitter.screen_name, img_url: "https://typeset-beta.imgix.net/rehost/2016/10/31/dfe8a990-943e-44fc-a613-f6a3c7aaedff.jpg?w=970&h=582&fit=crop&crop=faces&auto=format&q=70")
end

Category.create(name: 'Food & Drink', tag: '#get_fed')
Category.create(name: 'Causes & Issues', tag: '#get_involced')
Category.create(name: 'Health & Wellness', tag: '#get_healthy')



ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=1', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=2', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=3', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=4', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=5', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=6', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=7', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=8', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=12', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=11', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=13', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=14', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=15', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=16', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=17', user_id: User.all.sample.id)
ActionPost.create(title: Faker::Books::CultureSeries.culture_ship, content: Faker::Hipster.paragraph(sentence_count: 8), location: 'nyc', category_id: Category.all.sample.id, img_url: 'https://picsum.photos/200/300?random=18', user_id: User.all.sample.id)
