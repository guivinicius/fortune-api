require "spec_helper"

describe "Fortune API app" do

  describe "GET /" do

    it "responds successfully" do
      get "/"
      expect(last_response.status).to eq(200)
    end

  end

  describe "GET /fortune" do

    context "as json" do

      before do
        get "/fortune.json"
      end

      it "responds successfully" do
        expect(last_response.status).to eq(200)
      end

      it "responds with a fortune as json" do
        expect(last_response.content_type).to eq("application/json;charset=utf-8")
      end

      it "responds with a fortune" do
        expect(last_response.body).to include("text")
      end

    end

    context "as text" do

      before do
        get "/fortune"
      end

      it "responds successfully" do
        expect(last_response.status).to eq(200)
      end

      it "responds with a fortune as text" do
        expect(last_response.content_type).to eq("text/plain;charset=utf-8")
      end

      it "responds with a fortune" do
        expect(last_response.body).to be_a(String)
      end

    end

  end

end
