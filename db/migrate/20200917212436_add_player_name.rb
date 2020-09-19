class AddPlayerName < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :player, :string
  end
end
