class Plan < ApplicationRecord
  has_many :users
  before_save :create_stripe_plan
  def create_stripe_plan
    if new_record?
      # create the stripe plan
      Stripe::Plan.create(
        amount: amount,
        interval: 'month',
        name: name,
        currency: currency,
        id: name
      )
    else
      # update the plan
    end
  end
end
