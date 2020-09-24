if settings.startup["kyth-steel-pipe-capacity"] and settings.startup["kyth-steel-pipe-capacity"].value then
    -- -- -- -- -- -- -- -- --
    -- STEEL PIPE CAPACITY  --
    -- -- -- -- -- -- -- -- --

    local steel_pipe_capacity = settings.startup["kyth-steel-pipe-capacity"].value

    if steel_pipe_capacity and steel_pipe_capacity ~= 1.25 then
        
        data.raw["pipe"]["kr-steel-pipe"].fluid_box.height = steel_pipe_capacity
        data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].fluid_box.height = steel_pipe_capacity

        -- change recipe to balance out increased capacity (a little bit)
        if steel_pipe_capacity >= 2 then
            if data.raw["pipe"]["kr-steel-pipe"].ingredients then
                data.raw["pipe"]["kr-steel-pipe"].ingredients =
                {
                    {"steel-plate", math.floor(steel_pipe_capacity)}
                }
            end
        end 
    end
end