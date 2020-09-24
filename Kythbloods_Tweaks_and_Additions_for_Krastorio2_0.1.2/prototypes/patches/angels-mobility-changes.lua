if settings.startup["kyth-angels-mobility-changes"] and settings.startup["kyth-angels-mobility-changes"].value then
    -- -- -- -- -- -- -- -- -- --
    -- ANGELS MOBILITY CHANGES --
    -- -- -- -- -- -- -- -- -- --

    -- reorder items/recipes to be just below the other train stuff
    if not mods["angelsindustries"] then

        -- in case someone is still using the old mods
        if mods["angelsaddons-crawlertrain"] then 
            data.raw["item-subgroup"]["angels-vehicle-train-crawler"].order = "ez[angel-train]-a[crawler]"
        end
        if mods["angelsaddons-petrotrain"] then 
            data.raw["item-subgroup"]["angels-petrotrain"].order = "ez[angel-train]-b[petro]"
        end
        if mods["angelsaddons-smeltingtrain"] then 
            data.raw["item-subgroup"]["angels-smeltingtrain"].order = "ez[angel-train]-c[smelting]"
        end

        -- place the categories 
        if mods["angelsaddons-mobility"] then 
            data.raw["item-subgroup"]["angels-vehicle-train-crawler"].order = "ez[angel-train]-a[crawler]"
            data.raw["item-subgroup"]["angels-petrotrain"].order = "ez[angel-train]-b[petro]"
            data.raw["item-subgroup"]["angels-smeltingtrain"].order = "ez[angel-train]-c[smelting]"
        end
    end

    ---------------------------------------------------------------------------------------------------------------

    if not mods["angelsindustries"] and mods["angelsaddons-mobility"] then

        -- VANILLA LOCOMOTIVE                       WAGON

        -- max_health = 1000                      
        -- weight = 10000
        -- braking_force = 30                       = 3
        -- friction_force = 0.5                     = 0.5
        -- air_resistance = 0.0075                  = 0.01
        -- burner.emissions_per_minute = 20
        -- max_speed = 1.0185   (220km/h)           = 1.5
        -- max_power = 2MW (vanilla "600kW")

        -- increase the max speed of wagons to make sure that the locomotives are the bottleneck
        data.raw["cargo-wagon"]["cargo-wagon"].max_speed = 3
        data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 3
        data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 3
        
        -- SMELTING LOCOMOTIVE
            -- heavier, more powerful, less effectivity, more emissions, higher max speed
        if data.raw["locomotive"]["smelting-locomotive-1"] then
            data.raw["locomotive"]["smelting-locomotive-1"].max_health                          = 1500                  -- +500
            data.raw["locomotive"]["smelting-locomotive-1"].braking_force                       = 30                    
            data.raw["locomotive"]["smelting-locomotive-1"].burner.emissions_per_minute         = 40                    -- +20
            data.raw["locomotive"]["smelting-locomotive-1"].weight                              = 14000                 -- +4000
            data.raw["locomotive"]["smelting-locomotive-1"].max_speed                           = 240 * 1.2 / 259.2     -- 240km/h
            data.raw["locomotive"]["smelting-locomotive-1"].max_power                           = "2.6MW"               -- +0.6MW
            data.raw["locomotive"]["smelting-locomotive-1"].air_resistance                      = 0.0075
            data.raw["locomotive"]["smelting-locomotive-1"].burner.effectivity                  = 0.5                   -- -50%
            data.raw["locomotive"]["smelting-locomotive-1"].equipment_grid = "kr-locomotive-grid"
        end
    
        -- SMELTING LOCOMOTIVE TENDER
            -- same but with air resistance like a wagon
        if data.raw["locomotive"]["smelting-locomotive-tender"] then
            data.raw["locomotive"]["smelting-locomotive-tender"].max_health                     = 1500                  -- +500
            data.raw["locomotive"]["smelting-locomotive-tender"].braking_force                  = 30
            data.raw["locomotive"]["smelting-locomotive-tender"].burner.emissions_per_minute    = 40                    -- x2
            data.raw["locomotive"]["smelting-locomotive-tender"].weight                         = 14000                 -- +4000
            data.raw["locomotive"]["smelting-locomotive-tender"].max_speed                      = 240 * 1.2 / 259.2     -- 240km/h
            data.raw["locomotive"]["smelting-locomotive-tender"].max_power                      = "2.8MW"               -- +0.8MW               
            data.raw["locomotive"]["smelting-locomotive-tender"].air_resistance                 = 0.02                  -- 2x wagon
            data.raw["locomotive"]["smelting-locomotive-tender"].burner.effectivity             = 0.5                   -- -50%
            data.raw["locomotive"]["smelting-locomotive-tender"].equipment_grid = "kr-locomotive-grid"
        end

        -- SMELTING WAGON
            -- 50% more inventory space but 50% more weight
        if data.raw["cargo-wagon"]["smelting-wagon-1"] then
            data.raw["cargo-wagon"]["smelting-wagon-1"].inventory_size = data.raw["cargo-wagon"]["cargo-wagon"].inventory_size * 1.5
            data.raw["cargo-wagon"]["smelting-wagon-1"].weight = data.raw["cargo-wagon"]["cargo-wagon"].weight * 1.5
            data.raw["cargo-wagon"]["smelting-wagon-1"].max_speed = 240 * 1.25 * 1.2 / 259.2          -- 300km/h (240km/h * 1.25)
        end

        ---------------------------------------------------------------------------------------------------------------

        -- PETROCHEM LOCOMOTIVE
            -- a bit heavier, a little more powerful, less effectivity, more emissions
        if data.raw["locomotive"]["petro-locomotive-1"] then
            data.raw["locomotive"]["petro-locomotive-1"].max_health                          = 1200
            data.raw["locomotive"]["petro-locomotive-1"].braking_force                       = 30                    
            data.raw["locomotive"]["petro-locomotive-1"].burner.emissions_per_minute         = 30                    -- +10
            data.raw["locomotive"]["petro-locomotive-1"].weight                              = 11000
            data.raw["locomotive"]["petro-locomotive-1"].max_speed                           = 220 * 1.2 / 259.2
            data.raw["locomotive"]["petro-locomotive-1"].max_power                           = "2.2MW"
            data.raw["locomotive"]["petro-locomotive-1"].air_resistance                      = 0.0075
            data.raw["locomotive"]["petro-locomotive-1"].burner.effectivity                  = 0.8                  -- -20%
            data.raw["locomotive"]["petro-locomotive-1"].equipment_grid = "kr-locomotive-grid"
        end

        -- PETROCHEM GAS FLUID WAGON & PETROCHEM OIL FLUID WAGON
        if data.raw["fluid-wagon"]["petro-tank1"] then
            data.raw["fluid-wagon"]["petro-tank1"].capacity = data.raw["fluid-wagon"]["fluid-wagon"].capacity * 1.2
            data.raw["fluid-wagon"]["petro-tank1"].weight = data.raw["fluid-wagon"]["fluid-wagon"].weight * 1.25
            data.raw["fluid-wagon"]["petro-tank1"].max_speed = 220 * 1.25 * 1.2 / 259.2
        end
        if data.raw["fluid-wagon"]["petro-tank2"] then
            data.raw["fluid-wagon"]["petro-tank2"].capacity = data.raw["fluid-wagon"]["fluid-wagon"].capacity * 1.2
            data.raw["fluid-wagon"]["petro-tank2"].weight = data.raw["fluid-wagon"]["fluid-wagon"].weight * 1.25
            data.raw["fluid-wagon"]["petro-tank2"].max_speed = 220 * 1.25 * 1.2 / 259.2
        end

        ---------------------------------------------------------------------------------------------------------------
    
        -- CRAWLER LOCOMOTIVE
            -- more powerful, efficient, higher max speed, high braking speed
        if data.raw["locomotive"]["crawler-locomotive"] then
            data.raw["locomotive"]["crawler-locomotive"].max_health                          = 1200                  -- +200
            data.raw["locomotive"]["crawler-locomotive"].braking_force                       = 40                    -- +10
            data.raw["locomotive"]["crawler-locomotive"].burner.emissions_per_minute         = 20
            data.raw["locomotive"]["crawler-locomotive"].weight                              = 11000
            data.raw["locomotive"]["crawler-locomotive"].max_speed                           = 260 * 1.2 / 259.2     -- 240km/h
            data.raw["locomotive"]["crawler-locomotive"].max_power                           = "2.4MW"               -- +0.3MW
            data.raw["locomotive"]["crawler-locomotive"].air_resistance                      = 0.005                 -- -0.0025
            data.raw["locomotive"]["crawler-locomotive"].burner.effectivity                  = 1
            data.raw["locomotive"]["crawler-locomotive"].equipment_grid = "kr-locomotive-grid"
        end

        -- CRAWLER LOCOMOTIVE TENDER
            -- same but with air resistance like a wagon
        if data.raw["locomotive"]["crawler-locomotive-wagon"] then
            data.raw["locomotive"]["crawler-locomotive-wagon"].max_health                     = 1200                  -- +500
            data.raw["locomotive"]["crawler-locomotive-wagon"].braking_force                  = 40                    -- +10
            data.raw["locomotive"]["crawler-locomotive-wagon"].burner.emissions_per_minute    = 20
            data.raw["locomotive"]["crawler-locomotive-wagon"].weight                         = 11000
            data.raw["locomotive"]["crawler-locomotive-wagon"].max_speed                      = 260 * 1.2 / 259.2     -- 240km/h
            data.raw["locomotive"]["crawler-locomotive-wagon"].max_power                      = "2.6MW"               -- +0.5MW               
            data.raw["locomotive"]["crawler-locomotive-wagon"].air_resistance                 = 0.02                  -- 2x wagon
            data.raw["locomotive"]["crawler-locomotive-wagon"].burner.effectivity             = 1
            data.raw["locomotive"]["crawler-locomotive-wagon"].equipment_grid = "kr-locomotive-grid"
        end

        -- CRAWLER WAGON
            -- 50% more inventory space but 50% more weight
        if data.raw["cargo-wagon"]["crawler-wagon"] then
            data.raw["cargo-wagon"]["crawler-wagon"].inventory_size = data.raw["cargo-wagon"]["cargo-wagon"].inventory_size * 1.25
            data.raw["cargo-wagon"]["crawler-wagon"].weight = data.raw["cargo-wagon"]["cargo-wagon"].weight * 1.5
            data.raw["cargo-wagon"]["crawler-wagon"].braking_force = data.raw["cargo-wagon"]["cargo-wagon"].braking_force * 2
            data.raw["cargo-wagon"]["crawler-wagon"].max_speed = 4
        end
        -- CRAWLER ROBOT WAGON
        if data.raw["cargo-wagon"]["crawler-bot-wagon"] then
            data.raw["cargo-wagon"]["crawler-bot-wagon"].inventory_size = data.raw["cargo-wagon"]["cargo-wagon"].inventory_size * 2
            data.raw["cargo-wagon"]["crawler-bot-wagon"].weight = data.raw["cargo-wagon"]["cargo-wagon"].weight * 2
            data.raw["cargo-wagon"]["crawler-bot-wagon"].braking_force = data.raw["cargo-wagon"]["cargo-wagon"].braking_force * 2
            data.raw["cargo-wagon"]["crawler-bot-wagon"].max_speed = 4
        end

        -- TO-DO: recipe change

    end

end