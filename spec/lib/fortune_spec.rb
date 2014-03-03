require "spec_helper"

describe Fortune do

  describe "#text" do

    context "the length of a fortune" do
      context "when param long is nil" do

        it "returns a fortune" do
          expect(Fortune.new.text).to be_a(String)
        end

      end

      context "when param long is 0" do

        it "returns a shorter fortune" do
          expect(Fortune.new(0).text.size).to be <= 160
        end

      end

      context "when param long is 1" do

        it "returns a longer fortune" do
          expect(Fortune.new(1).text.size).to be > 160
        end

      end
    end

    context "the offensiveness of a fortune" do

      context "when param dirty is nil" do

        it "returns non offensive one" do
          expect(Fortune.new(1).options).not_to include("-o")
        end

      end

      context "when param dirty is 0" do

        it "returns non offensive one" do
          expect(Fortune.new(1, 0).options).not_to include("-o")
        end

      end

      context "when param dirty is 1" do

        it "returns a offensive one" do
          expect(Fortune.new(1, 1).options).to include("-o")
        end

      end

    end

  end

end
