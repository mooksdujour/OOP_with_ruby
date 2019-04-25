require "spec_helper"
 
describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end
 
    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end
 
    it "returns true for an empty Array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end
 
    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_falsey
    end
 
    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end

  context "#any_empty?" do
    it "returns true if there are no empty elements in the array" do
      expect(["Hi", "", 1, Object.new, :a].any_empty?).to be_truthy
    end

    it "returns true if all elements in the array are empty" do
      expect(["", "", "", Object.new, :a].any_empty?).to be_truthy
    end

    it "returns false if no element in the array is empty" do
      expect([1, "Hello", :t, Object.new].any_empty?).to be_falsey
    end
  end

  context "#none_empty?" do
    it "returns false if any element in the array is empty" do
      expect(["A", "", 1, Object.new, :a].none_empty?).to be_falsey
    end

    it "returns false if all elements in the array is empty" do
      expect(["", "", "", Object.new, :a].none_empty?).to be_falsey
    end

    it "returns true if all elements in the array are not empty" do
      expect(["A", 1, Object.new, :a, 5.0].none_empty?).to be_truthy
    end
  end

end