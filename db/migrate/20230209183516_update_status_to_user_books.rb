class UpdateStatusToUserBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :user_books, :status, :integer, default: 0
  end
end
