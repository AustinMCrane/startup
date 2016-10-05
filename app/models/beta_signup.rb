# == Schema Information
#
# Table name: beta_signups
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

## BetaSignup
# used to store email addresses that are entered in the landing page
class BetaSignup < ApplicationRecord
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
