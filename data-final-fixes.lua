local difficulty = settings.startup["harder-rockets-difficulty"].value

if difficulty ~= "vanilla" then
    local rocket_part_recipe = data.raw.recipe["rocket-part"]
    
    if difficulty == "pre-2.0" then
        -- Restore pre-2.0 difficulty by adding back circuits from removed rocket control units
        -- Each rocket control unit = 1 speed module = 5 advanced + 5 electronic circuits
        -- Old recipe used 10 RCUs per part, so we add 50 of each circuit type
        rocket_part_recipe.ingredients = {
            {type = "item", name = "low-density-structure", amount = 10},
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "advanced-circuit", amount = 50},
            {type = "item", name = "electronic-circuit", amount = 50},
            {type = "item", name = "rocket-fuel", amount = 10}
        }
        
    elseif difficulty == "pre-2.0-marathon" then
        -- Marathon mode: ~4x multiplier on all ingredients
        rocket_part_recipe.ingredients = {
            {type = "item", name = "low-density-structure", amount = 40},
            {type = "item", name = "processing-unit", amount = 40},
            {type = "item", name = "advanced-circuit", amount = 200},
            {type = "item", name = "electronic-circuit", amount = 200},
            {type = "item", name = "rocket-fuel", amount = 40}
        }
    end
end