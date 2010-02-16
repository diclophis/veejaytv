# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_veejaytv_session',
  :secret => '0970fb3fbedbfde9de258ac7d496ba4728d1b02b2db5c1753f04144c8d1ae09582f045ab3447faa2867b11b2000c3169e78215e49acdc7e6bd7157ade86129d2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
