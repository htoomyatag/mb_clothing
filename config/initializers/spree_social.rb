# Ensure our environment is bootstrapped with a facebook connect app
if ActiveRecord::Base.connection.table_exists? 'spree_authentication_methods'
  Spree::AuthenticationMethod.where(environment: ::Rails.env, provider: 'facebook').first_or_create do |auth_method|
    auth_method.api_key = ENV['806361773586984']
    auth_method.api_secret = ENV['5005cd2011c478ff394bd84c1940a6aa']
    auth_method.active = true
  end
end