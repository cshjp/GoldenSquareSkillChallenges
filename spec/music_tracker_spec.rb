require "music_tracker"

describe MusicTracker do
  context "when given a song" do
    it "adds song to the array, then returns song" do
      music = MusicTracker.new
      music.add_song("track")
      result = music.see_the_list
      expect(result).to eq "Music listened to: track"
    end

    it "adds songs to the array, then returns multiple songs" do
      music = MusicTracker.new
      music.add_song("track")
      music.add_song("track")
      music.add_song("track")
      result = music.see_the_list
      expect(result).to eq "Music listened to: track, track, track"
    end
  end

  context "when given not a string" do
    it "fails if given empty string" do
      music = MusicTracker.new
      expect{music.add_song('')}.to raise_error "No Music was given"
    end

    it "fails if given nil" do
      music = MusicTracker.new
      expect{ music.add_song(nil)}.to raise_error "No Music was given"
    end
  end
end