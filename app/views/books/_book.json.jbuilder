json.extract! book, :id, :title, :author, :published_by, :student_id, :date_of_issued, :date_of_return, :created_at, :updated_at
json.url book_url(book, format: :json)