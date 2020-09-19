class AddTeamIdToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team_id, :integer
    add_column :players, :back_number, :integer
    add_column :players, :age, :integer
    add_column :players, :position, :string
    add_column :players, :heights, :integer
    add_column :players, :url, :text
  end
end
