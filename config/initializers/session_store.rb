if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_nytimes_lite", domain: "nytimes-lite.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_nytimes_lite"
end