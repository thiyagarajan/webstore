# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = 'Web Store'
  config.site_url = 'multi.webstore.co.uk'
  #config.currency = 'GBP'
  country = Spree::Country.find_by_name('United Kingdom') if Spree::Country.table_exists?
  config.default_country_id = country.id if country.present?
  config.enable_mail_delivery = true
  config.allow_ssl_in_staging = false
  config.allow_ssl_in_production = false
  config.admin_interface_logo = 'admin/logo.png'
  config.logo = 'store/logo.png'

  # Default mail headers settings
  config.enable_mail_delivery = true
  config.mails_from = 'no-reply@webstore.co.uk'
  config.mail_bcc = 'ianjones@web-store.co.uk'

  # Default smtp settings
  config.override_actionmailer_config = true
  config.mail_host = 'smtp.sendgrid.net'
  config.mail_domain = 'smtp.sendgrid.net'
  config.mail_port = 587
  config.secure_connection_type = 'None'
  config.mail_auth_type = 'Login'
  config.smtp_username = 'moorem'
  config.smtp_password = 'moorem@2013'
end

Spree.user_class = "Spree::User"
