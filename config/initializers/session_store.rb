# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Ilmo_session',
  :secret      => 'a1fbf3f99e05319636446438a1c358e31e6f2f423a8d958f9a33046377cd61037acb6a422dd519a63730927bf415b72492a0c1a69c66d30c0ff37d0937b1fad0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
