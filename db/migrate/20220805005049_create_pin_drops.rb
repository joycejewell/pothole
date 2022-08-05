class CreatePinDrops < ActiveRecord::Migration[7.0]
  def change
    create_table :pin_drops do |t|
      t.string :name
      t.string :image_url
      t.text :blurb
      t.string :user_id

      t.timestamps
    end
  end
end
