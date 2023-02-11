class AddParentToUserBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :user_books, :parent, :boolean, default: false
  end
end
