# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_my_sphinx_session',
  :secret      => '50ca83fa9800783c41253c94e6c5f9c07da78748f34d84aecc511276b5ce1b126aefa841042c8c5d7e7c6076b6859c8f936614b1a51ca5850f89cd07cd720107'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
