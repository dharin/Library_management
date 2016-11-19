class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :published_by
      t.integer :student_id
      t.datetime :date_of_issued
      t.datetime :date_of_return

      t.timestamps null: false
    end
  end
end
