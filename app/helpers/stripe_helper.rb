##
# A helper class to make working with stripe easier and more centrally located
module Stripe
  # return all customers
  def all_customers
    Stripe::Customer.list['data']
  end

  # search through lists of all customers for customer with email
  def customer_with_email(email)
    all_customers.each do |customer|
      return customer if email == customer.email
    end
  end

  # search through lists of all customers for customer with customer_id
  def customer_with_id(customer_id)
    all_customers.each do |customer|
      return customer if customer_id == customer.id
    end
  end
end
