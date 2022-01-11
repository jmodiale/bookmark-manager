feature 'Index page of bookmarks' do
  scenario 'simple index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager Page"
  end
end

feature 'Viewing bookmarks' do
  scenario 'see list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://en.wikipedia.org/wiki/The_Greatest_Showman"
    expect(page).to have_content "https://en.wikipedia.org/wiki/United_Kingdom"
  end
end
