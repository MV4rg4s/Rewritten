-----------------------------------------------------------------------------------------------------------------------------------------
-- DRUGSINFLUENCES
-----------------------------------------------------------------------------------------------------------------------------------------
DrugsInfluences = {
	{ -224.18,123.53,69.67,250 },
	{ 994.01,-1771.79,31.78,250 },
	{ 388.3,2650.57,44.48,250 },
	{ -216.42,6317.71,31.49,250 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	["weedsack"] = {
		["Price"] = { ["Min"] = 400, ["Max"] = 450 },
		["Amount"] = { ["Min"] = 1, ["Max"] = 1 }
	},
	["cokesack"] = {
		["Price"] = { ["Min"] = 400, ["Max"] = 450 },
		["Amount"] = { ["Min"] = 1, ["Max"] = 1 }
	},
	["methsack"] = {
		["Price"] = { ["Min"] = 1250, ["Max"] = 1500 },
		["Amount"] = { ["Min"] = 1, ["Max"] = 1 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKDRUGS
-----------------------------------------------------------------------------------------------------------------------------------------
function ghost.CheckDrugs()
	local Return = false
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		for Item,v in pairs(List) do
			local Price = math.random(v["Price"]["Min"],v["Price"]["Max"])
			local Amount = math.random(v["Amount"]["Min"],v["Amount"]["Max"])

			if vRP.ConsultItem(Passport,Item,Amount) then
				Drugs[Passport] = { Item,Amount,Price * Amount }
				Return = true

				break
			end
		end
	end

	return Return
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENTDRUGS
-----------------------------------------------------------------------------------------------------------------------------------------
function ghost.PaymentDrugs()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not Active[Passport] and Drugs[Passport] and vRP.TakeItem(Passport,Drugs[Passport][1],Drugs[Passport][2]) then
		Active[Passport] = true

		local Valuation = Drugs[Passport][3]
		if Buffs["Dexterity"][Passport] and Buffs["Dexterity"][Passport] > os.time() then
			Valuation = Valuation + (Valuation * 0.1)
		end

		local Ped = GetPlayerPed(source)
		local Coords = GetEntityCoords(Ped)
		for k,v in pairs(DrugsInfluences) do
			local Distance = #(Coords - vec3(v[1],v[2],v[3]))
			if Distance <= v[4] then
				Valuation = Valuation + (Valuation * 0.1)
			end
		end

		TriggerClientEvent("player:Residuals",source,"Resíduo Orgânico.")

		if math.random(100) >= 50 then
			vRP.GenerateItem(Passport,"dollars2",Valuation,true)
		end

		if math.random(100) >= 90 then
			TriggerEvent("Wanted",source,Passport,60)

			local Coords = vRP.GetEntityCoords(source)
			local Service = vRP.NumPermission("Police")
			for Passports,Sources in pairs(Service) do
				async(function()
					TriggerEvent('sounds:source', 'crime', 0.4);
					TriggerClientEvent("NotifyPush",Sources,{ code = 20, title = "Venda de Drogas", x = Coords["x"], y = Coords["y"], z = Coords["z"], criminal = "Ligação Anônima", color = 16 })
				end)
			end
		end

		Active[Passport] = nil
		Drugs[Passport] = nil
	end
end