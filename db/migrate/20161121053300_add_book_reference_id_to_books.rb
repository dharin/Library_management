class AddBookReferenceIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_referece_id, :string
  end
end
