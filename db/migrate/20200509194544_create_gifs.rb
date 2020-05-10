class CreateGifs < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
