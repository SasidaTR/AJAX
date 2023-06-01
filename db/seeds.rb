require 'faker'

5.times do
  Email.create(
    object: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(sentence_count: 10)
  )
end
