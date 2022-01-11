require 'pg'

class Bookmark
  def self.all 
    connectdb = PG.connect(dbname: 'bookmark-manager')
    arr = connectdb.exec("SELECT * FROM bookmarks;")
    arr.map { |item| item['url'] }
  end
end
