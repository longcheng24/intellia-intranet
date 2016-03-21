class AlterArticletable < ActiveRecord::Migration
  def up
    rename_column("articles", "excerpt", "description")
    add_column("articles", "content", :text, :after => "description")
    add_column("articles", "feed_id", :integer)
    add_column("articles", "author", :string)
  end

  def down
    remove_column("articles", "content")
    remove_column("articles", "feed_id")
    remove_column("articles", "author")
    rename_column("articles", "description", "excerpt")
  end
end
