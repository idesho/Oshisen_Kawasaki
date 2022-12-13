class CreateOfuroInstitutions < ActiveRecord::Migration[6.1]
  def change
    create_table :ofuro_institutions do |t|
      t.references :institution, null: false, foreign_key: true
      t.references :ofuro, null: false, foreign_key: true
      t.timestamps
    end
  end
end
