class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :excerpt
      t.string :thumbnail
      t.string :link
      t.timestamps :published_date

      t.timestamps null: false
    end
  end
end
