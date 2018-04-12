require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has email' do
    should validate_presence_of(:email)
  end

  it 'email is unique' do
    should validate_uniqueness_of(:email)
  end

  it 'has uuid' do
    should validate_presence_of(:uuid)
  end

  it 'uuid is unique' do
    should validate_uniqueness_of(:uuid)
  end
end
