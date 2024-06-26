-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("initial")
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("resgatar",function()
	if vSERVER.CheckInit() then
		SetNuiFocus(true,true)
		SetCursorLocation(0.5,0.5)
		TriggerEvent("hud:Active",false)
		SendNUIMessage({ name = "Open" })
	end	
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INITIAL:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("initial:Open")
AddEventHandler("initial:Open",function()
	if vSERVER.CheckInit() then
		SetNuiFocus(true,true)
		SetCursorLocation(0.5,0.5)
		TriggerEvent("hud:Active",false)
		SendNUIMessage({ name = "Open" })
	end	
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Save",function(Data,Callback)
	SetNuiFocus(false,false)
	vSERVER.Save(Data["name"])
	TriggerEvent("hud:Active",true)
	Callback("Save")
end)