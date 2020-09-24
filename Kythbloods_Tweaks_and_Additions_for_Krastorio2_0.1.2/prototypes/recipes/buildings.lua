if settings.startup["kyth-large-container"] and settings.startup["kyth-large-container"].value then
    -- -- -- -- -- -- -- --
    -- LARGE CONTAINERS  --
    -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "recipe",
            name = "kyth-large-container",
            energy_required = 2,
            enabled = false,
            ingredients =
            {
                {"steel-chest", 6},
                {"steel-beam", 8}
            },
            subgroup = "storage",
            order = "a[items]-dd[large-container]",
            result = "kyth-large-container"
        },
        {
            type = "recipe",
            name = "kyth-large-active-provider-container",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-large-container", 1},
                {"advanced-circuit", 5},
            },
            subgroup = "kr-logistics-2-1",
            order = "a[large-active-provider-container]",
            result = "kyth-large-active-provider-container"
        },
        {
            type = "recipe",
            name = "kyth-large-buffer-container",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-large-container", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-1",
            order = "b[large-buffer-container]",
            result = "kyth-large-buffer-container"
        },
        {
            type = "recipe",
            name = "kyth-large-passive-provider-container",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-large-container", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-1",
            order = "c[large-passive-provider-container]",
            result = "kyth-large-passive-provider-container"
        },
        {
            type = "recipe",
            name = "kyth-large-requester-container",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-large-container", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-1",
            order = "d[large-requester-container]",
            result = "kyth-large-requester-container"
        },
        {
            type = "recipe",
            name = "kyth-large-storage-container",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-large-container", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-1",
            order = "e[large-storage-container]",
            result = "kyth-large-storage-container"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-small-warehouse"] and settings.startup["kyth-small-warehouse"].value then
    -- -- -- -- -- -- -- --
    -- SMALL WAREHOUSES  --
    -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "recipe",
            name = "kyth-small-warehouse",
            energy_required = 2,
            enabled = false,
            ingredients =
            {
                {"kr-big-container", 2},
                {"steel-beam", 10}
            },
            subgroup = "storage",
            order = "a[items]-de[small-warehouse]",
            result = "kyth-small-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-small-active-provider-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-small-warehouse", 1},
                {"advanced-circuit", 5},
            },
            subgroup = "kr-logistics-2-2",
            order = "a[small-active-provider-warehouse]",
            result = "kyth-small-active-provider-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-small-buffer-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-small-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-2",
            order = "b[small-buffer-warehouse]",
            result = "kyth-small-buffer-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-small-passive-provider-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-small-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-2",
            order = "c[small-passive-provider-warehouse]",
            result = "kyth-small-passive-provider-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-small-requester-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-small-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-2",
            order = "d[small-requester-warehouse]",
            result = "kyth-small-requester-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-small-storage-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-small-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-2",
            order = "e[small-storage-warehouse]",
            result = "kyth-small-storage-warehouse"
        }
    })
end
-----------------------------------------------------------------------------------------------------------------
if settings.startup["kyth-medium-warehouse"] and settings.startup["kyth-medium-warehouse"].value then
    -- -- -- -- -- -- -- --
    -- MEDIUM WAREHOUSES  --
    -- -- -- -- -- -- -- --
    data:extend(
    {
        {
            type = "recipe",
            name = "kyth-medium-warehouse",
            energy_required = 2,
            enabled = false,
            ingredients =
            {
                {"kr-big-container", 3},
                {"steel-beam", 10}
            },
            subgroup = "storage",
            order = "a[items]-df[medium-warehouse]",
            result = "kyth-medium-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-medium-active-provider-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-medium-warehouse", 1},
                {"advanced-circuit", 5},
            },
            subgroup = "kr-logistics-2-3",
            order = "a[medium-active-provider-warehouse]",
            result = "kyth-medium-active-provider-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-medium-buffer-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-medium-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-3",
            order = "b[medium-buffer-warehouse]",
            result = "kyth-medium-buffer-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-medium-passive-provider-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-medium-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-3",
            order = "c[medium-passive-provider-warehouse]",
            result = "kyth-medium-passive-provider-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-medium-requester-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-medium-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-3",
            order = "d[medium-requester-warehouse]",
            result = "kyth-medium-requester-warehouse"
        },
        {
            type = "recipe",
            name = "kyth-medium-storage-warehouse",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"kyth-medium-warehouse", 1},
                {"advanced-circuit", 5}
            },
            subgroup = "kr-logistics-2-3",
            order = "e[medium-storage-warehouse]",
            result = "kyth-medium-storage-warehouse"
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
            type = "recipe",
            name = "kyth-massive-fluid-storage-tank",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"steel-plate", 120},
                {"steel-beam", 40},
                {"kr-steel-pipe", 24}
            },
            subgroup = "storage",
            order = "b[fluid]-d[massive-fluid-storage-tank]",
            result = "kyth-massive-fluid-storage-tank"
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
            type = "recipe",
            name = "kyth-steel-storage-tank",
            energy_required = 1,
            enabled = false,
            ingredients =
            {
                {"steel-plate", 20},
                {"steel-beam", 10},
                {"kr-steel-pipe", 4}
            },
            subgroup = "storage",
            order = "b[fluid]-aa[steel-storage-tank]",
            result = "kyth-steel-storage-tank"
        }
    })
end
