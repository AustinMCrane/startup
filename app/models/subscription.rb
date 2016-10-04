class Subscription < ApplicationRecord
  belongs_to :plan
  belongs_to :user
  before_save :add_user_to_plan
  before_delete :remove_user_from_plan

  def add_user_to_plan
    if new_record?
      if user.is_a_customer?
    end
  end
end
