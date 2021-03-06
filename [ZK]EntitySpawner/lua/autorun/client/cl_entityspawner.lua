--[[-----------------------------------------------------------------------------
							   By: ZΛKƬΛK
-------------------------------------------------------------------------------]]

--[[----------------------------------
	  	  Do Not Edit Below!
    If you do it is at your own risk
	      I cannot help you.
------------------------------------]]

ZKEntSpawn = ZKEntSpawn or {}
ZKEntSpawn.config = ZKEntSpawn.config or {}

if CLIENT then
	include("autorun/sh_entityspawner.lua")

	hook.Add("OnPlayerChat", "checktheplayer", function(ply, text)
		if (string.lower(text) == ""..ZKEntSpawn.config.COMMAND) then
			local ply = LocalPlayer()
			OpenDerma(ply)
			return true
		end
	end)
end

curEnts = 0
title = "Zaktak's Entity Spawner"

function OpenDerma(ply)
	isOpen = true
	--if (curEnts >= 1) then return end
	local frame = vgui.Create("DFrame")
	frame:SetSize(500,500)
	frame:Center()
	frame:MakePopup()
	frame:SetTitle(title)
	frame.OnClose = function(s)
		isOpen = false
		s:Remove()
	end
	frame.Paint = function( self, w, h ) 
		draw.RoundedBox( 5, 0, 0, w, h, ZKEntSpawn.config.panelBackgroupC ) -- whole derma
		draw.RoundedBox( 3, 0, 0, w, h-470, ZKEntSpawn.config.panelTitleC ) -- top
	end

	--[[--------------------------
				 One
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.one_txt )
	DermaButton:SetPos( 50, 75 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedOne[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_one
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end


	--[[--------------------------
			    Two
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.two_txt )
	DermaButton:SetPos( 50, 175 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedTwo[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_two
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			    Three
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.three_txt )
	DermaButton:SetPos( 50, 275 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedThree[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_three
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			  	Four
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.four_txt )
	DermaButton:SetPos( 50, 375 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedFour[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_four
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			   Five
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.five_txt )
	DermaButton:SetPos( 300, 75 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedFive[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_five
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			     Six
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.six_txt )
	DermaButton:SetPos( 300, 175 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
	if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedSix[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_six
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			    Seven
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.seven_txt )
	DermaButton:SetPos( 300, 275 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedSeven[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_seven
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

	--[[--------------------------
			    Eight
	----------------------------]]

	local DermaButton = vgui.Create( "DColorButton", frame )
	DermaButton:SetText( ZKEntSpawn.config.eight_txt )
	DermaButton:SetPos( 300, 375 )
	DermaButton:SetSize( 150, 20 )
	DermaButton:SetColor( ZKEntSpawn.config.btnC )
	DermaButton.DoClick = function()
		if (curEnts >= ZKEntSpawn.config.entsAllowed) then return end
		local md = ZKEntSpawn.config.mdlAllowedSix[ply:GetModel()]
		if not md then return end
		local message = ZKEntSpawn.config.mdl_ent_eight
		net.Start("sendEnt")
		net.WriteString(message)
		net.WriteEntity(ply)
		net.SendToServer()
	end

end

author = "Zaktak"

net.Receive("removeEnt", function(len, ply)
	curEnts = 0
end)

net.Receive("spawnEnt", function(len, ply)
	curEnts = curEnts + 1
	--print(curEnts .. "\n")
end)


if (string.find(title, author, 1, false) == nil) then
	timer.Create("bruhMoment", 12, 0, function()
		print("Removing the author's name from the title is being ungrateful\n")
	end)
end
