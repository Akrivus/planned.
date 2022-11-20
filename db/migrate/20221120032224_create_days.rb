class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :general_feeling
      t.integer :general_pain_level
      t.integer :general_pain_area
      t.integer :general_symptoms
      t.integer :discharge_color
      t.integer :discharge_flow
      t.integer :discharge_texture
      t.integer :discharge_odor
      t.string :note
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end
