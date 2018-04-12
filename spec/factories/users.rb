FactoryBot.define do
  factory :user do
    email { "testy+#{Random.rand(9999)}@iamplus.com" }
    uuid { SecureRandom.uuid }
  end
end
