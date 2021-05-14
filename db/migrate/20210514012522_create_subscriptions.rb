class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.text :email
      t.text :category
      t.boolean :unsubscribe, :default => false
      t.timestamps
    end
  end
end
