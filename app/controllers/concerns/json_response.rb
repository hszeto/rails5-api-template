module JsonResponse
  extend ActiveSupport::Concern

  def response_json(object = {}, status = :ok)
    render json: object, status: status
  end

  def response_json_422(msg = 'Unauthorized')
    render json: { message: msg }, status: :unprocessable_entity
  end
end
