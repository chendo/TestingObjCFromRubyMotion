describe "CDOSomeClass" do
  before do
    @some_class = CDOSomeClass.new
  end

  describe "#methodWithNoArguments" do
    it "returns foo" do
      @some_class.methodWithNoArguments.should == "foo"
    end
  end

  describe "#methodWithOneArgument" do
    it "returns the first argument" do
      @some_class.methodWithOneArgument("baz").should == "baz"
    end
  end

  describe "#methodWithKeyedArguments" do
    it "returns the first argument concat with the second arg" do
      @some_class.methodWithKeyedArguments("foo", withSecondArgument: "bar").should == "foobar"
    end
  end
end
