require 'rails_helper'

RSpec.describe "coaches/show", type: :view do
  before(:each) do
    assign(:coach, Coach.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
