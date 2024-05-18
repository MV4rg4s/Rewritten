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

function Street.requestName()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.name
end

function Street.requestID()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return Passport
end

function Street.requestRG()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.name2
end

function Street.requestnumber()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.phone
end

function Street.requestBank()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.bank
end

function Street.requestgems()
    local source = source 
    local Passport = vRP.Passport(source)
    local identity = vRP.Identity(Passport)

	return identity.gems
end