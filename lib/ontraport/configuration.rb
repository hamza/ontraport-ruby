module Ontraport
  # @!group Configuration methods

  # Getter method for the module config.
  # @return [Configuration]
  def self.configuration
    @configuration ||= Configuration.new
  end

  # Used to enable a configuration block in the application the Gem being used by.
  #
  # @example
  #   Ontraport.configure do |config|
  #     config.api_id = 'foo'
  #     config.api_key = 'bar'
  #     if Rails.env.development?
  #       config.debug_mode = true
  #     end
  #   end
  #
  # @return [nil]
  def self.configure
    yield configuration
  end
  # @!endgroup

  # The Gem's configuration
  class Configuration
    attr_accessor :api_id, :api_key, :debug_mode
    def initialize
      @debug_mode ||= false
    end
  end
end