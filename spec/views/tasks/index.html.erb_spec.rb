require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        name: "Name",
        description: "MyText",
        status: 2,
        value: "9.99",
        priority: 3
      ),
      Task.create!(
        name: "Name",
        description: "MyText",
        status: 2,
        value: "9.99",
        priority: 3
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
