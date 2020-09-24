if settings.startup["kyth-fluid-wagon-capacity"] and settings.startup["kyth-fluid-wagon-capacity"].value then
    -- -- -- -- -- -- -- -- --
    -- FLUID WAGON CAPACITY --
    -- -- -- -- -- -- -- -- --

    local fluid_wagon_capacity = settings.startup["kyth-fluid-wagon-capacity"].value

    if fluid_wagon_capacity and fluid_wagon_capacity ~= 25000 then
        
        data.raw["fluid-wagon"]["fluid-wagon"].capacity = fluid_wagon_capacity
        
        -- change recipe to balance out increased capacity (a little bit)
        if fluid_wagon_capacity >= 50000 then
            if data.raw.recipe["fluid-wagon"].ingredients then
                data.raw.recipe["fluid-wagon"].ingredients =
                {
                    {"iron-gear-wheel", 10},
                    {"steel-plate", 16},
                    {"pipe", 8},
                    {"storage-tank", fluid_wagon_capacity / 25000}
                }
            end
        end 
    end
end