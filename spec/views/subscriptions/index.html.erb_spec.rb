require 'rails_helper'

RSpec.describe "subscriptions/index", type: :view do
  before(:each) do
    assign(:subscriptions, [
      Subscription.create!(
        :plan => 2,
        :user_id => 3
      ),
      Subscription.create!(
        :plan => 2,
        :user_id => 3
      )
    ])
  end

  it "renders a list of subscriptions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
