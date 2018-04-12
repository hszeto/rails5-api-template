class ApplicationController < ActionController::API
  def whoami
    ap __method__
  end
end
