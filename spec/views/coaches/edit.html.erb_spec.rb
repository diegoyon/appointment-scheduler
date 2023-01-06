require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  let(:coach) {
    Coach.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:coach, coach)
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(coach), "post" do

      assert_select "input[name=?]", "coach[name]"
    end
  end
end
