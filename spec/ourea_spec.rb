require_relative "../lib/ourea"

describe Ourea do
  it "should separate actions from a query" do
    query = "Show me the 5 latest things"
    Ourea.new(query).actions.should == ["show"]
  end
end
