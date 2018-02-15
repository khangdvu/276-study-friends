class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password

      t.timestamps null: false
    end
  end
end
