--[[-----------------------------------------------------------------------------
							   By: ZΛKƬΛK
-------------------------------------------------------------------------------]]


--[[--------------------------
	 	   Config:
----------------------------]]

COMMAND = "/zes"
entsAllowed = 1 -- Entities allowed per person.
killEnt = true -- Should Entity be removed after death of owner?

panelBackgroupC = Color( 0, 0, 0, 200 ) -- Background color of panel (R, G, B, A)
panelTitleC = Color( 0, 125, 215, 230 ) -- Title color of panel (R, G, B, A)
btnC = Color( 0, 125, 215 ) -- Button color (R, G, B, A)


-- Models allowed to spawn ents:
-- Do not change the table name just the inside
-- ["model/example.mdl"] = true,
-- Do not forget the comma at the end!

mdlAllowedOne = {
	["models/thanks_sono/from_delta/snow/snowscout_backpack.mdl"] = true,
	["models/sono/swbf3/desert.mdl"] = true,
	["models/sono/swbf3/forest.mdl"] = true,
	["models/thanks_sono/from_delta/snow/snow_scout.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedTwo = {
	["models/player/female/isb.mdl"] = true,
	["models/player/male/isb.mdl"] = true,
	["models/player/female/trooper.mdl"] = true,
	["models/player/male/trooper.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedThree = {
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_01/pilot_imperial_orig_01.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_02_r/pilot_imperial_orig_02_r.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_03_g/pilot_imperial_orig_03_g.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_04_b/pilot_imperial_orig_04_b.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_05_o/pilot_imperial_orig_05_o.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_06_p/pilot_imperial_orig_06_p.mdl"] = true,
	["models/ragdoll/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_01_ragdoll/pilot_imperial_orig_01_ragdoll.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedFour = {
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_01/pilot_imperial_orig_01.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_02_r/pilot_imperial_orig_02_r.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_03_g/pilot_imperial_orig_03_g.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_04_b/pilot_imperial_orig_04_b.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_05_o/pilot_imperial_orig_05_o.mdl"] = true,
	["models/player/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_06_p/pilot_imperial_orig_06_p.mdl"] = true,
	["models/ragdoll/markus/swbf2/characters/hero/imperial_pilots/pilot_imperial_orig_01_ragdoll/pilot_imperial_orig_01_ragdoll.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedFive = {
	["models/player/markus/swbf2/characters/imperial/imperial_tanktrooper/imperial_tanktrooper_03.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedSix = {
	["models/player/markus/swbf2/characters/imperial/imperial_tanktrooper/imperial_tanktrooper_03.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedSeven = {
	["models/player/markus/swbf2/characters/imperial/imperial_tanktrooper/imperial_tanktrooper_03.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}

mdlAllowedEight = {
	["models/thanks_sono/from_delta/snow/snowscout_backpack.mdl"] = true,
	["models/sono/swbf3/desert.mdl"] = true,
	["models/sono/swbf3/forest.mdl"] = true,
	["models/thanks_sono/from_delta/snow/snow_scout.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
	["models/auditor/com/desan/desan.mdl"] = true,
}



-- How to change models and entitys?
-- Example: mdl_ent_one = "ent|.mdl"
-- Do not remove the "|" between! (it will break if u do)

mdl_ent_one = "dronesrewrite_healer|models/dronesrewrite/repairer/repairer.mdl"
mdl_ent_two = "dronesrewrite_spy|models/dronesrewrite/spydr/spydr.mdl"
mdl_ent_three = "lunasflightschool_tiefighter|models/tie2/tie2.mdl"
mdl_ent_four = "lunasflightschool_imp_dropship|models/starwars/syphadias/ships/imperial_dropship/imperial_dropship_closed.mdl"
mdl_ent_five = "tkaro_lfs_tx130|models/tkaro/starwars/vehicle/republic/tx130.mdl"
mdl_ent_six = "imperialatat|models/helios/vehicles/atat.mdl"
mdl_ent_seven = "imperialatst|models/helios/vehicles/atst.mdl"
mdl_ent_eight = "speeder_bike|models/sgg/starwars/speeder_bike.mdl"

-- This is the text on the button:
one_txt = "   Repair Drone"
two_txt = "   Spy Drone"
three_txt = "   Tie Fighter"
four_txt = "   Drop Ship"
five_txt = "   TX-130"
six_txt = "   AT-AT"
seven_txt = "   AT-ST"
eight_txt = "   Speeder"