if settings.startup["kyth-filter-inserter-research"] and settings.startup["kyth-filter-inserter-research"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- FILTER INSERTER RESEARCH   --
    -- -- -- -- -- -- -- -- -- -- --

    -- change fast inserter technology, icon and description
    data.raw.technology["fast-inserter"].effects =
    {
        {
            type = "unlock-recipe",
            recipe = "fast-inserter"
        }
    }
    data.raw.technology["fast-inserter"].icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/fast-inserter.png"
    data.raw.technology["fast-inserter"].localised_description = "Inserter capable of faster motion through improved electronics."
    -- change fast inserter technology
    data.raw.technology["stack-inserter"].effects =
    {
        {
            type = "unlock-recipe",
            recipe = "stack-inserter"
        },
        {
            type = "stack-inserter-capacity-bonus",
            modifier = 1
        }
    }
    -- change superior inserters technology and icon
    data.raw.technology["kr-superior-inserters"].effects =
    {
        {
            type = "unlock-recipe",
            recipe = "kr-superior-inserter"
        }
    }
    data.raw.technology["kr-superior-inserters"].icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/superior-inserter.png"
    

    data:extend(
    {
        {
            type = "technology",
            name = "kyth-filter-inserter",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/fast-filter-inserter.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "filter-inserter"
                }
            },
            prerequisites = {"fast-inserter"},
            unit =
            {
                count = 50,
                ingredients =
                {
                    {"basic-tech-card", 1},
                    {"automation-science-pack", 1}
                },
                time = 20
            },
            upgrade = true,
            order = "a-d-a"
        },
        {
            type = "technology",
            name = "kyth-filter-stack-inserter",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/stack-filter-inserter.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "stack-filter-inserter"
                }
            },
            prerequisites = {"kyth-filter-inserter", "stack-inserter"},
            unit =
            {
                count = 100,
                ingredients =
                {
                    {"basic-tech-card", 1},
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1}
                },
                time = 30
            },
            upgrade = true,
            order = "c-o-a"
        },
        {
            type = "technology",
            name = "kyth-superior-filter-inserter",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/superior-filter-inserter.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "kr-superior-filter-inserter"
                }
            },
            prerequisites = {"kyth-filter-stack-inserter", "kr-superior-inserters"},
            unit =
            {
                count = 300,
                ingredients =
                {
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"advanced-tech-card", 1}
                },
                time = 60
            },
            upgrade = true,
            order = "d-o-a"
        },
        {
            type = "technology",
            name = "kyth-superior-long-inserter",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/superior-long-inserter.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "kr-superior-long-inserter"
                }
            },
            prerequisites = {"kr-superior-inserters"},
            unit =
            {
                count = 300,
                ingredients =
                {
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"advanced-tech-card", 1}
                },
                time = 60
            },
            upgrade = true,
            order = "d-o-a"
        },
        {
            type = "technology",
            name = "kyth-superior-long-filter-inserter",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/superior-long-filter-inserter.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "kr-superior-long-filter-inserter"
                }
            },
            prerequisites = {"kyth-filter-stack-inserter", "kyth-superior-long-inserter"},
            unit =
            {
                count = 300,
                ingredients =
                {
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"advanced-tech-card", 1}
                },
                time = 60
            },
            upgrade = true,
            order = "d-o-a"
        }
    })
end