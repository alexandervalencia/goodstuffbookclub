json.extract! book, :id, :author, :title, :subtitle, :added_by_id, :created_at, :updated_at
json.url book_url(book, format: :json)
