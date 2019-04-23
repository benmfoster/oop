class List

    def initialize
        @songs = []
    end

    def add_song(song)
        @songs << song
    end

    def play
        @songs.each do |song|
            Song.play(song)
        end
    end

    def shuffle
        count = 0
        i = rand(0..@songs.length)
        while count < @songs.length
            Song.play(@songs[i])
            i = rand(0..@songs.length)
            count += 1
        end
    end

    def duration
        duration = 0
        @songs.each do |song|
            duration += Song.duration
        end
        duration
    end

end