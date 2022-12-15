class CreateOfuros < ActiveRecord::Migration[6.1]
  def change
    create_table :ofuros do |t|
      t.string :name, null: false
      t.text :introduction, null: false
      t.string :address, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.references :ward, null: false, foreign_key: true
      t.text :image
      
      t.timestamps
    end
  end
end
