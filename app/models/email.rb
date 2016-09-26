class Email < ApplicationRecord
  has_and_belongs_to_many :users
  before_save :send_email

  def send_email
    @users = self.users
    puts @users.to_yaml
    @users.each do |user|
      puts user.email
      UserNotifierMailer::send_signup_email(user)
    end
  end
end
