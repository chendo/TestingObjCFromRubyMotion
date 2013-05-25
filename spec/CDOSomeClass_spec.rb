describe "CDOSomeClass" do
  before do
    @some_class = CDOSomeClass.new
  end

  describe "#methodWithNoArguments" do
    it "returns foo" do
      @some_class.methodWithNoArguments.should == "foo"
    end
  end
end
