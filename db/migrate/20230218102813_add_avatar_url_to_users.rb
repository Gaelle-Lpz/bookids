class AddAvatarUrlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar_url, :string, default: "https://res.cloudinary.com/dotwftnzf/image/upload/v1675797319/no_avatar_fxdnx3.png"
  end
end
