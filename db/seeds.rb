require 'faker'

# 50.times do
#   new_restaurant = Restaurant.new(name: Faker::FunnyName.three_word_name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
#   puts new_restaurant.valid?
#   new_restaurant.save!
#   puts Restaurant.last
# end

300.times do
  new_review = Review.new(content: Faker::Lorem.paragraph(sentence_count: 24), rating: rand(0..5), restaurant_id: Restaurant.all.sample.id)
  puts new_review.valid?
  new_review.save!
  puts Review.last
end

puts 'done seeding'
