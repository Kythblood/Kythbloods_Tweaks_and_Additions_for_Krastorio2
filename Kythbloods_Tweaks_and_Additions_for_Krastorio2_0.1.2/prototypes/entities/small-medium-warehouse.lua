-- create a smaller version (4x4 or 5x5) of the K2 warehouse (6x6)
local function createWarehouse(newName, baseName, size, type)

    local container = table.deepcopy(data.raw[type][baseName])

    container.name = newName
    container.minable.result = newName

    if size == 4 then
        container.max_health = 1000
        container.inventory_size = 300
        container.collision_box = {{-1.75, -1.75}, {1.75, 1.75}}
        container.selection_box = {{-2, -2}, {2, 2}}
        if type == "container" then 
            container.picture.scale = container.picture.scale / (6 / 4)
            container.picture.hr_version.scale = container.picture.hr_version.scale / (6 / 4)
        else
            container.animation.scale = container.animation.scale / (6 / 4)
            container.animation.hr_version.scale = container.animation.hr_version.scale / (6 / 4)
        end
    elseif size == 5 then
        container.max_health = 1200
        container.inventory_size = 400
        container.collision_box = {{-2.25, -2.25}, {2.25, 2.25}}
        container.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
        if type == "container" then 
            container.picture.scale = container.picture.scale / (6 / 5)
            container.picture.hr_version.scale = container.picture.hr_version.scale / (6 / 5)
        else
            container.animation.scale = container.animation.scale / (6 / 5)
            container.animation.hr_version.scale = container.animation.hr_version.scale / (6 / 5)
        end
    end

    data:extend({
        container
    })
end

if settings.startup["kyth-small-warehouse"] and settings.startup["kyth-small-warehouse"].value then
    -- small warehouse (4x4)
    createWarehouse("kyth-small-warehouse", "kr-big-container", 4, "container")
    -- small logistic warehouses (4x4)
    createWarehouse("kyth-small-active-provider-warehouse", "kr-big-active-provider-container", 4, "logistic-container")
    createWarehouse("kyth-small-passive-provider-warehouse", "kr-big-passive-provider-container", 4, "logistic-container")
    createWarehouse("kyth-small-storage-warehouse", "kr-big-storage-container", 4, "logistic-container")
    createWarehouse("kyth-small-buffer-warehouse", "kr-big-buffer-container", 4, "logistic-container")
    createWarehouse("kyth-small-requester-warehouse", "kr-big-requester-container", 4, "logistic-container")
end
if settings.startup["kyth-medium-warehouse"] and settings.startup["kyth-medium-warehouse"].value then
    -- medium warehouse (5x5)
    createWarehouse("kyth-medium-warehouse", "kr-big-container", 5, "container")
    -- medium logistic warehouses (5x5)
    createWarehouse("kyth-medium-active-provider-warehouse", "kr-big-active-provider-container", 5, "logistic-container")
    createWarehouse("kyth-medium-passive-provider-warehouse", "kr-big-passive-provider-container", 5, "logistic-container")
    createWarehouse("kyth-medium-storage-warehouse", "kr-big-storage-container", 5, "logistic-container")
    createWarehouse("kyth-medium-buffer-warehouse", "kr-big-buffer-container", 5, "logistic-container")
    createWarehouse("kyth-medium-requester-warehouse", "kr-big-requester-container", 5, "logistic-container")
end