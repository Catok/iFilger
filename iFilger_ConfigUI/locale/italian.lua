﻿local C, F, L = unpack(select(2, ...))

local client = GetLocale()

if client == "itIT" then
	-- option name
	L["iFilger"] = "|cff1784d1iFilger|r |cffffffffConfiguration|r"
	L["Config"] = "If you config your |cff1784d1iFilger|r by Lua and\nstill wish to use the configuration GUI,\ndon't forget to click on |cff1784d1Reset Config|r\neach time you modify the config.lua"

	L["RESETMSG"] = "Are you sure you want to reset all of your settings to Default?"

	L["Name"] = "Name"
	L["Enable"] = "Enable"
	L["Size"] = "Size"
	L["Direction"] = "Direction"
	L["IconSide"] = "Icon Side"
	L["Interval"] = "Interval"
	L["Mode"] = "Mode"
	L["Alpha"] = "Alpha"
	L["BarWidth"] = "Bar Width"
	L["Merge"] = "Merge"
	L["Mergewith"] = "Merge with"

	L["autoupdate"] = "Automatic Update"
	L["cleverzone"] = "Clever Zone"
	L["tooltip"] = "Tooltip"
	L["TooltipMover"] = "Tooltip Mover"
	L["FlashIcon"] = "Flash (Icons)"
	L["FlashBar"] = "Flash (Bars)"
	L["FlashThreshold"] = "Flash Threshold"
	L["FlashDuration"] = "Flash Duration"

	L["AddSpell"] = "Add a spell"
	L["spellID"] = "Spell ID or slot ID"
	L["filter"] = "Filter"
	L["unitId"] = "Unit Id"
	L["caster"] = "Caster"
	L["absID"] = "Absolute ID"
	L["incombat"] = "In combat"
	L["spec"] = "Spec"
	L["trigger"] = "Trigger for ICD"
	L["duration"] = "Duration for ICD"
	L["icon"] = "Icon"

	-- option help
	L["H_Name"] = "The name of the sub-section"
	L["H_Enable"] = "Enable or Disable this sub-section."
	L["H_Size1"] = "Size of the Icons"
	L["H_Size2"] = "Must be a positive number"
	L["H_Direction1"] = "Direction of icons:"
	L["H_Direction2"] = "|cffffffffUP|r, |cffffffffDOWN|r, |cffffffffLEFT|r, |cffffffffRIGHT|r or |cffffffffHORIZONTAL|r"
	L["H_IconSide1"] = "Position of the Icon in bar mode:"
	L["H_IconSide2"] = "|cffffffffLEFT|r or |cffffffffRIGHT|r"
	L["H_Interval"] = "space between icons/bars"
	L["H_Mode1"] = "Display mode:"
	L["H_Mode2"] = "|cffffffffICON|r or |cffffffffBAR|r"
	L["H_Alpha1"] = "Transparency:"
	L["H_Alpha2"] = "Choose between 1 (full) or 0 (invisible)"
	L["H_BarWidth"] = "Width of the bar (bar mode required)"
	L["H_Merge"] = "Enable merging."
	L["H_Mergewith"] = "Name of the list to merge with if Merge is enabled."

	L["H_autoupdate"] = "Automaticaly update the config."
	L["H_cleverzone1"] = "Clever Zone:"
	L["H_cleverzone2"] = "Load only PvP in PvP zones and PvE in PvE zones"
	L["H_cleverzone3"] = "(Required to reload the first time you enter a PvE zone)"
	L["H_tooltip"] = "Tooltip on icons"
	L["H_TooltipMover"] = "Tooltip on TooltipMover for ElvUI and Tukui users."
	L["H_FlashIcon"] = "Flash when time left is below the threshold in icon mode."
	L["H_FlashBar"] = "Flash when time left is below the threshold in bar mode."
	L["H_FlashThreshold1"] = "Threshold when icons start flashing."
	L["H_FlashThreshold2"] = "Must be greater than 1."
	L["H_FlashDuration1"] = "Duration of each flash."
	L["H_FlashDuration2"] = "Must be a positive number, smaller => quicker."

	L["H_spellID"] = "Spell ID or slot ID : 13 or 14 for trinkets"
	L["H_filter1"] = "List of available Filters : "
	L["H_filter2"] = "|cffffffffBUFF|r - filtering buffs."
	L["H_filter3"] = "|cffffffffDEBUFF|r - filtering debuffs."
	L["H_filter4"] = "|cffffffffIBUFF|r - track a missing buff."
	L["H_filter5"] = "|cffffffffIDEBUFF|r - track a missing debuff."
	L["H_filter6"] = "|cffffffffCD|r - track cooldown."
	L["H_filter7"] = "|cffffffffACD|r - track if a cooldown is available or not, require caster set to \"all\""
	L["H_filter8"] = "|cffffffffICD|r - track Internal Cooldown, require trigger and duration"
	L["H_unitId1"] = "List of available unitId :"
	L["H_unitId2"] = "|cffffffffplayer|r"
	L["H_unitId3"] = "|cfffffffftarget|r"
	L["H_unitId4"] = "|cfffffffffocus|r"
	L["H_unitId5"] = "|cffffffffpet|r"
	L["H_unitId6"] = "|cfffffffftargettarget|r"
	L["H_unitId7"] = "|cffffffffparty1|r ..."
	L["H_unitId8"] = "|cffffffffarena1|r ..."
	L["H_caster"] = "|cffffffffplayer|r or |cffffffffall|r - only cast by you or everyone"
	L["H_absID"] = "Only show if the Sepll ID is exactly the same"
	L["H_incombat"] = "Only show while in combat"
	L["H_spec"] = "Only show while in that spec (|cffffffff1|r |cffffffff2|r |cffffffff3|r or |cffffffff4|r)"
	L["H_trigger1"] = "Trigger for ICD :"
	L["H_trigger2"] = "|cffffffffBUFF|r - ICD start when the buffs show up."
	L["H_trigger3"] = "|cffffffffDEBUFF|r - ICD start when the debuff show up."
	L["H_trigger4"] = "|cffff0000/!\\ NOTE THAT IT START WHEN THE|r"
	L["H_trigger5"] = "|cffff0000TRIGGER SHOWS, NOT WHENT IT DISAPEAR.|r"
	L["H_duration"] = "Duration for ICD in second"
	L["H_icon1"] = "Sorry, but the icon config is for"
	L["H_icon2"] = "|cffff0000ADVANCED USERS|r and";
	L["H_icon3"] = "have to be done by LUA."

	-- buttons
	L["Apply"] = "Apply"
	L["Cancel"] = "Cancel"
	L["Reset Config"] = "Reset Config"
	L["Move Buffs"] = "Move Buffs"
	L["Reset Buff Position"] = "Reset Buff Position"
	L["Global"] = "Global Config"
	L["Del"] = "Del"
	L["Edit"] = "Edit"
	L["Add"] = "Add"

	-- update text 
	local myClass = select(2, UnitClass("player"));

	L["VersionNotFound"] = "Version not found, clearing saved variables."
	L["UpdateRequired"] = "Your config version is outdated. We hightly advise you to do a |cffff0000"..L["Reset Config"].."|r before using |cff1784d1iFilger|r."
	L["WarningConfig"] = "Changes have been made in the config.\nWe hightly advise you to do a |cffff0000"..L["Reset Config"].."|r\nbefore using |cff1784d1iFilger|r."
	L["Updated"] = "|cff1784d1iFilger|r has been updated."
	L["ClassVersion"] = myClass.." version : "
	L["AllVersion"] = ", ALL version : "
	L["CurrentClassVersion"] = "Current "..myClass.." version : "
	L["CurrentAllVersion"] = ", current ALL version : "
	L["AvailableClassVersion"] = "Available "..myClass.." version : "
	L["AvailableAllVersion"] = ", available ALL version : "
end