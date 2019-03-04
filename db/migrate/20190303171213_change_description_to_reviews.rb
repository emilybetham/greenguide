class ChangeDescriptionToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :description, :comment
  end
end
