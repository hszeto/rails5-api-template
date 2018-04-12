module Authable
  include ActiveSupport::Concern

  def user_validation
    ap __method__
    
  end
end
