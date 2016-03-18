class ChangeColumnDateToPublishedAtInArticles < ActiveRecord::Migration
  def change
  	rename_column :articles, :date, :published_date
  end
end
