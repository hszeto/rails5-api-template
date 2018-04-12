module LogValidationErrors
  extend ActiveSupport::Concern

  included do
    after_validation :log_errors, if: proc { |obj| obj.errors.present? }
  end

  def log_errors
    Rails.logger.debug "===> Validation Failed !!!\n" + errors.full_messages.map { |i| " - #{i}" }.join("\n")
  end
end
