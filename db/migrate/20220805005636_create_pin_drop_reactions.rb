class CreatePinDropReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :pin_drop_reactions do |t|
      t.string :name
      t.string :image_url
      t.string :pin_drop_id

      t.timestamps
    end
  end
end
