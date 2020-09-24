-- Adding unlocking of new containers to existing technologies
if settings.startup["kyth-large-container"] and settings.startup["kyth-large-container"].value then
    krastorio.technologies.addUnlockRecipe("kr-containers", "kyth-large-container")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-large-passive-provider-container")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-large-storage-container")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-large-active-provider-container")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-large-buffer-container")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-large-requester-container")
end
if settings.startup["kyth-small-warehouse"] and settings.startup["kyth-small-warehouse"].value then
    krastorio.technologies.addUnlockRecipe("kr-containers", "kyth-small-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-small-passive-provider-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-small-storage-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-small-active-provider-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-small-buffer-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-small-requester-warehouse")
end
if settings.startup["kyth-medium-warehouse"] and settings.startup["kyth-medium-warehouse"].value then
    krastorio.technologies.addUnlockRecipe("kr-containers", "kyth-medium-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-medium-passive-provider-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-1", "kyth-medium-storage-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-medium-active-provider-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-medium-buffer-warehouse")
    krastorio.technologies.addUnlockRecipe("kr-logistic-containers-2", "kyth-medium-requester-warehouse")
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-massive-fluid-storage-tank"] and settings.startup["kyth-massive-fluid-storage-tank"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- MASSIVE FLUID STORAGE TANK --
    -- -- -- -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "technology",
            name = "kyth-massive-fluid-storage-tank",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/technology/massive-fluid-storage-tank.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "kyth-massive-fluid-storage-tank"
                }
            },
            prerequisites = {"kr-steel-fluid-tanks", "chemical-science-pack"},
            unit =
            {
                count = 200,
                ingredients = 
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 30
            }
        },
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-steel-storage-tank"] and settings.startup["kyth-steel-storage-tank"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- STEEL FLUID STORAGE TANK   --
    -- -- -- -- -- -- -- -- -- -- --
    krastorio.technologies.addUnlockRecipe("kr-steel-fluid-handling", "kyth-massive-fluid-storage-tank")
end