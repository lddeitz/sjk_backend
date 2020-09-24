class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :password_digest
      t.text :email
      t.text :artist_name
      t.text :bio
      t.text :city
      t.text :country
      t.text :profile_picture
      t.boolean :is_admin
      t.text :profile_url

      t.timestamps
    end
  end
end
