class AddDefaultValueToTotalScore < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :total_score, :integer, default: 0
  end
end
