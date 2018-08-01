User.create!(email: "admin@admin.com",
             password:              "ffengadmin",
             password_confirmation: "ffengadmin",
             admin: true,
             confirmed_at: Time.zone.now)
