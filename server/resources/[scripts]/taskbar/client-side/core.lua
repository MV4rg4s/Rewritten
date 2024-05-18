-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("taskbar",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Status = ""
local Progress = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKBAR:FAIL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("failure",function(Data,Callback)
	SetNuiFocus(false,false)
	Status = "failure"
	Progress = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKBAR:SUCESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("success",function(Data,Callback)
	SetNuiFocus(false,false)
	Status = "success"
	Progress = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKBAR:TASKBAR
-----------------------------------------------------------------------------------------------------------------------------------------
function taskBar(Timer)
	if Progress then return end

	Progress = true
	SetNuiFocus(true,false)
	SendNUIMessage({ name = "Open", payload = Timer })

	while Progress do
		Wait(0)
	end

	if Status == "success" then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskTable()
	if taskBar(12000) then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKONE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskOne()
	if taskBar(11500) then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTWO
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskTwo()
	if taskBar(12000) then
		if taskBar(11500) then
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTHREE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskThree()
	if taskBar(12500) then
		if taskBar(12000) then
			if taskBar(11500) then
				return true
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKMECHANIC
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskMechanic()
	if taskBar(17500) then
		if taskBar(15000) then
			if taskBar(12500) then
				if taskBar(12000) then
					return true
				end
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTYRE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskTyre()
	if taskBar(17500) then
		if taskBar(15000) then
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKFISHING
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskFishing()
	if taskBar(12000) then
		if taskBar(11000) then
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTHREE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskLockpick()
	if taskBar(12500) then
		if taskBar(12000) then
			if taskBar(11500) then
				return true
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STEALTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.stealTrunk()
	if taskBar(14500) then
		if taskBar(13500) then
			if taskBar(12500) then
				if taskBar(11500) then
					return true
				end
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEEDS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Weeds()
	if taskBar(11000) then
		if taskBar(10750) then
			if taskBar(10500) then
				if taskBar(10250) then
					return true
				end
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKTHREE
-----------------------------------------------------------------------------------------------------------------------------------------
exports("taskThree",function()
	if taskBar(12500) then
		if taskBar(12000) then
			if taskBar(11500) then
				return true
			end
		end
	end

	return false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKDOORS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskDoors()
	if taskBar(11000) then
		if taskBar(10750) then
			if taskBar(10500) then
				if taskBar(10250) then
					return true
				end
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKHANDCUFF
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskHandcuff()
	if taskBar(7000) then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPGRADEVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.UpgradeVehicle()
	if taskBar(12000) then
		if taskBar(11750) then
			if taskBar(11500) then
				if taskBar(11250) then
					if taskBar(11000) then
						if taskBar(10750) then
							if taskBar(10500) then
								if taskBar(10250) then
									return true
								end
							end
						end
					end
				end
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKROBBERYS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.taskRobberys(Register)
	if taskBar(12000) then
		if taskBar(11750) then
			if taskBar(11500) then
				if taskBar(11250) then
					if Register ~= "register" and taskBar(11000) then
						if taskBar(10750) then
							if taskBar(10500) then
								if taskBar(10250) then
									return true
								end
							end
						end
					else
						return true
					end
				end
			end
		end
	end

	return false
end