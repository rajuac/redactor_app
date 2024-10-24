class RedactCreator
    attr_reader :input_text

    def initialize(input_text)
        @input_text = input_text
    end

    def generate
        redact_text
    end



    private

    def redact_text
      redacted_words = REDACTION_WORDS
      text =  input_text
      redacted_words.each do |word|
        text =  text.gsub(/\b#{Regexp.escape(word)}\b/i, "REDACTED")
      end

      text
    end
end
