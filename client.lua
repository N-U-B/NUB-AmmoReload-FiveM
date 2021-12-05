ESX = nil
ReloadKey = 45
--local pistol = 453432689, -1716589765, -1593441988, -1076751822, -771403250, 0x22D8FE39
--local assault = -270015777, -1074790547, -2084633992, -1357824103, -1063057011
Citizen.CreateThread(function()
	while trp == nil do
		TriggerEvent('esx:getSharedObject', function(obj) trp = obj end)
		Citizen.Wait(0)
  end
  
  while true do
		Citizen.Wait(0)
    
    if IsControlJustReleased(1, ReloadKey) then
      trp.ShowNotification("You Attempt To Reload The Weapon")
      DisablePlayerFiring(GetPlayerPed(-1), true)

      TriggerServerEvent('trp:clip:triggeronreload')
    Citizen.Wait(2000)
    end  
  end
end)

RegisterNetEvent('trp_clip:reloadclip')
AddEventHandler('trp_clip:reloadclip', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash == 453432689 then
      TriggerServerEvent('trp_clip:remove')

      local maxWeaponAmmo = GetMaxAmmoInClip(ped, hash, 1)

      SetPedAmmo(GetPlayerPed(-1), hash, maxWeaponAmmo)
      Citizen.Wait(1000)
      if hash == 453432689 then
      trp.ShowNotification("You've succesfully reloaded the weapon")
    else
      if hash == -2084633992 then
      trp.ShowNotification("You either need A Pistol or Pistol Ammuntion")
      end
    end
  else
    if hash == -2084633992 then
    trp.ShowNotification("You cannot use An Assault Rifle with Pistol Ammuntion!")
  end
end
end
end)

RegisterNetEvent('trp_clip:reload')
AddEventHandler('trp_clip:reload', function()
  MakePedReload(GetPlayerPed(-1))
end)
-----------------------------------
RegisterNetEvent('trp_clip:reloadclip')
AddEventHandler('trp_clip:reloadclip', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash == -771403250 then
      TriggerServerEvent('trp_clip:remove')

      local maxWeaponAmmo = GetMaxAmmoInClip(ped, hash, 1)

      SetPedAmmo(GetPlayerPed(-1), hash, maxWeaponAmmo)
      Citizen.Wait(1000)
      trp.ShowNotification("You've succesfully reloaded the weapon")
  else
    trp.ShowNotification("You cannot use this ammunition box with this weapon")
  end
end)
-----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
ESX = nil
ReloadKey = 45
local pistol = 453432689, -1716589765, -1593441988, -1076751822, -771403250, 0x22D8FE39
local assault = -270015777, -1074790547, -2084633992, -1357824103, -1063057011
Citizen.CreateThread(function()
	while trp == nil do
		TriggerEvent('esx:getSharedObject', function(obj) trp = obj end)
		Citizen.Wait(0)
  end
  
  while true do
		Citizen.Wait(0)
    
    if IsControlJustReleased(1, ReloadKey) then
      trp.ShowNotification("You Attempt To Reload The Weapon")
      DisablePlayerFiring(GetPlayerPed(-1), true)

      TriggerServerEvent('trp:clip:triggeronreload1')
    Citizen.Wait(2000)
    end  
  end
end)

RegisterNetEvent('trp_clip:reloadclip1')
AddEventHandler('trp_clip:reloadclip1', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash == -2084633992 then
      TriggerServerEvent('trp_clip:remove1')

      local maxWeaponAmmo = GetMaxAmmoInClip(ped, hash, 1)

      SetPedAmmo(GetPlayerPed(-1), hash, maxWeaponAmmo)
      Citizen.Wait(1000)
      trp.ShowNotification("You've succesfully reloaded the weapon")
  else
    trp.ShowNotification("You cannot use this ammunition box with this weapon")
  end
end)

RegisterNetEvent('trp_clip:reload1')
AddEventHandler('trp_clip:reload1', function()
  MakePedReload(GetPlayerPed(-1))
end)
-------------------

RegisterNetEvent('trp_clip:reloadclip1')
AddEventHandler('trp_clip:reloadclip1', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash == -1074790547 then
      TriggerServerEvent('trp_clip:remove1')

      local maxWeaponAmmo = GetMaxAmmoInClip(ped, hash, 1)

      SetPedAmmo(GetPlayerPed(-1), hash, maxWeaponAmmo)
      Citizen.Wait(1000)
      trp.ShowNotification("You've succesfully reloaded the weapon")
  else
    trp.ShowNotification("You cannot use this ammunition box with this weapon")
  end
end)

RegisterNetEvent('trp_clip:reload1')
AddEventHandler('trp_clip:reload1', function()
  MakePedReload(GetPlayerPed(-1))
end)