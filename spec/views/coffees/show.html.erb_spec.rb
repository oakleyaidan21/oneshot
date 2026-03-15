# frozen_string_literal: true

require "rails_helper"

RSpec.describe "coffees/show", type: :view do
  before(:each) do
    assign(:coffee, Coffee.create!(
      name: "Name",
      origin: "Origin",
      roast_level: 2,
      roaster: "Roaster"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Roaster/)
  end
end
