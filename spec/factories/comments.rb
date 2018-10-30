FactoryBot.define do
  factory :comment do
    body { FFaker::DizzleIpsum.paragraph }
    task { nil }
    attachment { FFaker::Internet.http_url }
  end
end
