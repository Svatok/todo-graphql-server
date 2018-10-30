FactoryBot.define do
  factory :task do
    name { FFaker::DizzleIpsum.word }
    done { false }
    project { nil }
    position { rand(0..5) }
    deadline { FFaker::Time.datetime }
  end
end
