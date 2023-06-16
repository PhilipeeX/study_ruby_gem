# frozen_string_literal: true

require_relative "study_ruby/version"

module StudyRuby
  class Error < StandardError; end
    def teste_primeira_gem
      "teste"
    end
end

class String
  include StudyRuby
end
