class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :subscribe]
  # GET /plans
  # show the customer what plans are available so they can subscribe
  def index
    @plans = Plan.all
  end

  # GET /plans/:id
  # shows more detail about the plan and allows for button click
  # subscribe
  def show
  end

  # TODO: not implemented yet but will be used to edit or cancel subscriptions
  def edit
  end

  # POST /plan/:id/subscribe
  # services the button on show page to create subscription
  def subscribe
    user = current_user
    plan = Plan.find(params[:id])
    # TODO: redirect users to customer creation page if they
    # have not registered with stripe yet
    Subscription.create(user: user, plan: plan)
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
