require "spec_helper"

describe "Fortune API app" do

  describe "GET /" do

    it "responds successfully" do
      get "/"
      expect(last_response.status).to eq(200)
    end

  end

  describe "GET /fortune" do

    context "with no params" do

      it "responds successfully" do
        get "/fortune"
        expect(last_response.status).to eq(200)
      end

      it "responds with a fortune as json" do
        get "/fortune.json"
        expect(last_response.content_type).to eq("application/json;charset=utf-8")
      end

      it "responds with a fortune as text" do
        get "/fortune"
        expect(last_response.content_type).to eq("text/plain;charset=utf-8")
      end

    end

  end

end
