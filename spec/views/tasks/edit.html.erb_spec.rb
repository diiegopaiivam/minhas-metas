require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      name: "MyString",
      description: "MyText",
      status: 1,
      value: "9.99",
      priority: 1
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[status]"

      assert_select "input[name=?]", "task[value]"

      assert_select "input[name=?]", "task[priority]"
    end
  end
end
