# frozen_string_literal: true

class CreateShots < ActiveRecord::Migration[8.1]
  def change
    create_table :shots do |t|
      t.references :bag, null: false, foreign_key: true
      t.references :grinder, null: false, foreign_key: true
      t.float :dose
      t.float :yield_amount
      t.integer :extraction_time
      t.float :grind_setting
      t.integer :rating
      t.text :notes

      t.timestamps
    end
  end
end
