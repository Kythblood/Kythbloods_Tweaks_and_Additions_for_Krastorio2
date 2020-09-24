-- -- -- -- -- -- -- -- --
-- BIG HEAT PIPE (3x2)  --
-- -- -- -- -- -- -- -- --

data:extend(
{
    {
        type = "item",
        name = "big-heat-pipe",
        icon = "__base__/graphics/icons/heat-pipe.png",
        icon_size = 64,
        icon_mipmaps = 4,
        order = "f[nuclear-energy]-bb[big-heat-pipe]-n",
        subgroup = "energy",
        stack_size = 50,
        place_result = "big-heat-pipe"
    }
})


data:extend(
{
    {
        type = "heat-pipe",
        name = "big-heat-pipe",
        icon = "__base__/graphics/icons/heat-pipe.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "big-heat-pipe"},
        max_health = 200,
        corpse = "heat-pipe-remnants",
        dying_explosion = "heat-pipe-explosion",
        random_corpse_variation = true,
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/heat-pipe.ogg",
                    volume = 0.4
                }
            },
            match_volume_to_activity = true,
            max_sounds_per_type = 3,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        resistances =
        {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "explosion",
                percent = 30
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = {{-1.3, -0.8}, {1.3, 0.8}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        --log("Debug after damaged_trigger_effect"),
        heat_buffer =
        {
            max_temperature = 1000,
            specific_heat = "6MJ",
            max_transfer = "6GW",
            minimum_glow_temperature = 350,
            connections =
            {
                {
                    position = {-1, 0.5},
                    direction = defines.direction.north
                },
                {
                    position = {0, 0.5},
                    direction = defines.direction.north
                },
                {
                    position = {1, 0.5},
                    direction = defines.direction.north
                },
                {
                    position = {1, -0.5},
                    direction = defines.direction.east
                },
                {
                    position = {1, 0.5},
                    direction = defines.direction.east
                },
                {
                    position = {-1, 0.5},
                    direction = defines.direction.south
                },
                {
                    position = {0, 0.5},
                    direction = defines.direction.south
                },
                {
                    position = {1, 0.5},
                    direction = defines.direction.south
                },
                {
                    position = {-1, -0.5},
                    direction = defines.direction.west
                },
                {
                    position = {-1, 0.50},
                    direction = defines.direction.west
                }
            },
            heat_glow =
            {
                filename = "__base__/graphics/entity/heat-pipe/heated-glow.png",
                priority = "extra-high",
                width = 55,
                height = 55,
                tint = heat_glow_tint
            }
        },
        --log("Debug before heat_buffer"),

        connection_sprites =
        {
            single =
            {{
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            straight_vertical =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-vertical-1.png",
                width = 128,
                height = 192
            }},
            straight_horizontal =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            corner_right_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            corner_left_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            corner_right_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            corner_left_down =
            {{
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-straight-horizontal-1.png",
                width = 192,
                height = 128
            }},
            t_up =
            {{
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-t-horizontal-1.png",
                width = 192,
                height = 128
            }},
            t_down =
            {{
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-t-horizontal-1.png",
                width = 192,
                height = 128
            }},
            t_right =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-t-horizontal-1.png",
                width = 192,
                height = 128
            }},
            t_left =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-t-horizontal-1.png",
                width = 192,
                height = 128
            }},
            cross =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-cross-1.png",
                width = 192,
                height = 128
            }},
            ending_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-ending-up-1.png",
                width = 128,
                height = 192
            }},
            ending_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-ending-down-1.png",
                width = 128,
                height = 192
            }},
            ending_right =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-ending-right-1.png",
                width = 192,
                height = 128
            }},
            ending_left =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heat-pipe-ending-left-1.png",
                width = 192,
                height = 128
            }}
        },
        --log("Debug beforeconnection_sprites"),

        heat_glow_sprites =
        {
            single =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            straight_vertical = 
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-t-vertical-1.png",
                width = 128,
                height = 192
            }},
            straight_horizontal = 
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-t-horizontal-1.png",
                width = 192,
                height = 128
            }},
            corner_right_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            corner_left_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            corner_right_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            corner_left_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            t_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            t_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            t_right =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            t_left =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            cross =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            ending_up =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            ending_down =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            ending_right =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }},
            ending_left =
            {{ 
                priority = "extra-high",
                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/big-heat-pipe/hr-big-heated-blank.png",
                width = 192,
                height = 128
            }}
        }
    }
}) 