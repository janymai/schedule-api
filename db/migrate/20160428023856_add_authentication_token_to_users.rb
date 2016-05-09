class AddAuthenticationTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :auth_token, :string, default: ""
    # there are no users with the same token, at a database level
    add_index :users, :auth_token, unique: true
  end
end
