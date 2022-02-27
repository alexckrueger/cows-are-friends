class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :business_id
      t.integer :overall_rating
      t.integer :veggie_options_rating
      t.integer :veggie_friendly_menu_rating
      t.text :recommended_dishes
      t.text :comment
      t.string :image_url

      t.timestamps
    end
  end
end
