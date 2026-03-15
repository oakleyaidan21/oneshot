# frozen_string_literal: true

class CreateGrinders < ActiveRecord::Migration[8.1]
  def change
    create_table :grinders do |t|
      t.string :brand
      t.string :model
      t.string :burr_type

      t.timestamps
    end
  end
end
