class AddRequiredScoreToRewards < ActiveRecord::Migration[7.0]
  def change
    add_column :rewards, :required_score, :integer
  end
end
