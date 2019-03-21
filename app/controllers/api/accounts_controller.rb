class Api::AccountsController < ApplicationController
  def redirect
    client = Signet::OAuth2::Client.new(client_options)

    redirect_to client.authorization_uri.to_s
  end
  
  def callback
    client = Signet::OAuth2::Client.new(client_options)
    client.code = params[:code]

    response = client.fetch_access_token!

    session[:authorization] = response

    redirect_to 'http://localhost:3000/api/users/#{ user["id"] }'
  end

  private

  def client_options
    {
      client_id: ENV['CLIENT_ID'],
      client_secret: ENV['CLIENT_SECRET'],
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      scope: 'https://www.googleapis.com/auth/books',
      redirect_uri: 'http://localhost:3000/api/google/callback'
    }
  end

end
