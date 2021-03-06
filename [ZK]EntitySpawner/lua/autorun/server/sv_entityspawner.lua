--[[-----------------------------------------------------------------------------
							   By: ZΛKƬΛK
-------------------------------------------------------------------------------]]


--[[----------------------------------
	  	  Do Not Edit Below!
    If you do it is at your own risk
	      I cannot help you.
------------------------------------]]

ZKEntSpawn = ZKEntSpawn or {}

ZKEntSpawn.ZK_Index = 1
ZKEntSpawn.entsOwners = {}
ZKEntSpawn.zEnts = {}
-- ZKEntSpawn.entsTable = {} -- WIP

if SERVER then
	include("autorun/sh_entityspawner.lua")
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

	local Distance = (ply:GetPos()):Distance(pos) -- Get the Distance from player's position to tracer position.

	-- If looking too far, return function > unable to spawn
	if (Distance > 500) then 
		ServerLog("[ZES]: Error, " .. ply:Nick() .. " Has tried to Spawn too far.".."\n")
		ply:ChatPrint("[ZES]: Error, Tried Spawning too far.")
		return 
	end

	-- If looking too close, return function > unable to spawn (Due to Spawn Kill)
	if (Distance < 120) then 
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
	ent:SetOwner(ply)
	print(ZKEntSpawn.ZK_Index)
	ZKEntSpawn.entsOwners[ZKEntSpawn.ZK_Index] = ent:GetOwner() -- Log the Owner's name in a table.
	ZKEntSpawn.zEnts[ZKEntSpawn.ZK_Index] = ent
	ZKEntSpawn.ZK_Index = ZKEntSpawn.ZK_Index + 1
end)

if SERVER then
	hook.Add("PlayerDeath", "ZK_OnPlayerDeath", function(vic, inf, at)
		if (ZKEntSpawn.config.killEnt == false) then return end
		if (table.HasValue(ZKEntSpawn.entsOwners, vic)) then -- If the player that died is an Owner of an Entity
			for k, v in pairs(ZKEntSpawn.entsOwners) do
				if (v == vic) then -- Check for more entities this player has
					local zEnt = ZKEntSpawn.zEnts[k] -- Get the entity with the same index.
					if (IsValid(zEnt)) then -- If the entity is Valid
						zEnt:Remove() -- Remove the entity
						net.Start("removeEnt") -- Send msg to CLIENT side that ent is destroyed.
						net.Broadcast()
					end
					if (!IsValid(zEnt)) then -- If the entity is no longer Valid
						net.Start("removeEnt") -- Send msg to CLIENT side that ent is destroyed.
						net.Broadcast()
					end
				end
			end
		end
	end)
end


local version = "v1.32"

if SERVER then
	timer.Simple(17, function()
		print("\n")
		print("----===================================================----")
		print( "         Zaktak's Entity Spawner " .. version .. " Has loaded!" )
		print("----===================================================----")
		print("\n")
	end)
end