data:extend({
    {
		type = "int-setting",
		name = "kyth-fluid-wagon-capacity",
		setting_type = "startup",
		default_value = 25000,
        allowed_values = {15000, 20000, 25000, 30000, 40000, 50000, 75000, 100000, 125000, 150000, 175000, 200000},
		order = "a"
    },
    {
        type = "bool-setting",
        name = "kyth-nuclear-locomotive-buff",
        setting_type = "startup",
        default_value = true,
        order = "a2"
    },
    {
        type = "bool-setting",
        name = "kyth-improve-underground-distance",
        setting_type = "startup",
        default_value = true,
        order = "b"
    },
    {
        type = "bool-setting",
        name = "kyth-large-container",
        setting_type = "startup",
        default_value = true,
        order = "c"
    },
    {
        type = "bool-setting",
        name = "kyth-small-warehouse",
        setting_type = "startup",
        default_value = true,
        order = "d"
    },
    {
        type = "bool-setting",
        name = "kyth-medium-warehouse",
        setting_type = "startup",
        default_value = true,
        order = "e"
    },
    {
        type = "bool-setting",
        name = "kyth-filter-inserter-research",
        setting_type = "startup",
        default_value = true,
        order = "f"
    },
    {
        type = "bool-setting",
        name = "kyth-reorder",
        setting_type = "startup",
        default_value = true,
        order = "g"
    },
    {
        type = "bool-setting",
        name = "kyth-angels-mobility-changes",
        setting_type = "startup",
        default_value = true,
        order = "h"
    },
    {
        type = "bool-setting",
        name = "kyth-angels-mobility-combatibility-script-fix",
        setting_type = "startup",
        default_value = true,
        order = "i"
    },
    {
        type = "bool-setting",
        name = "kyth-massive-fluid-storage-tank",
        setting_type = "startup",
        default_value = false,
        order = "j"
    },
    {
        type = "bool-setting",
        name = "kyth-steel-storage-tank",
        setting_type = "startup",
        default_value = true,
        order = "k"
    },
    {
        type = "double-setting",
        name = "kyth-steel-pipe-capacity",
        setting_type = "startup",
        default_value = 1.25,
        allowed_values = {1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4},
        order = "k"
    }
})