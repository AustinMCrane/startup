require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :plan => 1,
      :user_id => 1
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input#subscription_plan[name=?]", "subscription[plan]"

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"
    end
  end
end
