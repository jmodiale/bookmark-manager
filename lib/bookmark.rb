require 'pg'

class Bookmark
  def self.all 
    if ENV['ENVIRONMENT'] == 'test'
      connectdb = PG.connect(dbname: 'bookmark-manager-test')
    else
      connectdb = PG.connect(dbname: 'bookmark-manager')
    end

    arr = connectdb.exec("SELECT * FROM bookmarks;")
    arr.map { |item| item['url'] }
  end
end
