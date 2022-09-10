# frozen_string_literal: true

class UrlEntry
  class Url
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def self.to_proc
      ->(value) { new(value) }
    end

    def valid?
      URI::DEFAULT_PARSER.make_regexp.match?(value)
    end
  end
end
