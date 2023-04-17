class MusicTracker
  def initialize
    @musiclist = []
  end

  def add_song(song)
    fail "No Music was given" if song.nil? || song.empty?
    @musiclist << song
  end

  def see_the_list
    if @musiclist.length == 1
      music_str = @musiclist.join('')
      return "Music listened to: #{music_str}"
    else
      music_str = @musiclist.join(', ')
      return "Music listened to: #{music_str}"
    end
  end
end