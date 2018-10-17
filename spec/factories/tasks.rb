FactoryBot.define do
  factory :task do
    name { "MyString" }
    done { false }
    project { nil }
    position { 1 }
    deadline { "2018-10-17 23:34:44" }
  end
end
