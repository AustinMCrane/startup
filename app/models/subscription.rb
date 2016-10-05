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
      # need to check if the user is a customer and if not redirect to create customer
      Stripe::Subscription.create(
        :customer => user.stripe_id,
        :plan => plan.id
      )
    else
      # TODO: subscription exists in stripe, also before_save to before_create
      # edit the subscription
    end
  end
end
