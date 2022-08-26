# Add a console message so we can see output when the seed file runs

puts  "Seeding the games table"  #display to show that seeding is  happening.

50.times do #repeat creation 50 times
    Game.create( # we are using the create ORM method to create values in the games table.
    title: Faker::Game.title, #were generating these values from the game domain of the faker game.
    genre: Faker::Game.genre,#remember the commas since these are arguments to a method
    platform: Faker::Game.platform,
    price: rand(0..60) #a random number between 0 and 60 non  inclusive
    )
end

  #because we cannot keep seeding manually like thus, we use the above code from Faker gem to generate records depending on the domain
#Game.create(title: "Breath of the wild",platform:"switch",genre:"Action-adventure",price:60)
#Game.create(title: "Final Fantasy VII", platform: "Playstation", genre: "RPG", price: 60)
#Game.create(title: "Mario Kart", platform: "Switch", genre: "Racing", price: 60) 


puts "The database has been SEEDED with data."   #will help show that seeding is done since it will print when done




##########EXPLANATION######
#Normally seed data is not hard coded as such
#This file will be run using the sinatra rake commanf== bundle exec rake db:seed
#all  rake tasks beginnig like this 'rake something:something' show that a group of rake tasks have been grouped according to where they are applied
#The data seeded can be checked for presence using the Active record Orm crud methods


#Faker Gem is used to generate realitic random data by use of its inbuilt random data generators.The generated data depends on the choosen domain i.e
#the if name-rnandom names are generated, if food- random foods, etc.