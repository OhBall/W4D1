class EnforceUsernameStuff < ActiveRecord::Migration[5.1]
  def change
    drop_table :users

    create_table :users do |t|
      t.string :username, null: false
    end

    add_index :users, :username, unique: true
  end
end
