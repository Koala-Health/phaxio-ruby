module Phaxio
  class Config
    DEFAULT_API_ENDPOINT = 'https://api.phaxio.com/v2.1/'.freeze

    class << self
      # Your Phaxio API key. This will be used for all interactions with the Phaxio API.
      #
      # To find your API key, visit https://console.phaxio.com/api_credentials
      attr_accessor :api_key

      # Your Phaxio API secret. This will be used for all interactions with the Phaxio API.
      #
      # To find your API secret, visit https://console.phaxio.com/api_credentials
      attr_accessor :api_secret

      # Your Phaxio callback token. This will be used to verify that callback requests are coming
      # from Phaxio.
      #
      # To find your callback token, visit https://console.phaxio.com/user/callbacks/edit
      attr_accessor :callback_token

      # The Phaxio API endpoint. Users generally shouldn't need to change it.
      # Defaults to https://api.phaxio.com/v2/
      attr_writer :api_endpoint

      def api_endpoint
        @api_endpoint || DEFAULT_API_ENDPOINT
      end
    end
  end
end
