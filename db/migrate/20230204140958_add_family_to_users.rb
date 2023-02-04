class AddFamilyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :family_id, :integer
  end
end
