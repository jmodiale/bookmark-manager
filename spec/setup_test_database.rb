require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark-manager-test')

# this clears the bookmarks table
connection.exec("TRUNCATE bookmarks;")
