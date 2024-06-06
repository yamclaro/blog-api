class AddUserToArticle < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :User, null: false, foreign_key: true
  end
end
