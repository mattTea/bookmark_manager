require "./lib/bookmark_list"

describe BookmarkList do
  it { is_expected.to respond_to(:view_all) }

  describe "#view_all" do
    it "returns an array" do
      expect(subject.view_all).to be_an_instance_of(Array)
    end

    it "returns saved bookmarks" do
      expect(subject.view_all).to eq ["www.google.com", "www.facebook.com"]
    end

  end
end