class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string :image
      t.string :isbn
      t.integer :score

      t.timestamps
    end
  end
end
