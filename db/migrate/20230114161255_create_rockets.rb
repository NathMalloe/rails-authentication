class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :destination
      t.text :description
      t.integer :price_per_earthday
      t.decimal :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
