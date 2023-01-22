class AddAdressToRockets < ActiveRecord::Migration[7.0]
  def change
    add_column :rockets, :address, :string
  end
end
