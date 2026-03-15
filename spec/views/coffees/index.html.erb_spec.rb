# frozen_string_literal: true

require "rails_helper"

RSpec.describe "coffees/index", type: :view do
  before(:each) do
    assign(:coffees, [
      Coffee.create!(
        name: "Name",
        origin: "Origin",
        roast_level: 2,
        roaster: "Roaster"
      ),
      Coffee.create!(
        name: "Name",
        origin: "Origin",
        roast_level: 2,
        roaster: "Roaster"
      )
    ])
  end

  it "renders a list of coffees" do
    render
    cell_selector = "div>p"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Origin".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Roaster".to_s), count: 2
  end
end
