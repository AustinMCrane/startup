# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  amount     :integer
#  interval   :string           default("month")
#  name       :string
#  currency   :string           default("usd")
#  stripe_id  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

## Plan
# reocurring stripe plan
class Plan < ApplicationRecord
  has_many :users
  validates_uniqueness_of :name
  before_create :create_stripe_plan

  # create the stripe plan through the api
  def create_stripe_plan
    if !exists_with_stripe?
      # if it doesnt exist in stripe create it
      Stripe::Plan.create(
        amount: amount,
        interval: 'month',
        name: name,
        currency: currency,
        id: name
      )
    end
  end

  # checks if stripe account has this plan yet
  def exists_with_stripe?
    stripe_plans = StripeHelper.all_plans
    stripe_plans.each do |plan|
      # check if the two ids match each other
      if plan.name == self.name
        return true
      end
    end
    return false
  end

  # sync plans from stripe and save to database for refrence
  def self.sync_plans
    stripe_plans = StripeHelper.all_plans
    stripe_plans.each do |plan|
      if where(stripe_id: plan.id).count == 0
        # create the plan in the database if it exists in stripe but not in db
        create(amount: plan.amount, currency: plan.currency, name: plan.name, interval: plan.interval)
      end
    end
  end
end
