# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#     User.create(
#       name: Faker::Name.name,
#       budget: Faker::Commerce.price(range = 100..1000),
#     )
#   end
  
  # 10.times do
  #   Resort.create(
  #     name: Faker::Company.name,
  #     city: Faker::Address.city,
  #     price_range: Faker::FunnyName.name,
  #     images: Faker::FunnyName.name,
  #     owner_id:Faker::Number.between(1,5),
  #     rating: Faker::Number.between(1,5),
  #   )
  # end

  # 10.times do
  #   Reservation.create(
  #     length: Faker::Number.between(1,10),
  #     party_size: Faker::Number.between(1,3),
  #     user_id:Faker::Number.between(1,5),
  #     resort_id:Faker::Number.between(1,10)
  #   )
  # end


Resort.create(name: "Aman Resort", city: "Tokyo", price_range: "high", rating: 5.0)
Resort.create(name: "Fairmont The Palm", city: "Dubai", price_range: "medium", rating: 4.0)
Resort.create(name: "Santorini Secret Suites & Spa", city: "Greek", price_range: "medium", rating: 3.0)
Resort.create(name: "HOTEL VIC on the Harbour", city: "Hong Kong", price_range: "high", rating: 3.0)
Resort.create(name: "The PuLi Hotel and Spa", city: "Shanghai", price_range: "high", rating: 4.0)
Resort.create(name: "RAFFLES MALDIVES MERADHOO", city: "Maldives", price_range: "low", rating: 3.0)
Resort.create(name: "Haritha villas", city: "Paris", price_range: "high", rating: 5.0)
Resort.create(name: "RAFFLES SHANGHAI", city: "Shanghai", price_range: "medium", rating: 4.0)
Resort.create(name: "Rosewood", city: "Shanghai", price_range: "low", rating: 2.0)
Resort.create(name: "MASON PATTAYA", city: "Thailand", price_range: "low", rating: 4.0)

Activity.create(name: "Spa Day" , length: '6' , price: '200' , rating: '4.3')
Activity.create(name: "Scuba Diving" , length: '4' , price: '150' , rating: '5.0')
Activity.create(name: "Zumba Class" , length: '1' , price: '25' , rating: '3.4')
Activity.create(name: "Salsa Dancing" , length: '1' , price: '40' , rating: '3.2')
Activity.create(name: "Cooking Class" , length: '3' , price: '105' , rating: '4.0')
Activity.create(name: "Wine Tasting" , length: '3' , price: '90' , rating: '3.8')
Activity.create(name: "Brewery Tour" , length: '2' , price: '60' , rating: '2.3')
Activity.create(name: "Horseback Riding" , length: '3' , price: '135' , rating: '4.8')

Reservation.create(length: 5, party_size: 2, user_id: 1, resort_id: 1)
Reservation.create(length: 3, party_size: 2, user_id: 1, resort_id: 2)

10.times do
  ResortActivity.create(
    activity_id: Faker::Number.between(1,9),
    resort_id: Faker::Number.between(1,11)
  )
end