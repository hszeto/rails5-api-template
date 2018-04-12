class IdentityServicesController < ApplicationController
  include Authable

  before_action :user_validation

  def search
    ap __method__
  end
end
