require "faker"

if Rails.env.development?
  25.times do
    Book.create(
      author: Faker::Book.author,
      title: Faker::Book.title
    )
  end
end
