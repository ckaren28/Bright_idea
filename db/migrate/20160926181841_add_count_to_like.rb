class AddCountToLike < ActiveRecord::Migration
  def change
    add_column :likes, :likes_counter, :integer
  end
end
