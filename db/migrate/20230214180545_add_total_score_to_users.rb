class AddTotalScoreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :total_score, :integer
  end
end
