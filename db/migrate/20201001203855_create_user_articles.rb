class CreateUserArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_articles do |t|
      t.string :url
      t.string :abstract
      t.string :byline
      t.string :title
      t.string :multimedia
      t.references :user_id

      t.timestamps
    end
  end
end
