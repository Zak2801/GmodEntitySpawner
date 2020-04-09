--[[-----------------------------------------------------------------------------
							   By: ZΛKƬΛK
-------------------------------------------------------------------------------]]

--[[----------------------------------
	  	  Do Not Edit Below!
    If you do it is at your own risk
	      I cannot help you.
------------------------------------]]

if CLIENT then
	include("sh_entityspawner.lua")
end

curEnts = 0
title = "Zaktak's Entity Spawner"

function OpenDerma(ply)
	isOpen = true
	if (curEnts >= 1) then return end
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
		draw.RoundedBox( 5, 0, 0, w, h, panelBackgroupC ) -- whole derma
		draw.RoundedBox( 3, 0, 0, w, h-470, panelTitleC ) -- top
	end

	--[[--------------------------
				 One
	----------------------------]]

	local md = mdlAllowedOne[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( one_txt )
		DermaButton:SetPos( 50, 75 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_one
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end


	--[[--------------------------
			    Two
	----------------------------]]

	local md = mdlAllowedTwo[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( two_txt )
		DermaButton:SetPos( 50, 175 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_two
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			    Three
	----------------------------]]

	local md = mdlAllowedThree[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( three_txt )
		DermaButton:SetPos( 50, 275 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_three
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			  	Four
	----------------------------]]

	local md = mdlAllowedFour[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( four_txt )
		DermaButton:SetPos( 50, 375 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_four
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			   Five
	----------------------------]]

	local md = mdlAllowedFive[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( five_txt )
		DermaButton:SetPos( 300, 75 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_five
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			     Six
	----------------------------]]

	local md = mdlAllowedSix[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( six_txt )
		DermaButton:SetPos( 300, 175 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_six
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			    Seven
	----------------------------]]

	local md = mdlAllowedSeven[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( seven_txt )
		DermaButton:SetPos( 300, 275 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_seven
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

	--[[--------------------------
			    Eight
	----------------------------]]

	local md = mdlAllowedSix[ply:GetModel()]
	if md then
		local DermaButton = vgui.Create( "DColorButton", frame )
		DermaButton:SetText( eight_txt )
		DermaButton:SetPos( 300, 375 )
		DermaButton:SetSize( 150, 20 )
		DermaButton:SetColor( btnC )
		DermaButton.DoClick = function()
			if (curEnts >= entsAllowed) then return end
			local message = mdl_ent_eight
			net.Start("sendEnt")
			net.WriteString(message)
			net.WriteEntity(ply)
			net.SendToServer()
		end
	end

end

hook.Add("OnPlayerChat", "checktheplayer", checkply)
function checkply(ply, text)
	if (string.lower(text) == ""..COMMAND) then
		local ply = LocalPlayer()
		OpenDerma(ply)
		return true
	end
end
author = "Zaktak"

net.Receive("removeEnt", function(len, ply)
	curEnts = 0
end)

net.Receive("spawnEnt", function(len, ply)
	curEnts = curEnts + 1
	print(curEnts .. "\n")
end)


if (string.find(title, author, 1, false) == nil) then
	timer.Create("bruhMoment", 12, 0, function()
		print("Removing the author name from title is being ungrateful")
	end)
end