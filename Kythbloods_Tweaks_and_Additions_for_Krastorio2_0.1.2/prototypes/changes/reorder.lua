if settings.startup["kyth-reorder"] and settings.startup["kyth-reorder"].value then
    -- -- -- -- -- -- -- -- -- --
    -- ITEM / RECIPE REORDER   --
    -- -- -- -- -- -- -- -- -- --

    data.raw["item-with-entity-data"]["kr-nuclear-locomotive"].subgroup = "train-transport"
    data.raw["item-with-entity-data"]["kr-nuclear-locomotive"].order = "a[train-system]-f[nuclear-locomotive]"

end