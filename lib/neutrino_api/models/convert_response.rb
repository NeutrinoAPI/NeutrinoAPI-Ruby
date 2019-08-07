# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

module NeutrinoApi
  # ConvertResponse Model.
  class ConvertResponse < BaseModel
    # True if the coversion was successful and produced a valid result
    # @return [Boolean]
    attr_accessor :valid

    # The result of the conversion in string format
    # @return [String]
    attr_accessor :result

    # The value being converted from
    # @return [String]
    attr_accessor :from_value

    # The type being converted to
    # @return [String]
    attr_accessor :to_type

    # The type of the value being converted from
    # @return [String]
    attr_accessor :from_type

    # The result of the conversion as a floating-point number
    # @return [Integer]
    attr_accessor :result_float

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['valid'] = 'valid'
      @_hash['result'] = 'result'
      @_hash['from_value'] = 'fromValue'
      @_hash['to_type'] = 'toType'
      @_hash['from_type'] = 'fromType'
      @_hash['result_float'] = 'resultFloat'
      @_hash
    end

    def initialize(valid = nil,
                   result = nil,
                   from_value = nil,
                   to_type = nil,
                   from_type = nil,
                   result_float = nil)
      @valid = valid
      @result = result
      @from_value = from_value
      @to_type = to_type
      @from_type = from_type
      @result_float = result_float
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      valid = hash['valid']
      result = hash['result']
      from_value = hash['fromValue']
      to_type = hash['toType']
      from_type = hash['fromType']
      result_float = hash['resultFloat']

      # Create object from extracted values.
      ConvertResponse.new(valid,
                          result,
                          from_value,
                          to_type,
                          from_type,
                          result_float)
    end
  end
end
