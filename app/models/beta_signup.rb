## BetaSignup
# used to store email addresses that are entered in the landing page
class BetaSignup < ApplicationRecord
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
