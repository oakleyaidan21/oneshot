# frozen_string_literal: true

class CreateBags < ActiveRecord::Migration[8.1]
  def change
    create_table :bags do |t|
      t.references :coffee, null: false, foreign_key: true
      t.date :roast_date
      t.integer :weight_grams
      t.integer :status

      t.timestamps
    end
  end
end
