class RemoveParentFromUserBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_books, :parent
  end
end
