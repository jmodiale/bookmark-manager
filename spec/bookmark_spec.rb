require 'bookmark'

describe 'Bookmark' do
  it 'returns all bookmarks' do
    connectdb = PG.connect(dbname: 'bookmark-manager-test')
    # Add the test data
    connectdb.exec("INSERT INTO bookmarks (url) VALUES ('https://en.wikipedia.org/wiki/The_Greatest_Showman');")
    connectdb.exec("INSERT INTO bookmarks (url) VALUES('https://en.wikipedia.org/wiki/United_Kingdom');")
    connectdb.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include("https://en.wikipedia.org/wiki/The_Greatest_Showman")
    expect(bookmarks).to include("https://en.wikipedia.org/wiki/United_Kingdom")
  end
end
