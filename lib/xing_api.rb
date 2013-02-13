require "json"
require "oauth"
module XingApi
  # the first functionality of our api: get current user's profile information
  module User
    def current_user
      http = token.get "/v1/users/me"
      JSON.parse(http.body)["users"].first
    end
  end

  class Connector
    include User

    attr_accessor :consumer, :request_token, :token

    def initialize(token, secret, callback=nil)
      @callback = callback if callback
      @consumer = OAuth::Consumer.new(
        token,
        secret,
        :request_token_path => '/v1/request_token',
        :authorize_path     => '/v1/authorize',
        :access_token_path  => '/v1/access_token',
        :site               => 'https://api.xing.com'
      )
    end

    def get_request_token
      @request_token = @consumer.get_request_token(:oauth_callback => @callback)
    end

    def authorize_url
      @request_token.authorize_url(:oauth_callback => @callback)
    end

    def auth_token(params)
      @token = @request_token.get_access_token params
    end

    # Use this method, when user come back again, to generate a new access token
    # auth token and secret
    def from_auth_token_and_secret(token, secret)
      @token = OAuth::AccessToken.from_hash(@consumer,
                                     :oauth_token => token,
                                     :oauth_token_secret => secret)
    end

    def token
      @token || raise( "Please use either #auth_token or #from_auth_token_and_secret to set the AuthToken first" )
    end

  end
end