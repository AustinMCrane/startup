module StartupHelper

  # make the configuration variables availble in th html pages
  def self.config_file
    info_file = YAML.load_file("#{Rails.root}/config/app_info.yml")
    return info_file
  end

  # company info from config file
  def self.company
    # config file holding customization
    return config_file['company']
  end

  # google analytics info from config file
  def self.analytics
    return config_file['analytics']
  end

  def self.launched?
    return config_file['status']['launched']
  end
end