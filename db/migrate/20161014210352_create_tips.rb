class CreateTips < ActiveRecord::Migration[5.0]
  def change
    create_table :tips do |t|
      t.timestamps
      t.string :offense, null: false
      t.string :location, null: false
      t.string :img_url
    end
  end
end
