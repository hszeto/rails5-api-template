class ApplicationController < ActionController::API
  include Authable
  include JsonResponse
  include ExceptionHandler

  before_action :find_user_from_token

  def whoami
    ap __method__
    ap @current_user

    response_json( @current_user )
  end
end
