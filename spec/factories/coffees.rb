# frozen_string_literal: true

FactoryBot.define do
  factory :coffee do
    name { "MyString" }
    roaster { "MyString" }
    roast_level { 1 }
    origin { "MyString" }
  end
end
