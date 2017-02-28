# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "Super Duper Bike", :description => "If you like sundowns, you will love this bike. It always drives you to the nicest sundowns in the world. We have highly customized this bike for you and your purposes. Come visit our store and try this bike.", :image_url => "bike1.jpg", :color => "yellow", :price => 489.99)
Product.create(:name => "Best Bike EU", :description => "Best bike EU! You won't find a nicer, shinier and more beatiful bike in whole europe. Don't miss your chance and buy this bike immediatly.", :image_url => "bike2.jpg", :color => "red", :price => 333.99)
Product.create(:name => "Weird Bike", :description => "Nice bike. Not as good as the other two, but also very nice. Drives left if you turn right and vice versa. Very funny. Let yo friends ride it and enjoy the fun when they turn in the wrong direction!", :image_url => "bike3.jpg", :color => "green", :price => 999)
Product.create(:name => "Lorem Ipsum Bike", :description => "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.", :image_url => "bike1.jpg", :color => "blue", :price => 876.87)