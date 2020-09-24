if settings.startup["kyth-steel-storage-tank"] and settings.startup["kyth-steel-storage-tank"].value then
    -- -- -- -- -- -- -- -- -- -- --
    -- STEEL FLUID STORAGE TANK   --
    -- -- -- -- -- -- -- -- -- -- --

    -- make changes to the vanilla storage tank because there is now a higher tier available
        -- if other tiers exist (because of mods), use these instead
    data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = data.raw["storage-tank"]["storage-tank"].fast_replaceable_group or "storage-tank"
    data.raw["storage-tank"]["storage-tank"].next_upgrade = data.raw["storage-tank"]["storage-tank"].next_upgrade or "kyth-steel-storage-tank"

    require ("util")
    require ("circuit-connector-sprites")
    
    data:extend(
    {   
        {
            type = "storage-tank",
            name = "kyth-steel-storage-tank",
            icon = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/icons/steel-storage-tank.png",
            icon_size = 64, icon_mipmaps = 4,
            flags = {"placeable-player", "player-creation", "not-rotatable"},
            minable = {mining_time = 0.5, result = "kyth-steel-storage-tank"},
            max_health = 800,
            corpse = "storage-tank-remnants",
            dying_explosion = "storage-tank-explosion",
            collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            damaged_trigger_effect =                        -- = hit_effects.entity(),
            {
                type = "create-entity",
                entity_name = "spark-explosion",
                offset_deviation = { {-0.5, -0.5}, {0.5, 0.5} },
                offsets = { {0, 1} },
                damage_type_filters = "fire"
            },
            fluid_box =
            {
                base_area = 500,
                pipe_covers = pipecoverspictures(),
                pipe_connections =
                {
                    -- west
                    {position = {-2, -1} },
                    {position = {-2,  1} },
                    -- south
                    {position = {-1, -2} },
                    {position = { 1, -2} },
                    -- east
                    {position = { 2, -1} },
                    {position = { 2,  1} },
                    -- north
                    {position = { 1,  2} },
                    {position = {-1,  2} }
                }
            },
            window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
            pictures =
            {
                picture =
                {
                    sheets =
                    {
                        {
                            filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/steel-storage-tank.png",
                            priority = "extra-high",
                            frames = 1,
                            width = 110,
                            height = 108,
                            shift = util.by_pixel(0, 4),
                            hr_version =
                            {
                                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/hr-steel-storage-tank.png",
                                priority = "extra-high",
                                frames = 1,
                                width = 219,
                                height = 215,
                                shift = util.by_pixel(-0.25, 3.75),
                                scale = 0.5
                            }
                        },
                        {
                            filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/steel-storage-tank-shadow.png",
                            priority = "extra-high",
                            frames = 1,
                            width = 146,
                            height = 77,
                            shift = util.by_pixel(30, 22.5),
                            draw_as_shadow = true,
                            hr_version =
                            {
                                filename = "__Kythbloods_Tweaks_and_Additions_for_Krastorio2__/graphics/entities/hr-steel-storage-tank-shadow.png",
                                priority = "extra-high",
                                frames = 1,
                                width = 291,
                                height = 153,
                                shift = util.by_pixel(29.75, 22.25),
                                scale = 0.5,
                                draw_as_shadow = true
                            }
                        }
                    }
                },
                fluid_background =
                {
                    filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
                    priority = "extra-high",
                    width = 32,
                    height = 15
                },
                window_background =
                {
                    filename = "__base__/graphics/entity/storage-tank/window-background.png",
                    priority = "extra-high",
                    width = 17,
                    height = 24,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
                        priority = "extra-high",
                        width = 34,
                        height = 48,
                        scale = 0.5
                    }
                },
                flow_sprite =
                {
                    filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                    priority = "extra-high",
                    width = 160,
                    height = 20
                },
                gas_flow =
                {
                    filename = "__base__/graphics/entity/pipe/steam.png",
                    priority = "extra-high",
                    line_length = 10,
                    width = 24,
                    height = 15,
                    frame_count = 60,
                    axially_symmetrical = false,
                    direction_count = 1,
                    animation_speed = 0.25,
                    hr_version =
                    {
                        filename = "__base__/graphics/entity/pipe/hr-steam.png",
                        priority = "extra-high",
                        line_length = 10,
                        width = 48,
                        height = 30,
                        frame_count = 60,
                        axially_symmetrical = false,
                        animation_speed = 0.25,
                        direction_count = 1,
                        scale = 0.5
                    }
                }
            },
            flow_length_in_ticks = 360,
            vehicle_impact_sound =                  -- sounds.generic_impact,
            {
                {
                  filename = "__base__/sound/car-metal-impact-2.ogg", volume = 0.5
                },
                {
                  filename = "__base__/sound/car-metal-impact-3.ogg", volume = 0.5
                },
                {
                  filename = "__base__/sound/car-metal-impact-4.ogg", volume = 0.5
                },
                {
                  filename = "__base__/sound/car-metal-impact-5.ogg", volume = 0.5
                },
                {
                  filename = "__base__/sound/car-metal-impact-6.ogg", volume = 0.5
                }
            },
            open_sound =                            -- sounds.machine_open,
            {
                {
                  filename = "__base__/sound/machine-open.ogg", volume = 0.5
                }
            },
            close_sound =                           -- sounds.machine_close,
            {
                {
                  filename = "__base__/sound/machine-close.ogg", volume = 0.5
                }
            },
            working_sound =
            {
                sound =
                {
                    filename = "__base__/sound/storage-tank.ogg",
                    volume = 0.6
                },
                match_volume_to_activity = true,
                audible_distance_modifier = 0.5,
                max_sounds_per_type = 3
            },
        
            circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
            circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
            circuit_wire_max_distance = default_circuit_wire_max_distance,
            water_reflection =
            {
                pictures =
                {
                    filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
                    priority = "extra-high",
                    width = 24,
                    height = 24,
                    shift = util.by_pixel(5, 35),
                    variation_count = 1,
                    scale = 5,
                },
                rotate = false,
                orientation_to_variation = false
            },
            fast_replaceable_group = data.raw["storage-tank"]["storage-tank"].fast_replaceable_group or "storage-tank"
        }
    })
end