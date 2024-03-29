class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.boolean :admin, :default => false
      t.string :phone_number

      t.timestamps
    end
  end
end
