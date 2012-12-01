require 'oauth'
module LinkedInApi
  ## Fill the keys and secrets you retrieved after registering your app
  #api_key = '2v784btmp0ym'
  #api_secret = 'MaQrYPlNr19yHIab'
  #user_token = '59c441fa-ec8d-4ae8-aee9-ae34bea2da01'
  #user_secret = '8a595603-4bf2-4111-928e-03588a5b1c6f'
  def self.new_token
    api_key = '2v784btmp0ym'
    api_secret = 'MaQrYPlNr19yHIab'

    configuration = { :site => 'https://api.linkedin.com',
                              :authorize_path => '/uas/oauth/authenticate',
                              :request_token_path => '/uas/oauth/requestToken?scope=r_fullprofile',
                              :access_token_path => '/uas/oauth/accessToken' }

    consumer = OAuth::Consumer.new(api_key, api_secret, configuration)

    request_token = consumer.get_request_token

    #Kunden die URL für die Permissions zur Verfügungs stellen
    request_token.authorize_url

    ## Make call to LinkedIn to retrieve your own profile
    #response = @access_token.get("http://api.linkedin.com/v1/people/~?format=json")
  end

end