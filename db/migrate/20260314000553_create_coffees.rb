# frozen_string_literal: true

class CreateCoffees < ActiveRecord::Migration[8.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :roaster
      t.integer :roast_level
      t.string :origin

      t.timestamps
    end
  end
end
