class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  # POST: /beta_signup
  def beta_signup
    @beta_signup = BetaSignup.new(email: params[:email])
    if @beta_signup.save
      redirect_to root_path, notice: 'Thank you for signing up for the beta program!'
    else
      redirect_to root_path, notice: 'Something went wrong, try again later!'
    end
  end
end
