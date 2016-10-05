class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :subscribe]
  def index
    @plans = Plan.all
  end

  def show
  end

  def edit
  end

  def subscribe
    user = current_user
    plan = Plan.find(params[:id])
    Subscription.create(user: user, plan: plan)
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
