class RedactController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [ :get_redaction ]

    def get_service
      render plain: "Redaction Service", status: :ok
    end

    def get_redaction
      input_text =  request.body.read
      log_redaction_request(input_text)

      redacted_text = RedactCreator.new(input_text).generate
      render plain: redacted_text
    end

    private

    def log_redaction_request(original_text)
      timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      RedactionLogger.info("Timestamp: #{timestamp}, Original Request: #{original_text}")
    end
end
