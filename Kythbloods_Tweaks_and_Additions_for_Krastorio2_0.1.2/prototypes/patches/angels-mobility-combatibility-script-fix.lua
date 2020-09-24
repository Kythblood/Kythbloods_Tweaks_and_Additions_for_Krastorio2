if settings.startup["kyth-angels-mobility-combatibility-script-fix"] and settings.startup["kyth-angels-mobility-combatibility-script-fix"].value then

    if mods["angelsaddons-mobility"] then
        local function removeEquipment(equipments, equipment_name)
            for index, inner_equipment_name in pairs(equipments) do
                if inner_equipment_name == equipment_name then
                    table.remove(equipments, index)
                    break
                end
            end
        end
        
        local function changeLocomotiveBurnerCategory(locomotive_name)
            if krastorio.general.getSafeSettingValue("kr-rebalance-vehicles&fuels") and data.raw.locomotive[locomotive_name] and data.raw.locomotive[locomotive_name].burner then
                data.raw.locomotive[locomotive_name].burner.fuel_category   = nil
                data.raw.locomotive[locomotive_name].burner.fuel_categories = {"chemical", "vehicle-fuel"}
            end
        end
    

        local new_train_grids_crawler =
        {
            "angels-crawler",
            "angels-crawler-bot-wagon",
            "angels-crawler-locomotive",
            "angels-crawler-loco-wagon",
            "angels-crawler-wagon"
        }
          
        for _, grid_name in pairs(new_train_grids_crawler) do
            if data.raw["equipment-grid"][grid_name] then
                removeEquipment(data.raw["equipment-grid"][grid_name].equipment_categories, "angels-basegame-movement")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "universal-equipment")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "vehicle-equipment")
            end
        end
        
        local new_locomotive_names_crawler =
        {
            "crawler-locomotive",
            "crawler-locomotive-wagon"
        }
        
        for _, locomotive_name in pairs(new_locomotive_names_crawler) do
            changeLocomotiveBurnerCategory(locomotive_name)
        end
    -----------------------------------------------------------------------------------------------------------------------
        
        local new_train_grids_petro =
        {
            "angels-petro-locomotive",	  
            "angels-petro-tank1",	  
            "angels-petro-tank2"
        }
          
        for _, grid_name in pairs(new_train_grids_petro) do
            if data.raw["equipment-grid"][grid_name] then
                removeEquipment(data.raw["equipment-grid"][grid_name].equipment_categories, "angels-basegame-movement")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "universal-equipment")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "vehicle-equipment")
            end
        end
        
        changeLocomotiveBurnerCategory("petro-locomotive-1")

    -----------------------------------------------------------------------------------------------------------------------
        
        local new_train_grids_smelting =
        {
            "angels-smelting-locomotive",	  
            "angels-smelting-locomotive-tender",	  
            "angels-smelting-wagon"
        }
          
        for _, grid_name in pairs(new_train_grids_smelting) do
            if data.raw["equipment-grid"][grid_name] then
                removeEquipment(data.raw["equipment-grid"][grid_name].equipment_categories, "angels-basegame-movement")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "universal-equipment")
                table.insert(data.raw["equipment-grid"][grid_name].equipment_categories, "vehicle-equipment")
            end
        end
        
        local new_locomotive_names_smelting =
        {
            "smelting-locomotive-1",
            "crawler-locomotive-tender"
        }
        
        for _, locomotive_name in pairs(new_locomotive_names_smelting) do
            changeLocomotiveBurnerCategory(locomotive_name)
        end
    end

end