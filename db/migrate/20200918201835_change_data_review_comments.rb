class ChangeDataReviewComments < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :review, :float
  end
end
