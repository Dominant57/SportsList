class Removelikesfromcomments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :likes, :integer
    remove_column :comments, :bads, :integer
  end
end
