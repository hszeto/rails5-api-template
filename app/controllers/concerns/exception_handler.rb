module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError do |e|
      headers['Warning'] = e.problem
      render json: {}, status: :unprocessable_entity
    end
  end
end
