# Be sure to restart your server when you modify this file.

Debateaberto::Application.config.session_store :cookie_store,
  key: Debateaberto::Application::CONFIG['session_key'], domain: :all

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Debateaberto::Application.config.session_store :active_record_store
