# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_just_ci_project_session',
  :secret      => 'a3accd29a427b7dcef97d977f7584923c2f38746d8a3119df8bf5727747791643fdf23a8f35421876a73004df447ebafe0b61ef3150206fb3172b324b286370a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
