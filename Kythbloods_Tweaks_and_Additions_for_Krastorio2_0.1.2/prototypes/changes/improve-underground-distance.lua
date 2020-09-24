if settings.startup["kyth-improve-underground-distance"] and settings.startup["kyth-improve-underground-distance"].value then
    -- -- -- -- -- -- -- -- -- -- -- --
    -- IMPROVED UNDERGROUND DISTANCE --
    -- -- -- -- -- -- -- -- -- -- -- --

    data.raw["underground-belt"]["fast-underground-belt"].max_distance = 11         -- 2x yellow
    data.raw["underground-belt"]["express-underground-belt"].max_distance = 23      -- 4x yellow

    data.raw["underground-belt"]["kr-advanced-underground-belt"].max_distance = 35  -- 6x yellow
    data.raw["underground-belt"]["kr-superior-underground-belt"].max_distance = 47  -- 8x yellow

    if data.raw["underground-belt"]["kyth-hyper-underground-belt"] then -- name still to be decided
        data.raw["underground-belt"]["kyth-hyper-underground-belt"].max_distance = 59
    end

end