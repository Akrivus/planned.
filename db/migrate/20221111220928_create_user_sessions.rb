class CreateUserSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_sessions do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.string :session_secret, index: true
      t.string :sign_in_ip
      t.string :sign_in_device
      t.datetime :expires_at

      t.timestamps
    end
  end
end
