class RemoveVeggieFriendlyMenuRatingFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :veggie_friendly_menu_rating, :integer
  end
end
