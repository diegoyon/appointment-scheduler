require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        name: "Name"
      ),
      Coach.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
