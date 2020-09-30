if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_nytimes_lite", domain: "nytimeslite.com"
else
    Rails.application.config.session_store :cookie_store, key: "_nytimes_lite"
end