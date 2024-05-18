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
Tunnel.bindInterface("identidade",ghost)

function ghost.requestName()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.name
end

function ghost.requestID()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return Passport
end

function ghost.requestRG()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.name2
end

function ghost.requestnumber()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.phone
end

function ghost.requestBank()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.bank
end

function ghost.requestgems()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.gems
end