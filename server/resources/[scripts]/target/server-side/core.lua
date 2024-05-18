-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
ghost = {}
Tunnel.bindInterface("target",ghost)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function ghost.CheckIn()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.GetHealth(source) <= 100 then
			if vRP.PaymentFull(Passport,975) then
				vRP.UpgradeHunger(Passport,20)
				vRP.UpgradeThirst(Passport,20)
				TriggerEvent("Reposed",source,Passport,900)

				return true
			else
				TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
			end
		else
			if vRP.Request(source,"Prosseguir o tratamento por <b>$750</b> dólares?","Sim, iniciar tratamento","Não, volto mais tarde") then
				if vRP.PaymentFull(Passport,750) then
					vRP.UpgradeHunger(Passport,20)
					vRP.UpgradeThirst(Passport,20)

					return true
				else
					TriggerClientEvent("Notify",source,"vermelho","<b>Dólares</b> insuficientes.",5000)
				end
			end
		end
	end

	return false
end