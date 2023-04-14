require "diary_entry"

describe DiaryEntry do
  context "given a title and contents" do
    it "returns title and contents" do
      diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
      expect(diary.title).to eq "Day One at Makers"
      expect(diary.contents).to eq "I met my cohort"
    end
    it "returns the counted words within contents" do
      diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
      expect(diary.count_words).to eq 4
    end
  end
  describe "#reading_time" do
    it "calculates how long to read the contents based on the wpm given" do
      diary = DiaryEntry.new("Day One at Makers", ("I met my cohort " * 100))
      expect(diary.reading_time(100)).to eq 4
    end
    it "fails if given zero" do
      diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
      expect{diary.reading_time(0)}.to raise_error "wpm must be above zero"
    end
  end
  describe "#reading_chunk" do
    context "given wpm and minutes" do
      it "returns the contents that the user can read in the given number of minutes" do
        diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
        expect(diary.reading_chunk(200, 1)).to eq ("I met my cohort")
      end
      it "returns the second section after being called again" do
        diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
        diary.reading_chunk(2, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "my cohort"
      end
      it "starts again when called after finishing chunk" do
        diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "I met"
      end
      it "starts again when called after over finishing chunk" do
        diary = DiaryEntry.new("Day One at Makers", "I met my cohort")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(3, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "I met"
      end
    end
  end
end
      