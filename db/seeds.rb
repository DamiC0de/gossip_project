# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

# Création de 10 villes
10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

# Création de 10 utilisateurs
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.email,
    age: rand(18..99),
    city: City.all.sample
  )
end

# Création de 20 gossips
20.times do
  Gossip.create(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.paragraph,
    user: User.all.sample
  )
end

# Création de 10 tags
10.times do
  Tag.create(title: "##{Faker::Lorem.word}")
end

# Attribution d'au moins un tag pour chaque gossip
Gossip.all.each do |gossip|
  GossipTag.create(gossip: gossip, tag: Tag.all.sample)
end

# Création de quelques messages privés
10.times do
  PrivateMessage.create(
    content: Faker::Lorem.paragraph,
    sender: User.all.sample,
    recipient: User.all.sample
  )
end

# Création de 20 commentaires
20.times do
  Comment.create(
    content: Faker::Lorem.sentence,
    user: User.all.sample,
    gossip: Gossip.all.sample
  )
end

# Création de 20 likes
20.times do
  likeable = [Gossip, Comment].sample.all.sample
  Like.create(user: User.all.sample, likeable: likeable)
end
