class CreateUserFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :user_friendships do |t|
      t.integer :user_id 
      t.integer :friend_id
      t.timestamps null: false
    end

    add_index :user_friendships, [:user_id, :friend_id]
  end
end