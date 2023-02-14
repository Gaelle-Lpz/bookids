class AddParentToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :parent, :boolean, default: false
  end
end
