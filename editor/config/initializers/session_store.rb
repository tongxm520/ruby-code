# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_editor_session',
  :secret      => 'd4cb57ba034010d689692e61a6573b2e3e6983fc76f681869f73f974adec3e4eb13a072cd84a30e5facf9c99d08ef99bd6bf38782d3e5c423bc6af00d8f050c0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
