--- Get Model Name
---@param vehicle entity
---@return string
local function GetModelName(vehicle)
    local newName = nil
    local model = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
    local model_label = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    if Config.Debug then print(model:lower(), model_label:lower()) end
    for k, name in pairs(Config.Names) do
        if model ~= nil and name.wrong == model:lower() then newName = name.good end
        if model_label ~= nil and name.wrong == model_label:lower() then newName = name.good end
    end
    if newName == nil then
        if model ~= nil then 
            newName = model
        else
            if model_label ~= nil then newName = model_label end 
        end
    end
    if Config.Debug then print("new name "..newName:lower()) end
    return newName:lower()
end

exports('GetModelName', GetModelName)

--- Get Vehicle Offset X
---@param vehicle entity
---@return number
local function GetVehicleOffsetX(vehicle)
    local offset = 0.0
    local model = GetModelName(vehicle)
    if (Config.VehiclesOffset[model]) then offset = Config.VehiclesOffset[model].x end
    return offset
end
exports('GetVehicleOffsetX', GetVehicleOffsetX)

--- Get Vehicle Offset Y
---@param vehicle entity
---@return number
local function GetVehicleOffsetY(vehicle)
    local offset = 0.0
    local model = GetModelName(vehicle)
    if (Config.VehiclesOffset[model]) then offset = Config.VehiclesOffset[model].y end
    return offset
end
exports('GetVehicleOffsetY', GetVehicleOffsetY)

--- Get Vehicle Offset Z
---@param vehicle entity
---@return number
local function GetVehicleOffsetZ(vehicle)
    local offset = 0.0
    local model = GetModelName(vehicle)
    if (Config.VehiclesOffset[model]) then offset = Config.VehiclesOffset[model].z end
    return offset
end
exports('GetVehicleOffsetZ', GetVehicleOffsetZ)

--- Get Vehicle Offset
---@param vehicle entity
---@return number
local function GetVehicleOffset(vehicle)
    local offsetX, offsetY, offsetZ = 0.0, 0.0, 0.0
    local model = GetModelName(vehicle)
    if (Config.Vehicles[model]) then 
        offsetX = Config.VehiclesOffset[model].x
        offsetY = Config.VehiclesOffset[model].y
        offsetZ = Config.VehiclesOffset[model].z
    end
    return offsetX, offsetY, offsetZ
end
exports('GetVehicleOffset', GetVehicleOffset)
