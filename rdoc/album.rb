# An album class that stores an array of songs
class Album
  included Enumerable
  # An array object of songs. Each song is a string.
  attr_reader :songs

  # Creates an Album instance an empty object.
  def initialize
    @songs =[]
  end
  #Add a song to the Album (the array)
  def add_song(song)
    @songs << songs
  end
  #Iterates over all the songs in the album.
  def each
    songs.each do |s|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song('Thriller')
thriller.add_song('Billie Jean')
puts thriller.songs