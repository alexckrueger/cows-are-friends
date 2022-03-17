class AddMenuRatingsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :menu_vegetarian_labels, :integer
    add_column :reviews, :menu_vegan_labels, :integer
    add_column :reviews, :menu_gluten_free_labels, :integer
  end
end
