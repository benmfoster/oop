require_relative "list"
require_relative "song"

# Create list
list = List.new

# Create songs and add them to the list
list.add_song(Song.new())
list.add_song(Song.new())
list.add_song(Song.new())