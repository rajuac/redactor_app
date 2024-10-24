require 'rails_helper'

RSpec.describe "Redact API", type: :request do
  describe "GET /redact" do
    it "returns the redaction service status" do
      get "/redact"
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq("Redaction Service")
    end
  end

  describe "POST /get_redaction" do
    let(:input_text) { "A dog, a cat, and a snake are friends." }
    let(:redacted_text) { "A REDACTED, a REDACTED, and a REDACTED are friends." }

    before do
      allow_any_instance_of(RedactCreator).to receive(:generate).and_return(redacted_text)
    end

    it "returns the redacted text" do
      post "/redact", params: input_text
      expect(response).to have_http_status(:ok)
      expect(response.body).to eq(redacted_text)
    end


  end
end
