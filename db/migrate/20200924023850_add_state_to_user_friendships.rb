class AddStateToUserFriendships < ActiveRecord::Migration[4.2]
  def change
    add_column :user_friendships, :state, :string, :whiny_transitions => false do end
    add_index :user_friendships, :state
  end
end