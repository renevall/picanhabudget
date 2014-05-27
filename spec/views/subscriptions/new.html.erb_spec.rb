require 'spec_helper'

describe "subscriptions/new" do
  before(:each) do
    assign(:subscription, stub_model(Subscription,
      :name => "MyString",
      :lastname => "MyString",
      :grade => "MyString",
      :section => "MyString",
      :level => "MyString",
      :paymentmethod => "MyString",
      :school => "MyString",
      :active => false,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscriptions_path, "post" do
      assert_select "input#subscription_name[name=?]", "subscription[name]"
      assert_select "input#subscription_lastname[name=?]", "subscription[lastname]"
      assert_select "input#subscription_grade[name=?]", "subscription[grade]"
      assert_select "input#subscription_section[name=?]", "subscription[section]"
      assert_select "input#subscription_level[name=?]", "subscription[level]"
      assert_select "input#subscription_paymentmethod[name=?]", "subscription[paymentmethod]"
      assert_select "input#subscription_school[name=?]", "subscription[school]"
      assert_select "input#subscription_active[name=?]", "subscription[active]"
      assert_select "input#subscription_location[name=?]", "subscription[location]"
    end
  end
end
