class Song
    def initialize(title, artist, duration, lyrics)
        @title = title
        @artist = artist
        @duration = duration
        @lyrics = lyrics
    end

    def title
        @title
    end

    def artist
        @artist
    end

    def duration
        @duration
    end

    def lyrics
        @lyrics
    end

    def play
        puts @lyrics
    end

    def friendly_duration
        minutes = @duration / 60
        seconds = @duration % 60
        return minutes + " minutes, " + seconds + " seconds."
end