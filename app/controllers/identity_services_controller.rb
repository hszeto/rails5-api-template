class IdentityServicesController < ApplicationController
  include Authable

  def search
    ap __method__
    response_json()
  end
end
