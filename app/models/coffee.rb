# frozen_string_literal: true

class Coffee < ApplicationRecord
  enum :roast_level, [:light, :medium, :dark]
end
