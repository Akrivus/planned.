class CreateInteractions < ActiveRecord::Migration[7.0]
  def change
    create_table :interactions do |t|
      t.references :day, null: false, foreign_key: true
      t.integer :category
      t.integer :feeling_before
      t.integer :feeling_after
      t.string :name
      t.decimal :dosage
      t.integer :dosage_unit
      t.string :note
      t.time :consumed_at

      t.timestamps
    end
  end
end
