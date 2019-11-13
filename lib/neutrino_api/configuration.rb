# neutrino_api
#
# This file was automatically generated for NeutrinoAPI by
# APIMATIC v2.0 ( https://apimatic.io ).

# CohesityManagementSdk
module NeutrinoApi
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      #MULTICLOUD: Multicloud endpoint
      #AWS: AWS endpoint
      #GCP: GCP endpoint
      #MSA: MS Azure endpoint
      ENVIRONMENT = [MULTICLOUD = 0, AWS = 1, GCP = 2, MSA = 3].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::MULTICLOUD

    # Your user ID
    @user_id = 'TODO: Replace'

    # Your API key
    @api_key = 'TODO: Replace'

    # All the environments the SDK can run in.
    @environments = {
      Environment::MULTICLOUD => {
        Server::DEFAULT => 'https://neutrinoapi.net/'
      },
      Environment::AWS => {
        Server::DEFAULT => 'https://aws.neutrinoapi.net/'
      },
      Environment::GCP => {
        Server::DEFAULT => 'https://gcp.neutrinoapi.net/'
      },
      Environment::MSA => {
        Server::DEFAULT => 'https://msa.neutrinoapi.net/'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :user_id
      attr_accessor :api_key
    end
  end
end
