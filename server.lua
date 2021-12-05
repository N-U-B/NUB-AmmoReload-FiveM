ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    trp = obj
end)

RegisterServerEvent('trp_clip:remove')
AddEventHandler('trp_clip:remove', function()
    local _source = source
    local xPlayer = trp.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('bullet', 1)
end)

RegisterServerEvent('trp:clip:triggeronreload')
AddEventHandler('trp:clip:triggeronreload', function()
      local xPlayer = trp.GetPlayerFromId(source)
      local clip = xPlayer.getInventoryItem('bullet')

      if clip and clip.count ~= 0 then
        TriggerClientEvent('trp_clip:reloadclip', source)
        TriggerClientEvent('trp_clip:reload', source)
      end
end)

trp.RegisterUsableItem('bullet', function(source)
    TriggerClientEvent('trp_clip:reloadclip', source)
end)
----------------------------------
-----------------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    trp = obj
end)

RegisterServerEvent('trp_clip:remove1')
AddEventHandler('trp_clip:remove1', function()
    local _source = source
    local xPlayer = trp.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('assaultbullet', 1)
end)

RegisterServerEvent('trp:clip:triggeronreload1')
AddEventHandler('trp:clip:triggeronreload1', function()
      local xPlayer = trp.GetPlayerFromId(source)
      local clip = xPlayer.getInventoryItem('assaultbullet')

      if clip and clip.count ~= 0 then
        TriggerClientEvent('trp_clip:reloadclip1', source)
        TriggerClientEvent('trp_clip:reload1', source)
      end
end)

trp.RegisterUsableItem('assaultbullet', function(source)
    TriggerClientEvent('trp_clip:reloadclip1', source)
end)