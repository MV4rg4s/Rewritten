-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Street = {}
Tunnel.bindInterface("identidade",Street)
vSERVER = Tunnel.getInterface("identidade")
local open = false

RegisterCommand('identidade', function(source, args, rawCommand)
	if open == false then
        open = true
        SendNUIMessage({
            type = 'abrir'
        })
	else 
		open = false
        SendNUIMessage({
            type = 'fechar'
        })
	end

end)
RegisterKeyMapping("identidade","Abrir Identidade","keyboard","F11")
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTBANK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestBank",function(data,cb)
	local resultado = vSERVER.requestBank()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTNAME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestName",function(data,cb)
	local resultado = vSERVER.requestName()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)

RegisterNUICallback("requestID",function(data,cb)
	local resultado = vSERVER.requestID()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)

RegisterNUICallback("requestRG",function(data,cb)
	local resultado = vSERVER.requestRG()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)

RegisterNUICallback("requestnumber",function(data,cb)
	local resultado = vSERVER.requestnumber()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)


RegisterNUICallback("requestgems",function(data,cb)
	local resultado = vSERVER.requestgems()
	while identity do
		Citizen.Wait(2)
	end
	if resultado then
		cb({ resultado = resultado })
	end
end)




-----------------------------------------------------------------------------------------------------------------------------------------
-- close
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(data)
	SetNuiFocus(false,false)
end)

