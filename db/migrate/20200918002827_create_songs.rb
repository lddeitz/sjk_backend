class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.text :title
      t.text :description
      t.text :keywords
      t.text :url
      t.text :img_url
      t.integer :total_versions
      
      t.timestamps
    end
  end
end
