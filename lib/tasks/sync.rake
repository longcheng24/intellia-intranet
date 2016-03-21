namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |entry|
        local_entry = feed.articles.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(description: entry.summary, content: entry.content, author: entry.author, link: entry.url, published_date: entry.published)
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end
