unless defined?(REDACTION_WORDS)
    begin
      Rails.logger.info "Loading redaction words from: #{Rails.root.join('config', 'redaction_words.yml')}"
      redaction_config = Rails.application.config_for(:redaction_words)
      REDACTION_WORDS = redaction_config['redact_words'] || []
      Rails.logger.info "Redaction words loaded: #{REDACTION_WORDS}"
    rescue => e
      Rails.logger.error "Error loading redaction words: #{e.message}"
      REDACTION_WORDS = []
    end
  end
  