# == Schema Information
#
# Table name: emails
#
#  id         :integer          not null, primary key
#  subject    :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

## Email
# a way to keep track of how many emails we have sent
# and give persistance
class Email < ApplicationRecord
  has_and_belongs_to_many :users
  before_save :send_email

  # send default email
  def send_email
    @users = self.users
    # for each assigned user send email
    @users.each do |user|
      UserNotifierMailer::send_signup_email(user, self).deliver_now
    end
  end
end
