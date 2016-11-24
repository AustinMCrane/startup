## HomeController
# services the landing pages
class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET: /
  # used for the landing page
  def index
    # if launched then show landing page instead of signup page
    if StartupHelper.launched?
      @products = Product.all
      render 'home/landing_page'
    end
  end

  # POST: /beta_signup
  # services the text box on the home page
  # when button is clicked it will save the email to beta_signups
  def beta_signup
    @beta_signup = BetaSignup.new(email: params[:email])
    if @beta_signup.save
      redirect_to root_path, notice: 'Thank you for signing up for the beta program!'
    else
      redirect_to root_path, notice: 'Something went wrong, try again later!'
    end
  end
end
