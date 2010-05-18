# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twiinance_session',
  :secret      => '26913d6b405e86bdae25377025e3336f463d8d2c278dbe63aaaad72fe6cc32e9e1ac204648887be73dc5d2823c3be0f6f69254b4a7b73aff9f24c6c790f300aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
