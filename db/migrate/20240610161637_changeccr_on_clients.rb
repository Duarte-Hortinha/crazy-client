class ChangeccrOnClients < ActiveRecord::Migration[7.1]
  def change
    change_column_default(:clients, :ccr, from: nil, to: 5.0)
  end
end
