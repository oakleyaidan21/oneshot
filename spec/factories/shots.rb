FactoryBot.define do
  factory :shot do
    bag { nil }
    grinder { nil }
    dose { 1.5 }
    yield_amount { 1.5 }
    extraction_time { 1 }
    grind_setting { 1.5 }
    rating { 1 }
    notes { "MyText" }
  end
end
