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