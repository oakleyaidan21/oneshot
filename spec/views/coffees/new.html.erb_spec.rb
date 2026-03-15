# frozen_string_literal: true

require "rails_helper"

RSpec.describe "coffees/new", type: :view do
  before(:each) do
    assign(:coffee, Coffee.new(
      name: "MyString",
      origin: "MyString",
      roast_level: 1,
      roaster: "MyString"
    ))
  end

  it "renders new coffee form" do
    render

    assert_select "form[action=?][method=?]", coffees_path, "post" do
      assert_select "input[name=?]", "coffee[name]"

      assert_select "input[name=?]", "coffee[origin]"

      assert_select "input[name=?]", "coffee[roast_level]"

      assert_select "input[name=?]", "coffee[roaster]"
    end
  end
end
