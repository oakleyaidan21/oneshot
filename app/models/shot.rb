# frozen_string_literal: true

class Shot < ApplicationRecord
  belongs_to :bag
  belongs_to :grinder
end
