--[[-----------------------------------------------------------------------------
							   By: ZΛKƬΛK
-------------------------------------------------------------------------------]]


--[[----------------------------------
	  	  Do Not Edit Below!
    If you do it is at your own risk
	      I cannot help you.
------------------------------------]]


if SERVER then
	include("sh_entityspawner.lua")
	util.AddNetworkString("sendEnt")
	util.AddNetworkString("removeEnt")
	util.AddNetworkString("spawnEnt")
end



net.Receive("sendEnt", function(len, ply)
	if (!IsValid(ply)) then return end
	local msg = net.ReadString()
	local entity = string.sub(msg, 1, string.find(msg, "|") - 1) -- Finds SENT
	local mdl = string.sub(msg, string.find(msg, "|") + 1,string.len(msg)) -- Finds Model of Ent

	local pos = ply:GetEyeTrace().HitPos -- Vector of Where the Player is Looking.
	local tracerTable = pos:ToTable() -- Turn Vector to Table
	local curTable = (ply:GetPos()):ToTable() -- Turn the current position Vector to a Table

	local xt = tracerTable[1] -- X Pos of Tracer Pos
	local yt = tracerTable[2] -- Y Pos of Tracer Pos

	local xc = curTable[1] -- X Pos of Current Pos
	local yc = curTable[2] -- Y Pos of Current Pos

	local xRange = xt-xc -- Distance from Current X Pos to Tracer X Pos
	local yRange = yt-yc -- Distance from Current Y Pos to Tracer Y Pos


	-- Make Ranges Abs.
	if (xRange < 0) then 
		xRange = -(xRange)
	end

	if (yRange < 0) then 
		yRange = -(yRange)
	end

	-- If looking too far, return function > unable to spawn
	if (xRange > 500) then 
		ServerLog("[ZES]: Error, " .. ply:Nick() .. " Has tried to Spawn too far.".."\n")
		ply:ChatPrint("[ZES]: Error, Tried Spawning too far.")
		return 
	end
	if (yRange > 500) then 
		ServerLog("[ZES]: Error, " .. ply:Nick() .. " Has tried to Spawn too far.".."\n") 
		ply:ChatPrint("[ZES]: Error, Tried Spawning too far.")
		return 
	end

	-- If looking too close, return function > unable to spawn (Due to Spawn Kill)
	if (xRange < 80) then 
		ServerLog("[ZES]: Error, " .. ply:Nick() .. " Has tried to Spawn too close.".."\n") 
		ply:ChatPrint("[ZES]: Error, Tried Spawning too close.")
		return 
	end
	if (yRange < 80) then 
		ServerLog("[ZES]: Error, " .. ply:Nick() .. " Has tried to Spawn too close.".."\n") 
		ply:ChatPrint("[ZES]: Error, Tried Spawning too close.")
		return 
	end


	-- Spawning Entity
	ent = ents.Create( entity )
	if ( !IsValid( ent ) ) then return end
	ent:SetModel( mdl )
	ent:SetPos( pos + Vector( 0, 0, 90 ) )
	ent:Spawn()
	ServerLog("[ZES]: "..ply:Nick().." Has Spawned a ".. entity.."\n")
	net.Start("spawnEnt")
	net.Broadcast()

	if (killEnt == true) then
		hook.Add("Think", "EntThink", function()
			if (!ply:Alive()) then
				if (IsValid(ent)) then
					ent:Remove()
					net.Start("removeEnt")
					net.Broadcast()
				end
			end
			if (!IsValid(ent)) then
				net.Start("removeEnt")
				net.Broadcast()
			end
		end)
	end
end)



local version = "v1.8"

if SERVER then
	timer.Simple(17, function()
		print("\n")
		print("----===================================================----")
		print( "         Zaktak's Entity Spawner " .. version .. " Has loaded!" )
		print("----===================================================----")
		print("\n")
	end)
end