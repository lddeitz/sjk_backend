class CreateUserRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relationships do |t|
      t.integer :requester
      t.integer :recipient
      t.text :type

      t.timestamps
    end
  end
end
