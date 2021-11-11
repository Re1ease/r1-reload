ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("r1reload:checkInventory")
AddEventHandler("r1reload:checkInventory", function(itemCheck)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem = xPlayer.getInventoryItem(Config.Item)

    if xItem.count < 1 then
        TriggerClientEvent("r1reload:reload", source, false)
    else
        TriggerClientEvent("r1reload:reload", source, true)
    end
end)

RegisterNetEvent("r1reload:removeAmmoBox")
AddEventHandler("r1reload:removeAmmoBox", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem = xPlayer.getInventoryItem(Config.Item)

    xPlayer.removeInventoryItem(Config.Item, 1)
end)