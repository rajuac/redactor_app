RedactionLogger = Logger.new(Rails.root.join('log', 'redaction.log'))

RedactionLogger.level = Logger::INFO
RedactionLogger.formatter = proc do |severity, datetime, progname, msg|
  "#{datetime.strftime('%Y-%m-%d %H:%M:%S')} - #{severity}: #{msg}\n"
end
