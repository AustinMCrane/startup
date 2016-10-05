class Email < ApplicationRecord
  has_and_belongs_to_many :users
  before_save :send_email

  # send default email
  def send_email
    @users = self.users
    @users.each do |user|
      UserNotifierMailer::send_signup_email(user, self).deliver_now
    end
  end
end
