# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_shop_expert_session',
  :secret      => '9194753a0333ec49c3f027c2ea6e35a101f68b0f1d169e641b8e68f32e5928c99d46563d7d65838acc7488916d8c1cc4544d0f4454c4784f9209e589d417defe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
