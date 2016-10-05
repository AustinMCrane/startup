## Subscription
# a relationship between a user and their plan that they are
# subscribed to
class Subscription < ApplicationRecord
  belongs_to :plan
  belongs_to :user
  before_save :add_user_to_plan

  # before save subscribe user to the plan
  def add_user_to_plan
    if new_record?
      if user.is_a_customer?
      end
    else
      # edit the subscription
    end
  end
end
