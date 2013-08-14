class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :name
      t.string :url
      t.integer :search_id

      t.timestamps
    end
  end
end
