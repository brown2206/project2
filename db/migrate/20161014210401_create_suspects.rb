class CreateSuspects < ActiveRecord::Migration[5.0]
  def change
    create_table :suspects do |t|
      t.timestamps
      t.string :img_url
      t.string :race
      t.string :gender
      t.string :height
      t.integer :weight
      t.string :hair
      t.text :clothing
      t.text :weapons
      t.string :vehicle
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.string :license
      t.string :state
      t.text :description
      t.references :tip, null: false, index:true, foreign_key: true
    end
  end
end
