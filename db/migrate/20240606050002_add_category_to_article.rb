class AddCategoryToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :Category, null: false, foreign_key: true
  end
end
