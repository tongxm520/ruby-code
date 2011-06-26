# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_auth_session',
  :secret      => 'c2aa78bb0f234327d6014cb2b8d329db1c8c768ba17ef4652fa2f8758ad64577b1d50c8423fe58c0fe7402778e29e7546b6ea0b4e89c7416ee6929270628aaef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
