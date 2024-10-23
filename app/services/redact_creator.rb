class RedactCreator
    attr_reader :params

    def initialize(params)
        @params = params
    end

    def generate
        redact_text
    end



    private

    def redact_text
      text = params
      redacted_words = REDACTION_WORDS

      redacted_words.each do |word|
        text = text.gsub(/\b#{Regexp.escape(word)}\b/i, "REDACTED")
      end

      text
    end
end
