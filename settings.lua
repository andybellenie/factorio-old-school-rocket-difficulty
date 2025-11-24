-- Don't show settings if Space Age is active (mod has no effect)
if not mods["space-age"] then
    data:extend({
        {
            type = "string-setting",
            name = "oldschool-rockets-difficulty",
            setting_type = "startup",
            default_value = "pre-2.0",
            allowed_values = {"pre-2.0", "pre-2.0-marathon"},
            order = "a"
        }
    })
end