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

require 'rails_helper'

RSpec.describe Plan, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
