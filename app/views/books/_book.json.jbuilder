json.extract! book, :id, :title, :pages, :publishing_company, :writer, :image_url, :summary, :created_at, :updated_at
json.url book_url(book, format: :json)
