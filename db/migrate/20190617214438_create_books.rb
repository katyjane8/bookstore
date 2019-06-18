class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string "title" 
      t.string "author"
      t.integer "isbn"
      t.string "image"
      t.string "avg_rating"

      t.timestamps
    end
  end
end
