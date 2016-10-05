## ApplicationController
# main application controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_app_info

  # make the configuration variables availble in th html pages
  def set_app_info
    # config file holding customization
    info = YAML.load_file("#{Rails.root}/config/app_info.yml")
    @company_info = info['company']
    @analytics = info['analytics']
  end
end
