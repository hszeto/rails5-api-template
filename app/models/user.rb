class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email, type: String
  field :uuid, type: String

  validates_presence_of   :email
  validates_uniqueness_of :email

  validates_presence_of   :uuid
  validates_uniqueness_of :uuid

  before_save -> { email.strip!; email.downcase! }
end
