if settings.startup["kyth-large-container"] and settings.startup["kyth-large-container"].value then
    -- -- -- -- -- -- -- --
    -- LARGE CONTAINERS  --
    -- -- -- -- -- -- -- --
    data:extend({
        {
            type = "item",
            name = "kyth-large-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-container.png",
            stack_size = 50,
            icon_size = 64,
            subgroup = "storage",
            order = "a[items]-dd[large-container]",
            place_result = "kyth-large-container"
        },
        {
            type = "item",
            name = "kyth-large-active-provider-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-active-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-1",
            order = "a[large-active-provider-container]",
            place_result = "kyth-large-active-provider-container"
        },
        {
            type = "item",
            name = "kyth-large-passive-provider-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-passive-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-1",
            order = "c[large-passive-provider-container]",
            place_result = "kyth-large-passive-provider-container"
        },
        {
            type = "item",
            name = "kyth-large-storage-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-storage-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-1",
            order = "e[large-storage-container]",
            place_result = "kyth-large-storage-container"
        },
        {
            type = "item",
            name = "kyth-large-buffer-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-buffer-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-1",
            order = "b[large-buffer-container]",
            place_result = "kyth-large-buffer-container"
        },
        {
            type = "item",
            name = "kyth-large-requester-container",
            icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-requester-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-1",
            order = "d[large-requester-container]",
            place_result = "kyth-large-requester-container"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-small-warehouse"] and settings.startup["kyth-small-warehouse"].value then
    -- -- -- -- -- -- -- --
    -- SMALL WAREHOUSES  --
    -- -- -- -- -- -- -- --
    data:extend({
        {
            type = "item",
            name = "kyth-small-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-container.png",
            stack_size = 50,
            icon_size = 64,
            subgroup = "storage",
            order = "a[items]-de[small-warehouse]",
            place_result = "kyth-small-warehouse"
        },
        {
            type = "item",
            name = "kyth-small-active-provider-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-active-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-2",
            order = "a[small-active-provider-warehouse]",
            place_result = "kyth-small-active-provider-warehouse"
        },
        {
            type = "item",
            name = "kyth-small-passive-provider-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-passive-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-2",
            order = "c[small-passive-provider-warehouse]",
            place_result = "kyth-small-passive-provider-warehouse"
        },
        {
            type = "item",
            name = "kyth-small-storage-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-storage-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-2",
            order = "e[small-storage-warehouse]",
            place_result = "kyth-small-storage-warehouse"
        },
        {
            type = "item",
            name = "kyth-small-buffer-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-buffer-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-2",
            order = "b[small-buffer-warehouse]",
            place_result = "kyth-small-buffer-warehouse"
        },
        {
            type = "item",
            name = "kyth-small-requester-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-requester-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-2",
            order = "d[small-requester-warehouse]",
            place_result = "kyth-small-requester-warehouse"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-medium-warehouse"] and settings.startup["kyth-medium-warehouse"].value then
    -- -- -- -- -- -- -- --
    -- MEDIUM WAREHOUSES --
    -- -- -- -- -- -- -- --
    data:extend({
        {
            type = "item",
            name = "kyth-medium-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-container.png",
            stack_size = 50,
            icon_size = 64,
            subgroup = "storage",
            order = "a[items]-df[medium-warehouse]",
            place_result = "kyth-medium-warehouse"
        },
        {
            type = "item",
            name = "kyth-medium-active-provider-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-active-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-3",
            order = "a[medium-active-provider-warehouse]",
            place_result = "kyth-medium-active-provider-warehouse"
        },
        {
            type = "item",
            name = "kyth-medium-passive-provider-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-passive-provider-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-3",
            order = "c[medium-passive-provider-warehouse]",
            place_result = "kyth-medium-passive-provider-warehouse"
        },
        {
            type = "item",
            name = "kyth-medium-storage-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-storage-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-3",
            order = "e[medium-storage-warehouse]",
            place_result = "kyth-medium-storage-warehouse"
        },
        {
            type = "item",
            name = "kyth-medium-buffer-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-buffer-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-3",
            order = "b[medium-buffer-warehouse]",
            place_result = "kyth-medium-buffer-warehouse"
        },
        {
            type = "item",
            name = "kyth-medium-requester-warehouse",
            icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-requester-container.png",
            stack_size = 50,
            icon_size = 64,    
            subgroup = "kr-logistics-2-3",
            order = "d[medium-requester-warehouse]",
            place_result = "kyth-medium-requester-warehouse"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-massive-fluid-storage-tank"] and settings.startup["kyth-massive-fluid-storage-tank"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- MASSIVE FLUID STORAGE TANK --
    -- -- -- -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "item",
            name = "kyth-massive-fluid-storage-tank",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/icons/massive-fluid-storage-tank.png",
            stack_size = 50,
            icon_size = 64,
            subgroup = "storage",
            order = "b[fluid]-d[massive-fluid-storage-tank]",
            place_result = "kyth-massive-fluid-storage-tank"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-steel-storage-tank"] and settings.startup["kyth-steel-storage-tank"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- STEEL FLUID STORAGE TANK   --
    -- -- -- -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "item",
            name = "kyth-steel-storage-tank",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/icons/steel-storage-tank.png",
            stack_size = 50,
            icon_size = 64,
            subgroup = "storage",
            order = "b[fluid]-aa[steel-storage-tank]",
            place_result = "kyth-steel-storage-tank"
        }
    })
end