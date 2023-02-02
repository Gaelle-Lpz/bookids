class CreateUserBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_books do |t|
      t.integer :status
      t.boolean :wish_validate
      t.boolean :read_validate
      t.references :user_id, null: false, foreign_key: true
      t.references :book_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
