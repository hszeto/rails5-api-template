module Authable
  include ActiveSupport::Concern

  def find_user_from_token
    token = request_header_token
    response_json_422('Invalid token') { return } if token.nil?

    current_user = identity_account_for(token)
    response_json_422('uuid not found') { return } if current_user.nil?

    @current_user = current_user
  end

  private

  def request_header_token
    pattern = /^Bearer /i
    header  = request.headers['Authorization']
    header.gsub(pattern, '') if header&.match(pattern)
  end

  def identity_account_for(token)
    identity_response = HTTParty.get("http://localhost:3030/api/account?access_token=#{token}",
                                     headers: { 'Accept' => 'application/json' })
    JSON.parse(identity_response.body)
  end
end
