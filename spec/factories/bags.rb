# frozen_string_literal: true

FactoryBot.define do
  factory :bag do
    coffee { nil }
    roast_date { "2026-03-14" }
    weight_grams { 1 }
    status { 1 }
  end
end
