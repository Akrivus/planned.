# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string    :email,              null: false, default: ""
      t.string    :encrypted_password, null: false, default: ""
      t.string    :reset_password_token
      t.datetime  :reset_password_sent_at
      t.datetime  :remember_created_at
      t.boolean   :accepts_terms
      t.integer   :sign_in_count, default: 0, null: false
      t.datetime  :current_sign_in_at
      t.datetime  :last_sign_in_at
      t.string    :current_sign_in_ip
      t.string    :last_sign_in_ip
      t.string    :confirmation_token
      t.datetime  :confirmed_at
      t.datetime  :confirmation_sent_at
      t.string    :unconfirmed_email
      t.string    :access_token
      t.string    :special_word
      t.string    :spirit_animal
      t.integer   :favorite_color
      t.string    :time_zone
      t.timestamps null: false
    end

    add_index :users, [:special_word, :spirit_animal, :favorite_color], unique: true
    add_index :users,  :access_token,         unique: true
    add_index :users,  :email,                unique: true
    add_index :users,  :reset_password_token, unique: true
    add_index :users,  :confirmation_token,   unique: true
  end
end
