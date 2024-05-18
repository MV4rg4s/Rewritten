-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("shortcuts")
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOWSHORTCUTS
-----------------------------------------------------------------------------------------------------------------------------------------
function ShowShortcuts()
	SendNUIMessage({ name = "Open", payload = vSERVER.Shortcuts() })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- HIDESHORTCUTS
-----------------------------------------------------------------------------------------------------------------------------------------
function HideShortcuts()
	SendNUIMessage({ name = "Close", payload = false })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- HIDESHORTCUTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("+shortcuts",ShowShortcuts)
RegisterCommand("-shortcuts",HideShortcuts)
RegisterKeyMapping("+shortcuts","Visualizar atalhos.","keyboard","TAB")