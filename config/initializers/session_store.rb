# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_locadora_session',
  :secret      => '4c4159325bb440b216a0bea5e58eea46ce1273fc016d5f213f97d283296ef076f18112028de7807710949988f00bfbcf22e805a0c4777da3726cfe9dffa5d29d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
