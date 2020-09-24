-- create a large container (3x3) based on the K2 medium container (2x2 chest)
local function createLargeContainer(newName, baseName, type)
    --log("Debug: createLargeContainer with:\nnewName: " .. newName .. "\nbaseName: " .. baseName)
    local container = table.deepcopy(data.raw[type][baseName])
    --log("Debug: container after deepcopy: " .. serpent.block(container))

    container.name = newName
    container.minable.result = newName

    container.max_health = 800
    container.inventory_size = 200
    container.collision_box = {{-1.25, -1.25}, {1.25, 1.25}}
    container.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    
    -- if type for the logistic ones its called animation
    if type == "container" then 
        container.picture.scale = 1 / (2 / 3)
        container.picture.hr_version.scale = container.picture.hr_version.scale / (2 / 3)
    else
        container.animation.scale = 1 / (2 / 3)
        container.animation.hr_version.scale = container.animation.hr_version.scale / (2 / 3)
    end
    
    data:extend({
        container
    })
end

if settings.startup["kyth-large-container"].value then
    -- large container
    createLargeContainer("kyth-large-container", "kr-medium-container", "container")
    -- large logistic containers
    createLargeContainer("kyth-large-active-provider-container", "kr-medium-active-provider-container", "logistic-container")
    createLargeContainer("kyth-large-passive-provider-container", "kr-medium-passive-provider-container", "logistic-container")
    createLargeContainer("kyth-large-storage-container", "kr-medium-storage-container", "logistic-container")
    createLargeContainer("kyth-large-buffer-container", "kr-medium-buffer-container", "logistic-container")
    createLargeContainer("kyth-large-requester-container", "kr-medium-requester-container", "logistic-container")
end