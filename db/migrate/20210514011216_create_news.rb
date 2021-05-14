class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.text :title
      t.text :subtitle
      t.text :description
      t.text :image
      t.text :link
      t.text :video
      t.integer :location_id

      t.timestamps
    end
  end
end
