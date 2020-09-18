class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :artist_name
      t.text :bio
      t.string :city
      t.string :country
      t.string :profile_picture
      t.boolean :is_admin
      t.string :profile_url

      t.timestamps
    end
  end
end
