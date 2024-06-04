class AddFieldsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :ccr_acceptance, :float
    add_column :restaurants, :capacity, :integer
  end
end
