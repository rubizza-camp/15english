User.create!(email: "admin@admin.com",
             password:              "ffengadmin",
             password_confirmation: "ffengadmin",
             username: "admin",
             admin: true,
             slug: "admin",
             confirmed_at: Time.zone.now)
