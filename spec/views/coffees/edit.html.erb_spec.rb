# frozen_string_literal: true

require "rails_helper"

RSpec.describe "coffees/edit", type: :view do
  let(:coffee) {
    Coffee.create!(
      name: "MyString",
      origin: "MyString",
      roast_level: 1,
      roaster: "MyString"
    )
  }

  before(:each) do
    assign(:coffee, coffee)
  end

  it "renders the edit coffee form" do
    render

    assert_select "form[action=?][method=?]", coffee_path(coffee), "post" do
      assert_select "input[name=?]", "coffee[name]"

      assert_select "input[name=?]", "coffee[origin]"

      assert_select "input[name=?]", "coffee[roast_level]"

      assert_select "input[name=?]", "coffee[roaster]"
    end
  end
end
