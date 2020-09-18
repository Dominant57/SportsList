class AddPlayerName < ActiveRecord::Migration[6.0]
  def change
    add_column :Comments, :player, :string
  end
end
