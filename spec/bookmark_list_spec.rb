require "./lib/bookmark_list"

describe BookmarkList do
  it { is_expected.to respond_to(:view_all) }

  describe "#view_all" do
    it "returns list of bookmarks" do
      expect(subject.view_all).to be_an_instance_of(Array)
    end
  end
end