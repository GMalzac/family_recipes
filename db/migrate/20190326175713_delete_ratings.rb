class DeleteRatings < ActiveRecord::Migration[5.2]
  def change
    drop_table :ratings
    add_column :comments, :rating, :integer
  end
end
