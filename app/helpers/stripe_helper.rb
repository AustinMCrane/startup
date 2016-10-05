## StripeHelper
# A helper class to make working with stripe easier and more centrally located
module StripeHelper
  # return all customers
  def all_customers
    Stripe::Customer.list['data']
  end

  # search through lists of all customers for customer with email
  # * +email+ - the email address the customer used to create stripe account
  def self.customer_with_email(email)
    all_customers.each do |customer|
      return customer if email == customer.email
    end
  end

  # search through lists of all customers for customer with customer_id
  # * +customer_id+ - stripe customer id
  def self.customer_with_id(customer_id)
    # this could be simplified to just query stripe by customer id
    all_customers.each do |customer|
      return customer if customer_id == customer.id
    end
  end

  # get all plans from stripe
  def self.all_plans
    # return the data section of the list object which
    # holds an array of plans
    Stripe::Plan.list['data']
  end

  # get all customers from stripe
  def self.all_customers
    Stripe::Customer.list['data']
  end
end
