-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORDS
-----------------------------------------------------------------------------------------------------------------------------------------
Discords = {
	["Connect"] = "",
	["Disconnect"] = "",
	["Airport"] = "",
	["Deaths"] = "",
	["Police"] = "",
	["Paramedic"] = "",
	["Gemstone"] = "",
	["Login"] = "",
	["AccountCreated"] = "https://discord.com/api/webhooks/1241156317071278222/UMsQ3pOMaA_BE1vKXaAQRk6P7AoGAa1eZpQWgTX-xXT_XdbPFy2br1S2SDEzI2_jHKAY",

	["Chiliad"] = "",
	["Families"] = "",
	["Highways"] = "",
	["Vagos"] = "",

	["Barragem"] = "",
	["Farol"] = "",
	["Parque"] = "",
	["Sandy"] = "",
	["Petroleo"] = "",
	["Praia-1"] = "",
	["Praia-2"] = "",
	["Zancudo"] = "",

	["Madrazzo"] = "",
	["Playboy"] = "",
	["TheSouth"] = "",
	["Vineyard"] = "",

	["Tpto"] = "",
	["Tptome"] = "",
	["Fix"] = "",
	["Blips"] = "",
	["God"] = "",
	["Ban"] = "",
	["Unban"] = "",
	["Kick"] = "",
	["Item"] = "",
	["Itemall"] = "",
	["Item2"] = "",
	["Group"] = "",
	["Ungroup"] = "",
	["Garages"] = "",
	["Clearchest"] = "",
	["Clearinv"] = "",

	["Prisao"] = "",
	["Multas"] = "",
	["Deposito"] = "",
	["Saque"] = "",
	["Avisopm"] = "",
	["Avisomec"] = "",
	["LojaPolicia"] = "",
	["LojaVip"] = "",
	["Helicrash"] = ""
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Discord",function(Hook,Message,Color)
	PerformHttpRequest(Discords[Hook],function(err,text,headers) end,"POST",json.encode({
		username = ServerName,
		embeds = { { color = Color, description = Message } }
	}),{ ["Content-Type"] = "application/json" })
end)