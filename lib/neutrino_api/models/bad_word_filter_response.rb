# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # BadWordFilterResponse Model.
  class BadWordFilterResponse < BaseModel
    # An array of the bad words found
    # @return [List of String]
    attr_accessor :bad_words_list

    # Total number of bad words detected
    # @return [Integer]
    attr_accessor :bad_words_total

    # The censored content (only set if censor-character has been set)
    # @return [String]
    attr_accessor :censored_content

    # Does the text contain bad words
    # @return [Boolean]
    attr_accessor :is_bad

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bad_words_list'] = 'badWordsList'
      @_hash['bad_words_total'] = 'badWordsTotal'
      @_hash['censored_content'] = 'censoredContent'
      @_hash['is_bad'] = 'isBad'
      @_hash
    end

    def initialize(bad_words_list = nil,
                   bad_words_total = nil,
                   censored_content = nil,
                   is_bad = nil)
      @bad_words_list = bad_words_list
      @bad_words_total = bad_words_total
      @censored_content = censored_content
      @is_bad = is_bad
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bad_words_list = hash['badWordsList']
      bad_words_total = hash['badWordsTotal']
      censored_content = hash['censoredContent']
      is_bad = hash['isBad']

      # Create object from extracted values.
      BadWordFilterResponse.new(bad_words_list,
                                bad_words_total,
                                censored_content,
                                is_bad)
    end
  end
end
