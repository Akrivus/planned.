class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :phone_number, index: true
      t.string :username, index: true
      t.string :enc_password
      t.string :password_reset_code
      t.boolean :accepts_terms
      t.string :access_token
      t.string :special_word
      t.string :spirit_animal
      t.integer :favorite_color
      t.string :time_zone
      t.string :last_sign_in_ip
      t.string :last_sign_in_device
      t.datetime :last_sign_in_at

      t.timestamps
    end
  end
end
