require 'bookmark'

describe 'Bookmark' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://en.wikipedia.org/wiki/The_Greatest_Showman")
      expect(bookmarks).to include("https://en.wikipedia.org/wiki/United_Kingdom")
    end
end
