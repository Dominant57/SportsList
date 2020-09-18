class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :review
      t.string :user
      t.timestamps
    end
  end
end
