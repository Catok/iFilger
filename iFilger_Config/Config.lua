local C = {}

C["Filger_Config"] = {
	["cleverzone"] = false,								-- load only PVP in PVP zones and PVE in PVE zones (require to reload the 1st time you enter the pve zone)
	["tooltip"] = false,									-- tooltip on mouseover buffs, some people wanted it. I don't.
	["TooltipMover"] = false,							-- tooltip on TooltipMover for ElvUI and Tukui users.
	["FlashIcon"] = false,								-- Flash when time left is below a threshold in ICON mode.
	["FlashBar"] = false,								-- Flash when time left is below a threshold in BAR mode.
	["FlashThreshold"] = 5,								-- Threshold from which icons start flashing.
	["FlashDuration"] = 0.5,							-- Duration of each flash smaller => quicker.
	["autoupdate"] = false,								-- Automaticaly update the config.
	["Config Version"] = {								-- To warn thoses who use ingame Config that their database is outdated.
														-- We need to filter the class, if MAGE is updated but not DK why should we make a reset for the DK ???
		["MAGE"] = 1.1,									-- Mages changes
		["DEATHKNIGHT"] = 1,							-- DK changes
		["PRIEST"] = 1,									-- Priest changes
		["WARLOCK"] = 1,								-- Locks changes
		["DRUID"] = 1,									-- Druids changes
		["SHAMAN"] = 1.1,                               -- Shaman changes
		["HUNTER"] = 1,									-- Hunt changes
		["WARRIOR"] = 1,								-- War changes
		["ROGUE"] = 1,									-- Rogue changes
		["PALADIN"] = 1.2,								-- Paladin changes
		["MONK"] = 1,									-- Monk changes
		["ALL"] = 1.3,									-- ALL/PVP/PVE and everything elses changes (reset for every class)
	}
}

C["Filger_Cooldown"] = { -- will be disabled if Tukui / ElvUI / OmniCC / ncCooldown is enabled
	["enable"] = false,									-- do i really need to explain this?
	["treshold"] = 8,									-- show decimal under X seconds and text turn red
	["fontsize"] = 20,									--the base font size to use at a scale of 1
}

--	List of available options for Panels:
--		name
--			= "name of the panel"
--			(this name will be used in Spells options part where you specify what panel do you want to attach your icons (or bars) to)
--		w
--			= width of the panel in pixels
--		h
--			= height of the panel in pixels
--		anchor
--			= what point of the panel is used to determine panels position
--			("TOP" / "BOTTOM" / "LEFT" / "RIGHT" / "CENTER" / "TOPLEFT" / "TOPRIGHT" / "BOTTOMLEFT" / "BOTTOMRIGHT"
--		x
--			= default anchor's position relative to the center of the screen, horizontal, in pixels
--		y
--			= default anchor's position relative to the center of the screen, vertical, in pixels
--		text
--			= label text that will be displayed on the panel

--Sizes
local EnhanceS = 37 			-- Buff from trinkets, racials and others
local CdS = 40 					-- Cooldowns 
local PTDBS = 37				-- Player's debuffs/buffs on target 
local PBS = 37					-- Player buffs 
local PPS = 42					-- Player's procs 
local FS = 35					-- Focus debuffs 
local TBS = 40					-- Target buffs 
local TDBS = 46					-- Target debuffs from all 
local PDBS = 44					-- Player PVP/PVE debuffs 

C["Filger_Panels"] = {
	["MAGE"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
		{ name = "iFilgerInvertAura", w = 135, h = 20, anchor = "BOTTOM", x = 0, y = 30, text = "Invert Auras/CD" },
		{ name = "iFilgerInterrupt", w = 75, h = 20, anchor = "BOTTOM", x = 0, y = 10, text = "Interrupt" },
	},
	["DEATHKNIGHT"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		
	},
	["PRIEST"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
	},
	["WARLOCK"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -191, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
	},
	["DRUID"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
		{ name = "iFilgerRage", w = 95, h = 20, anchor = "CENTER", x = 0, y = -20, text = "Rage Buffs" },
	},
	["HUNTER"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
		{ name = "iFilgerRage", w = 95, h = 20, anchor = "CENTER", x = 0, y = -20, text = "Rage Buffs" },
	},
	["ROGUE"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
		{ name = "iFilgerRage", w = 95, h = 20, anchor = "CENTER", x = 0, y = -20, text = "Rage Buffs" },
	},
	["SHAMAN"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
	},
	["PALADIN"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		{ name = "iFilgerFocusBuffs", w = 95, h = 20, anchor = "TOPLEFT", x = 420, y = 328, text = "Focus Buffs" },
	},	
	["WARRIOR"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 40, h = 21, anchor = "TOPLEFT", x = -127, y = -269, text = "Buffs" },
		{ name = "iFilgerProcs", w = 40, h = 21, anchor = "TOPLEFT", x = -85, y = -274, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 105, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "T Buffs/Debuffs" },
		--{ name = "iFilgerTempBuffs", w = 150, h = 20, anchor = "BOTTOMLEFT", x = -306, y = -208, text = "Temp Buffs" },
	},
	["MONK"] = {
		{ name = "iFilgerCooldowns", w = 80, h = 20, anchor = "BOTTOMLEFT", x = -295, y = -515, text = "Cooldowns" },
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
	},
	["ALL"] = {
		{ name = "iFilgerEnhancements", w = 85, h = 20, anchor = "BOTTOMRIGHT", x = -47, y = -359, text = "Enhancements" },
		{ name = "iFilgerPlayerDebuffs", w = 90, h = 20, anchor = "CENTER", x = 0, y = -155, text = "Pvp P Debuffs" },
		{ name = "iFilgerPvpTargetDebuffs", w = 90, h = 20, anchor = "BOTTOMLEFT", x = 38, y = -430, text = "Pvp T Debuffs" },
		{ name = "iFilgerPvpTargetBuffs", w = 80, h = 20, anchor = "BOTTOMRIGHT", x = 36, y = -430, text = "Pvp T Buffs" },
		{ name = "iFilgerTanksCDs", w = 85, h = 20, anchor = "BOTTOM", x = 0, y = 100, text = "Tanks CDs" },
		{ name = "iFilgerTanksCDsFocus", w = 135, h = 20, anchor = "TOPRIGHT", x = -220, y = 53, text = "Tanks focus CDs" },
	},
}

--	List of available options:
--		spellID	
--			= any number up to 132122 or so
--			(every spell has its unique spellID)
--			(you can find out spellID by looking up the spell on wowhead and checking URL of the page - http://www.wowhead.com/spell=5782 - in this case spellID = 5782)
--		unitId
--			= "player" / "target" / "focus" / "pet" / "party1" / "arena1" / "targettarget" / "targettargettarget" / "party1target" / "pettarget" / "focustarget" 
--			(note that you cannot use "targetfocus" and other similar options as you can only see your own focus)
--		caster
--			= "all" / "player" / "target" / "pet"
--			(Whoever casted the spell. If set to all, anyone's spell get displayed)
--		filter
--			= "BUFF" / "DEBUFF" / "IBUFF" / "IDEBUFF" / "CD" / "ACD" / "ICD"
--			(BUFF checks if buff is applied)
--			(DEBUFF checks if debuff is applied)
--			(IBUFF checks if buff is NOT applied)
--			(IDEBUFF checks if debuff is NOT applied)
--			(CD checks if spell is on cooldown)
--			(ACD checks if spell is NOT on cooldown)
--			(ICD checks for internal cooldown of the spell)
--		trigger
--			= "BUFF" / "DEBUFF"
--			(works only with filter option set to ICD)
--			(specifies if triggering spell applies buff or debuff)
--		duration
--			= any number (in seconds)
--			(works only with filter option set to ICD)
--			(specifies how long internal CD is)
--		timeleft
--			= any number (in seconds)
--			(works only with filter option set to buff or debuff)
--			(show icon only if time left is below)
--		slotID
--			= any number lower than 24
--			(works only with filter option set to CD / ICD)
--			(if slotID is specified, icon graphics will change to icon of item equipped in slot XX)
--			(1 = head, 2 = neck, 3 = shoulder, 4 = shirt, 5 = chest, 6 = belt, 7 = legs, 8 = feet, 9 = wrist, 10 = gloves, 
--			11 = finger 1, 12 = finger 2, 13 = trinket 1, 14 = trinket 2, 15 = back, 16 = main hand, 17 = off hand, 18 = ranged?, 19 = tabard, 
--			20 = first bag (the rightmost one), 21 = second bag, 22 = third bag, 23 = fourth bag (the leftmost one)
--		incombat
--			= true
--			(if incombat option is set to true, icon or bar will only show if in combat)
--		spec
--			= 1 / 2 / 3 / 4
--			(icon or bar will only show if spec option is not specified or spec option matches your specialization number)
--		absID
--			= true
--			(if set to true, spell will get displayed only if spell ID matches with spellID option, otherwise it will display if names match)
--		icon
--			= [[Interface\Icons\Spell_Frost_Frost]] / [[Interface\Icons\spell_mage_infernoblast]]
--			(changes icon graphics to a texture path specified in this option)
--			(specifying icon option, slotID option will cease to function)
--			(you can list through thousands of icons at http://wowprogramming.com/utils/artbrowser/Interface/ICONS.list)

C["Filger_Spells"] = {
	["DEATHKNIGHT"] = {  ---------------------------------------------------- Death Knight
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },
 
			-- Dark Command
			--{ spellID = 56222, filter = "CD" }, 
			-- Death Pact
			--{ spellID = 48743, filter = "CD" },
			-- Mind Freeze			
			{ spellID = 47528, filter = "CD" },
			-- Icebound Fortitude
			--{ spellID = 48792, filter = "CD" }, 
			-- Empower Rune Weapon
			--{ spellID = 47568, filter = "CD" }, 
			-- Death Grip
			--{ spellID = 49576, filter = "CD" }, 
			-- Raise Dead
			--{ spellID = 46584, filter = "CD" }, 
			-- Anti-Magic Shell
			--{ spellID = 48707, filter = "CD" }, 
			-- Death and Decay
			--{ spellID = 43265, filter = "CD" }, 
			-- Vampiric Blood
			--{ spellID = 55233, filter = "CD" }, 
			-- Dancing Rune Weapon
			--{ spellID = 49028, filter = "CD" }, 
			-- Lichborne
			--{ spellID = 49039, filter = "CD" }, 
			-- Anti-Magic Zone
			--{ spellID = 51052, filter = "CD" }, 
			-- Summon Gargoyle
			--{ spellID = 49206, filter = "CD" }, 
			-- Outbreak
			--{ spellID = 77575, filter = "CD" }, 
			-- Dark Simulacrum
			--{ spellID = 77606, filter = "CD" },
			-- Shroud of Purgatory
			{spellID = 116888, filter = "ICD", trigger = "BUFF", duration = 180},
		},	
		{
			Name = "DK Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			--Shadow Infusion
			{ spellID = 91342, unitId = "pet", caster = "all", filter = "BUFF" },
			--Dark Transformation
			{ spellID = 63560, unitId = "pet", caster = "all", filter = "BUFF" }, 
			-- Bone Shield
			{ spellID = 49222, unitId = "player", caster = "player", filter = "BUFF" },
			--Scent of Blood
			{ spellID = 49509, unitId = "player", caster = "all", filter = "BUFF" }, 
			--Vampiric Blood
			{ spellID = 55233, unitId = "player", caster = "all", filter = "BUFF" }, 
			--Lichborne
			{ spellID = 49039, unitId = "player", caster = "all", filter = "BUFF" }, 
			--Path of Frost
			{ spellID = 51271, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Dancing Rune Weapon
			{ spellID = 81256, unitId = "player", caster = "player", filter = "BUFF" },
			-- Icebound Fortitude
			{ spellID = 48792, unitId = "player", caster = "player", filter = "BUFF" },
			-- Anti-Magic Shell
			{ spellID = 48707, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Frenzy
			{ spellID = 49016, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Blight
			{ spellID = 115989, unitId = "player", caster = "player", filter = "BUFF" },
			-- Death's Advance
			{ spellID = 96268, unitId = "player", caster = "player", filter = "BUFF" },
			-- Conversion
			{ spellID = 119975, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "DK Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Sudden Doom
			{ spellID = 49530, unitId = "player", caster = "all", filter = "BUFF" },
			-- Killing Machine
			{ spellID = 51128, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Dark Succor
			{ spellID = 101568, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Strength
			{ spellID = 53365, unitId = "player", caster = "player", filter = "BUFF" },
			-- Freezing Fog
			{ spellID = 59052, unitId = "player", caster = "all", filter = "BUFF" },
			-- Crimson Scourge
			{ spellID = 81141, unitId = "player", caster = "all", filter = "BUFF" },

		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },
			
			-- Necrotic Strike
			--{ spellID = 73975, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			--Strangulate
			--{ spellID = 47476, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			--Chains of Ice
			{ spellID = 45524, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			--Frost Fever
			{ spellID = 59921, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			--Death and Decay
			{ spellID = 43265, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			--Blood Plague
			{ spellID = 59879, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			-- Summon Gargoyle
			{ spellID = 49206, unitId = "target", caster = "player", filter = "DEBUFF" },	
		},
	},
	["MAGE"] = { ---------------------------------------------------- Mage
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS, 
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Water Elemental Freeze
			--{ spellID = 33395, filter = "CD" },
			-- Blast Wave
			--{ spellID = 11113, filter = "CD" },
			-- Fire Blast
			--{ spellID = 2136, filter = "CD" },
			-- Counterspell
			{ spellID = 2139, filter = "CD" },
			-- Deep Freeze
			{ spellID = 44572, filter = "CD" }, 
			-- Arcane Power
			--{ spellID = 12042, filter = "CD" }, 
			-- Icy Veins
			--{ spellID = 12472, filter = "CD" }, 
			-- Combustion
			--{ spellID = 11129, filter = "CD" }, 
			-- Alter Time
			--{ spellID = 110909, filter = "CD" }, 
			-- Presence of Mind
			--{ spellID = 12043, filter = "CD" }, 
			-- Incanter's Ward
			--{ spellID = 1463, filter = "CD" }, 
			-- Cauterize
			{ spellID = 87023, filter = "ICD", trigger = "DEBUFF", duration = 120 },
		},	
		{
			Name = "Mage Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },
			
			-- Icy Veins
			{ spellID = 12472, unitId = "player", caster = "player", filter = "BUFF" },
			-- Arcane Power
			{ spellID = 12042, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ice Block
			{ spellID = 45438, unitId = "player", caster = "player", filter = "BUFF" }, 
			-- Invisibility
			{ spellID = 32612, unitId = "player", caster = "player", filter = "BUFF" }, 
			-- Stolen Time (2T13)
			{ spellID = 105785, unitId = "player", caster = "player", filter = "BUFF" },
			-- Alter Time
			{ spellID = 110909, unitId = "player", caster = "player", filter = "BUFF" },			
			-- Ice Floes
			{ spellID = 108839, unitId = "player", caster = "player", filter = "BUFF" },
			-- Temporal Shield
			{ spellID = 115610, unitId = "player", caster = "player", filter = "BUFF" },
			-- Greater Invisibility
			{ spellID = 110960, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blazing Speed
			{ spellID = 108843, unitId = "player", caster = "player", filter = "BUFF" },
			-- Replendish Mana
			{ spellID = 5405, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rune of Power
			{ spellID = 116014, unitId = "player", caster = "player", filter = "BUFF" },
			-- Incanter's Ward
			{ spellID = 1463, unitId = "player", caster = "player", filter = "BUFF" },
			-- Invoker's Energy
			{ spellID = 116257, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Mage Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS, 
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },
			
			-- Missiles
			{ spellID = 79683, unitId = "player", caster = "player", filter = "BUFF" },
			-- Brain Freeze
			{ spellID = 57761, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hot Streak
			{ spellID = 48108, unitId = "player", caster = "player", filter = "BUFF" },
			-- Arcane Charge
			{ spellID = 36032, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Fingers Of Frost
			{ spellID = 44544, unitId = "player", caster = "player", filter = "BUFF"},
			-- Cauterize	
			{ spellID = 87023, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Glyph of Remove Curse
			{ spellID = 115701, unitId = "player", caster = "player", filter = "BUFF" },
			-- Invoker's Absorption
			{ spellID = 116267, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS, 
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },
			
			-- Deep Freeze
			{ spellID = 44572, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			-- Freeze
			{ spellID = 33395, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			-- Frost Nova
			{ spellID = 122, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			-- Ring of Frost
			{ spellID = 82691, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frostfire Bolt aka Glyph of Frostfire
			{ spellID = 44614, unitId = "target", caster = "player", filter = "DEBUFF" },		
			-- Living Bomb
			{ spellID = 44457, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			-- Frost Bomb
			{ spellID = 112948, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Nether Tempest
			{ spellID = 114923, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pyroblast
			{ spellID = 11366, unitId = "target", caster = "player", filter = "DEBUFF" },	
			-- Ignite
			{ spellID = 12654, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			-- Combustion
			{ spellID = 11129, unitId = "target", caster = "player", filter = "DEBUFF" }, 
			-- Frostbolt (slow)
			{ spellID = 116, unitId = "target", caster = "player", filter = "DEBUFF", spec = 3 }, 
			-- Cone of Cold (slow)
			--{ spellID = 120, unitId = "target", caster = "all", filter = "DEBUFF" }, 
			-- Blast Wave
			{ spellID = 11113, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Slow
			{ spellID = 31589, unitId = "target", caster = "player", filter = "DEBUFF" },
		},		
		{
			Name = "Mage InvertAura",
			Enable = false, -- i don't want to spam, nor to use it. :)
			Direction = "HORIZONTAL",
			Interval = 4,
			Mode = "ICON",
			Alpha = 0.75,
--			BarWidth = 150,
			Size = 47, 
			setPoint = { "BOTTOM", "iFilgerInvertAura", 0, 22 },
			
			-- Rune of Power
			{ spellID = 116014, unitId = "player", caster = "player", filter = "IBUFF", known = 116011 },
			-- Invoker's Energy
			{ spellID = 116257, unitId = "player", caster = "player", filter = "IBUFF", known = 114003 },
			-- Pyromaniac (fire damage increased by 10%, applyied by bomb)
			{ spellID = 132210, unitId = "target", caster = "player", filter = "IDEBUFF", incombat = true, spec = 2 },
			-- Frost Bomb
			{ spellID = 112948, unitId = "target", caster = "player", filter = "IDEBUFF", incombat = true, spec = 3 },
		},
		{
			Name = "Focus",  
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = FS, 
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },
			
			-- Sheep mage
			-- { spellID = 118, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Interrupt",  
			Enable = true,
			Direction = "HORIZONTAL",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = FS, 
			setPoint = { "TOP", "iFilgerInterrupt", 0, -22 },
			
			-- Frostbolt
			{ spellID = 116, filter = "CD" },
			-- Fireball
			{ spellID = 133, filter = "CD" },	
			-- Polymorph
			{ spellID = 118, filter = "CD" },
		},
	},
	["PRIEST"] = { ---------------------------------------------------- Priest	
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Mass Dispel
			{ spellID = 32375, filter = "CD" },
			-- Power Word: Barrier
			{ spellID = 62618, filter = "CD" },
			-- Purify
			{ spellID = 527, filter = "CD" },
		},
		{
			Name = "Priest Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Inner Fire
			 { spellID = 588, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inner Will
			{ spellID = 73413, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fear Ward
			{ spellID = 6346, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Dispersion
			{ spellID = 47585, unitId = "player", caster = "player", filter = "BUFF" },
			-- Phantasm
			{ spellID = 114239, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spectral Guise
			{ spellID = 119032, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Guardian Spirit
			{ spellID = 47788, unitId = "player", caster = "player", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "player", caster = "player", filter = "BUFF" },
			-- Prayer of Mending
			{ spellID = 41635, unitId = "player", caster = "player", filter = "BUFF" },
			-- Renew
			{ spellID = 139, unitId = "player", caster = "player", filter = "BUFF" },
			-- Power Word: Shield
			--{ spellID = 17, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inner Focus
			{ spellID = 89485, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fade
			{ spellID = 586, unitId = "player", caster = "player", filter = "BUFF" },
			-- Borrowed Time
			{ spellID = 59889, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spirit Shell
			{ spellID = 109964, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			
			-- Chakra: Serenity
			{ spellID = 81208, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: Sanctuary
			{ spellID = 81206, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: Chastise
			{ spellID = 81209, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Priest Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Weakened Soul
			{ spellID = 6788, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Glyph of Inner Focus
			{ spellID = 96267, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spirit of Redemption
			{ spellID = 27827, unitId = "player", caster = "all", filter = "BUFF" },
			-- Surge of Light
			{ spellID = 114255, unitId = "player", caster = "all", filter = "BUFF" },
			-- Surge of Darkness
			{ spellID = 87160, unitId = "player", caster = "all", filter = "BUFF" },
			-- Serendipity
			{ spellID = 63735, unitId = "player", caster = "player", filter = "BUFF" },
			-- Archangel
			{ spellID = 81700, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evangelism
			{ spellID = 81662, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Insight
			{ spellID = 124430, unitId = "player", caster = "all", filter = "BUFF" },
			-- Glyph of Mind Spike
			{ spellID = 81292, unitId = "player", caster = "all", filter = "BUFF" },
			-- Divine Insight : PoM
			{ spellID = 123267, unitId = "player", caster = "all", filter = "BUFF", absID = true },
			-- Twist of Fate
			{ spellID = 123254, unitId = "player", caster = "player", filter = "BUFF", spec = 1 },
			-- Twist of Fate
			{ spellID = 123254, unitId = "player", caster = "player", filter = "BUFF", spec = 2 },
			-- Angelic Bulwark
			{ spellID = 114214, unitId = "player", caster = "player", filter = "BUFF" },
		},	
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Prayer of Mending
			{ spellID = 41635, unitId = "target", caster = "all", filter = "BUFF" },
			-- Guardian Spirit
			{ spellID = 47788, unitId = "target", caster = "player", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "target", caster = "player", filter = "BUFF" },
			-- Power Word: Shield
			--{ spellID = 17, unitId = "target", caster = "player", filter = "BUFF" },
			-- Renew
			{ spellID = 139, unitId = "target", caster = "player", filter = "BUFF" },
			-- Fear Ward
			{ spellID = 6346, unitId = "target", caster = "player", filter = "BUFF" },
			-- Echo of Light
			{ spellID = 77489, unitId = "target", caster = "player", filter = "BUFF" },
			-- Grace
			{ spellID = 77613, unitId = "target", caster = "player", filter = "BUFF" },
			-- Weakened Soul
			{ spellID = 6788, unitId = "target", caster = "all", filter = "BUFF" }, -- requested but a bit useless
			
			-- Shackle undead
			--{ spellID = 9484, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream
			--{ spellID = 8122, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shadow Word: Pain
			{ spellID = 589, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Devouring Plague
			{ spellID = 2944, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Vampiric Touch
			{ spellID = 34914, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			IconSide = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Shackle Undead
			-- { spellID = 9484, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream
			-- { spellID = 8122, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Shadow Word: Pain
			{ spellID = 589, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Devouring Plague
			{ spellID = 2944, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Vampiric Touch
			{ spellID = 34914, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["WARLOCK"] = { ---------------------------------------------------- Warlock
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Infernal
			--{ spellID = 1122, filter = "CD" },
			-- Conflagrate
			--{ spellID = 17962, filter = "CD" },
			-- Shadow Ward
			--{ spellID = 6229, filter = "CD" },
			-- Demon Leap
			--{ spellID = 54785, filter = "CD" },
			-- Soulshatter
			{ spellID = 29858, filter = "CD" },
			-- Demonic Circle: Teleport
			--{ spellID = 48020, filter = "CD" },
			-- Howl of Terror
			--{ spellID = 5484, filter = "CD" },
			-- Death Coil
			--{ spellID = 6789, filter = "CD" },
			-- Haunt
			--{ spellID = 48181, filter = "CD" },
			-- Shadowburn
			--{ spellID = 17877, filter = "CD" },
			-- Shadowfury
			--{ spellID = 30283, filter = "CD" },
			-- Chaos Bolt
			--{ spellID = 50796, filter = "CD" },
			-- Shadowflame
			--{ spellID = 47897, filter = "CD" },
			-- Fel Domination
			--{ spellID = 18708, filter = "CD" },
			-- Sacrifice (Voidwalker)
			{ spellID = 7812, filter = "CD" },
			-- Suffering (Voidwalker)
			{ spellID = 17735, filter = "CD" },
			-- Spell Lock (Felhunter)
			{ spellID = 19647, filter = "CD" },
			-- Devour Magic (Felhunter)
			{ spellID = 19505, filter = "CD" },
			-- Soul Harvest
			--{ spellID = 79268, filter = "CD" },
			-- Felstorm
			{ spellID = 89751, filter = "CD" },
			-- Soulburn
			--{ spellID = 74434, filter = "CD" },
			-- Hand of Gul'dan
			--{ spellID = 71521, filter = "CD" },
			-- Immolation Aura
			--{ spellID = 50589, filter = "CD" },
		},
		{
			Name = "Warlock Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },
			
			-- Dark Soul: Misery
			{ spellID = 113860, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Soul: Instability
			{ spellID = 113858, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Soul: Knowledge
			{ spellID = 113861, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soul Swap
			{ spellID = 86121, unitId = "player", caster = "player", filter = "BUFF" },		
			-- Twilight Ward
			{ spellID = 6229, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unending Resolve
			{ spellID = 104773, unitId = "player", caster = "player", filter = "BUFF" },
			-- Burning Rush
			{ spellID = 111400, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Bargain
			{ spellID = 110913, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dark Regeneration
			{ spellID = 108359, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soul Link
			{ spellID = 108415, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Warlock Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Kil'jaeden's Cunning
			{ spellID = 119049, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backlash
			{ spellID = 34936, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soulburn
			{ spellID = 74434, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backdraft
			{ spellID = 117828, unitId = "player", caster = "player", filter = "BUFF" },
			-- Molten Core
			{ spellID = 122355, unitId = "player", caster = "player", filter = "BUFF" },
			-- Demonic Rebirth
			{ spellID = 88448, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Unstable Affliction
			{ spellID = 30108, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Corruption
			{ spellID = 172, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Havoc
			{ spellID = 80240, unitId = "target", caster = "player", filter = "DEBUFF" },	
			-- Agony
			{ spellID = 980, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Doom
			{ spellID = 603, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Immolate
			{ spellID = 348, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Haunt
			{ spellID = 48181, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Seed of Corruption
			{ spellID = 27243, unitId = "target", caster = "player", filter = "DEBUFF" },
					
			-- Shadowflame
			{ spellID = 47960, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Felstorm
			{ spellID = 89751, unitId = "pet", caster = "all", filter = "BUFF" },
			-- Fear
			--{ spellID = 5782, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Banish
			--{ spellID = 710, unitId = "target", caster = "all", filter = "DEBUFF" },	
			-- Howl of Terror
			{ spellID = 5484, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mortal Coil
			{ spellID = 6789, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Enslave Demon
			{ spellID = 1098, unitId = "target", caster = "player", filter = "DEBUFF" },
			
			-- Hand of Gul'dan
			{ spellID = 105174, unitId = "target", caster = "player", filter = "DEBUFF" },			
			-- Curse of Emfeeblement
			{ spellID = 109466, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Exhaustion
			{ spellID = 18223, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			-- Other
			-- Curse of the Elements (Warlock)
			{ spellID = 1490, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Master poisoner (Rogue)
			{ spellID = 93068, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			-- Soulstone Resurrection
			{ spellID = 20707, unitId = "target", caster = "player", filter = "BUFF" },	
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Havoc
			{ spellID = 80240, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Fear
			-- { spellID = 5782, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Banish
			-- { spellID = 710, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["DRUID"] = { ---------------------------------------------------- Druid
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Displacer Beast
			{ spellID = 102280, filter = "CD", absID = true },
			-- Wild Charge
			{ spellID = 102401, filter = "CD", absID = true },
			-- Starsurge
			{ spellID = 78674, filter = "CD" },
			-- Starfall
			--{ spellID = 48505, filter = "CD" },
			-- Nature's Cure
			{ spellID = 88423, filter = "CD" },
		},
		{
			Name = "Druid Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Lifebloom
			{ spellID = 33763, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rejuvenation
			{ spellID = 774, unitId = "player", caster = "player", filter = "BUFF" },
			-- Regrowth
			{ spellID = 8936, unitId = "player", caster = "player", filter = "BUFF" },
			-- Wild Growth
			{ spellID = 48438, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Starfall
			{ spellID = 48505, unitId = "player", caster = "player", filter = "BUFF" },
			-- Celestial Alignment
			{ spellID = 112071, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Savage Roar
			{ spellID = 52610, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Incarnation: Tree of Life
			{ spellID = 117679, unitId = "player", caster = "player", filter = "BUFF" },
			-- Incarnation: King of the Jungle
			{ spellID = 102543, unitId = "player", caster = "player", filter = "BUFF" },
			-- Incarnation: Son of Ursoc
			{ spellID = 102558, unitId = "player", caster = "player", filter = "BUFF" },
			-- Incarnation: Chosen of Elune
			{ spellID = 102560, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Nature's Swiftness
			{ spellID = 132158, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate
			{ spellID = 29166, unitId = "player", caster = "all", filter = "BUFF" },
			-- Survival Instincts
			{ spellID = 61336, unitId = "player", caster = "player", filter = "BUFF" },
			-- Barkskin
			{ spellID = 22812, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ironbark
			{ spellID = 102342, unitId = "player", caster = "player", filter = "BUFF" },
			-- Might of Ursoc
			{ spellID = 106922, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Nature's Vigil
			{ spellID = 124974, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart of the Wild
			{ spellID = 108294, unitId = "player", caster = "player", filter = "BUFF" },
			-- Berserk
			{ spellID = 106951, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Tiger's Fury
			{ spellID = 5217, unitId = "player", caster = "player", filter = "BUFF" },
			-- Enrage
			{ spellID = 5229, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nature's Grasp
			{ spellID = 16689, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dash
			{ spellID = 1850, unitId = "player", caster = "player", filter = "BUFF" },
			-- Stampeding Roar
			{ spellID = 106898, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Druid Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Nature's Grace
			{ spellID = 16886, unitId = "player", caster = "player", filter = "BUFF" },
			-- Harmony (Healer Mastery Buff)
			{ spellID = 100977, unitId = "player", caster = "player", filter = "BUFF" },

			-- Eclipse (Lunar)
			{ spellID = 48518, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eclipse (Solar)
			{ spellID = 48517, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16870, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shooting Stars
			{ spellID = 93400, unitId = "player", caster = "player", filter = "BUFF" },
			-- Owlkin Frenzy
			{ spellID = 48391, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lunar Shower
			{ spellID = 81192, unitId = "player", caster = "player", filter = "BUFF" },
			-- Predatory Swiftness
			{ spellID = 69369, unitId = "player", caster = "player", filter = "BUFF" },
			-- Glyph of Barkskin
			{ spellID = 63058, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tranquility
			{ spellID = 740, unitId = "player", caster = "player", filter = "BUFF" },
			-- Natural Harmony - 2T13 Heal
			{ spellID = 105713, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },
		
			-- Maim
			--{ spellID = 22570, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Pounce 
			--{ spellID = 9005, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			-- Hibernate
			--{ spellID = 2637, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots
			--{ spellID = 339, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Cyclone
			--{ spellID = 33786, unitId = "target", caster = "all", filter = "DEBUFF" },		
			-- Rake
			{ spellID = 1822, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rip
			{ spellID = 1079, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Lacerate
			{ spellID = 33745, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pounce Bleed
			{ spellID = 9007, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Moonfire
			{ spellID = 8921, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunfire
			{ spellID = 93402, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Infected Wounds
			--{ spellID = 58180, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Faerie Fire
			{ spellID = 770, unitId = "target", caster = "all", filter = "DEBUFF" },			
			
			-- Lifebloom
			{ spellID = 33763, unitId = "target", caster = "player", filter = "BUFF" },
			-- Rejuvenation
			{ spellID = 774, unitId = "target", caster = "player", filter = "BUFF" },
			-- Regrowth
			{ spellID = 8936, unitId = "target", caster = "player", filter = "BUFF" },
			-- Wild Growth
			{ spellID = 48438, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Alpha = 1,
			Mode = "ICON",
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Hibernate
			{ spellID = 2637, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots
			-- { spellID = 339, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Cyclone
			-- { spellID = 33786, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["HUNTER"] = { ---------------------------------------------------- Hunter
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Kill Shot
			--{ spellID = 53351, filter = "CD" },
			-- Chimera Shot
			--{ spellID = 53209, filter = "CD" },
			-- Rapid Fire
			--{ spellID = 3045, filter = "CD" },
			-- Feign Death
			{ spellID = 5384, filter = "CD" },
			-- Bestial Wrath
			--{ spellID = 19574, filter = "CD" },
		},
		{
			Name = "Hunter Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Rapid Fire
			{ spellID = 3045, unitId = "player", caster = "player", filter = "BUFF" },
			-- Mend Pet
			{ spellID = 136, unitId = "pet", caster = "player", filter = "BUFF" },
			-- Spirit Mend
			{ spellID = 90361, unitId = "player", caster = "player", filter = "BUFF" },
			-- Deterrence
			{ spellID = 19263, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sniper Training
			{ spellID = 64420, unitId = "player", caster = "player", filter = "BUFF" },
			-- The Beast Within
			{ spellID = 34471, unitId = "player", caster = "player", filter = "BUFF" },
			-- Camouflage
			{ spellID = 51755, unitId = "player", caster = "player", filter = "BUFF" },
			-- Posthaste
			{ spellID = 118922, unitId = "player", caster = "player", filter = "BUFF" },		
		},
		{
			Name = "Hunter Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Lock and Load
			{ spellID = 56453, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Steady Shot
			{ spellID = 53224, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ready, Set, Aim
			{ spellID = 82925, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fire!
			{ spellID = 82926, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cobra Strikes
			{ spellID = 53257, unitId = "player", caster = "player", filter = "BUFF" },
			-- Focus Fire
			{ spellID = 82692, unitId = "player", caster = "player", filter = "BUFF" },
			-- Thrill of the Hunt
			{ spellID = 34720, unitId = "player", caster = "player", filter = "BUFF" },
			
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Wyvern Sting
			{ spellID = 19386, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Serpent Sting
			{ spellID = 1978, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Widow Venom
			{ spellID = 82654, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Black Arrow
			{ spellID = 3674, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Explosive Shot
			{ spellID = 53301, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hunter's Mark
			{ spellID = 1130, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Piercing Shots 
			{ spellID = 63468, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- A Murder of Crows
			{ spellID = 131894, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			--IconSide = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Wyvern Sting
			-- { spellID = 19386, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			-- { spellID = 34490, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Freezing Trap
			-- { spellID = 3355, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},	
	["ROGUE"] = { ---------------------------------------------------- Rogue
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Shiv
			{ spellID = 5938, filter = "CD" },
			-- ShadowStep
			{ spellID = 36554, filter = "CD" },
			-- Cheating Death ICD
			{ spellID = 45182, filter = "ICD", trigger = "BUFF", duration = 90 },
		},
		{
			Name = "Rogue Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Blade Flurry
			{ spellID = 13877, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sprint
			{ spellID = 2983, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cloak of Shadows
			{ spellID = 31224, unitId = "player", caster = "player", filter = "BUFF" },
			-- Adrenaline Rush
			{ spellID = 13750, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evasion
			{ spellID = 5277, unitId = "player", caster = "player", filter = "BUFF" },
			-- Envenom
			{ spellID = 32645, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slice and Dice
			{ spellID = 5171, unitId = "player", caster = "player", filter = "BUFF" },
			-- Recuperate
			{ spellID = 73651, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tricks of the Trade
			{ spellID = 57934, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadow Dance
			{ spellID = 51713, unitId = "player", caster = "player", filter = "BUFF" },
			-- Killing Spree
			{ spellID = 51690, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shallow Insight
			{ spellID = 84745, unitId = "player", caster = "player", filter = "BUFF" },
			-- Moderate Insight
			{ spellID = 84746, unitId = "player", caster = "player", filter = "BUFF" },
			-- Deep Insight
			{ spellID = 84747, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master of subtlety
			{ spellID = 31665, unitId = "player", caster = "player", filter = "BUFF" },
			-- Combat Readiness
			{ spellID = 74001, unitId = "player", caster = "player", filter = "BUFF" },
			-- Feint
			{ spellID = 1966, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shroud of Concealment
			{ spellID = 114018, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadow Blades
			{ spellID = 121471, unitId = "player", caster = "player", filter = "BUFF" },
			-- Burst of Speed
			{ spellID = 108212, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadow Walk
			{ spellID = 114842, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Rogue Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			
			-- Tricks of the Trade
			--{ spellID = 57934, caster = "all", filter = "ACD", incombat = true },
			-- Fury of the Destroyer -- Legendary buff
			{ spellID = 109949, unitId = "player", caster = "player", filter = "BUFF" },
			-- Vanish
			{ spellID = 1856, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cheating death
			{ spellID = 45182, unitId = "player", caster = "player", filter = "BUFF" },
			-- Combat Insight
			{ spellID = 74002, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blindside
			{ spellID = 121153, unitId = "player", caster = "player", filter = "BUFF" },
			-- Subterfuge
			{ spellID = 115192, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Cheap shot
			--{ spellID = 1833, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Kidney shot
			--{ spellID = 408, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Blind
			--{ spellID = 2094, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sap
			--{ spellID = 6770, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Revealing Strike
			{ spellID = 84617, size = PTDBS, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rupture
			{ spellID = 1943, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Garrote
			{ spellID = 703, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Crimson Tempest
			{ spellID = 122233, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Weakened Armor
			{ spellID = 113746, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Dismantle
			{ spellID = 51722, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Paralytic Poison
			{ spellID = 113952, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Deadly Poison
			{ spellID = 2818, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind-numbing Poison
			--{ spellID = 5760, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind Paralysis
			{ spellID = 115194, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Crippling Poison
			--{ spellID = 3409, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Debilitating Poison
			{ spellID = 115196, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Wound Poison
			{ spellID = 8680, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Find Weakness
			{ spellID = 91023, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hemorrhage 
			{ spellID = 89775, unitId = "target", caster = "player", filter = "DEBUFF", absID = true  },		
			-- Vendetta
			{ spellID = 79140, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Nerve Strike
			{ spellID = 112947, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Blind
			-- { spellID = 2094, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},		
	["SHAMAN"] = { ---------------------------------------------------- Shaman
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Stone Bulwark Totem
			{ spellID = 108270, filter = "CD" },
			-- Grounding Totem
			--{ spellID = 8177, filter = "CD" },
			-- Tremor Totem
			{ spellID = 8143, filter = "CD" },
			-- Spirit Link Totem
			{ spellID = 98008, filter = "CD" },
			-- Spiritwalker Grace
			--{ spellID = 79206, filter = "CD" },
			-- Unleash Elements
			--{ spellID = 73680, filter = "CD" },
			-- Shamanistic Rage
			--{ spellID = 30823, filter = "CD" },
			-- Mana Tide Totem
			{ spellID = 16190, filter = "CD" },
			-- Ancestral Swiftness
			--{ spellID = 16188, filter = "CD" },
			-- Fire Elemental Totem
			--{ spellID = 2894, filter = "CD" },
			-- Earth Elemental Totem
			--{ spellID = 2062, filter = "CD" },
			-- Bloodlust
			--{ spellID = 2825, filter = "CD" },
			-- Hex
			--{ spellID = 51514, filter = "CD" },
			-- Healing Rain
			{ spellID = 73920, filter = "CD" },
		},
		{
			Name = "Shaman Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Earth Shield
			{ spellID = 974, unitId = "player", caster = "player", filter = "BUFF" },		
			-- Lightning Shield
			{ spellID = 324, unitId = "player", caster = "player", filter = "BUFF" },
			-- Water Shield
			{ spellID = 52127, unitId = "player", caster = "player", filter = "BUFF" },
			-- Riptide
			{ spellID = 61295, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shamanistic Rage
			{ spellID = 30823, unitId = "player", caster = "player", filter = "BUFF" },
			-- Astral Shift
			{ spellID = 108271, unitId = "player", caster = "player", filter = "BUFF" },
			-- Elemental Mastery
			{ spellID = 16166, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spiritwalker's Grace
			{ spellID = 79206, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancestral Swiftness
			{ spellID = 16188, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spirit Walk
			{ spellID = 58875, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancestral Guidance
			{ spellID = 108281, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ghost Wolf
			{ spellID = 2645, unitId = "player", caster = "player", filter = "BUFF" },
			
		},
		{
			Name = "Shaman Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS,
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Ancestral Swiftness
			{ spellID = 16188, unitId = "player", caster = "player", filter = "BUFF" },
			-- Maelstorm Weapon
			{ spellID = 53817, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tidal Waves
			{ spellID = 53390, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unleash Life
			{ spellID = 73685, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unleash Flame
			{ spellID = 73683, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nature's Guardian
			{ spellID = 31616, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lava Surge
			{ spellID = 77762, unitId = "player", caster = "player", filter = "BUFF" },
			-- Grounding Totem
			{ spellID = 8178, unitId = "player", caster = "all", filter = "BUFF" },
			-- Stone Bulwark Totem
			{ spellID = 114893, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spirit Link Totem
			{ spellID = 98007, unitId = "player", caster = "player", filter = "BUFF" },			
			-- Spiritual Stimulus (2T13)
			{ spellID = 105763, unitId = "player", caster = "player", filter = "BUFF" },
			-- Timewalker (4T13 heal)
 			{ spellID = 105877, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			Alpha = 1,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Earth Shield
			{ spellID = 974, unitId = "target", caster = "player", filter = "BUFF" },
			-- Riptide
			{ spellID = 61295, unitId = "target", caster = "player", filter = "BUFF" },
			-- Hearthliving
			{ spellID = 51945, unitId = "target", caster = "player", filter = "BUFF" },
					
			-- Searing Totem
			{ spellID = 77661, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hex
			--{ spellID = 51514, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Bind Elemental
			--{ spellID = 76780, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Storm Strike
			{ spellID = 17364, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Shock
			{ spellID = 8056, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Flame Shock
			{ spellID = 8050, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth Shock
			{ spellID = 8042, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earthgrab
			{ spellID = 64695, unitId = "target", caster = "player", filter = "DEBUFF" },		
		},
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
--			IconSide = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Size = FS,
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Earth Shield
			{ spellID = 974, unitId = "focus", caster = "player", filter = "BUFF" },
			-- Hex
			-- { spellID = 51514, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Bind Elemental
			-- { spellID = 76780, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},	
	["PALADIN"] = { ---------------------------------------------------- Paladin
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },

			-- Blinding Light
			{ spellID = 115750, filter = "CD" },
		},	
		{
			Name = "Paladin Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },

			-- Beacon of Light -- player
			{ spellID = 53563, unitId = "player", caster = "player", filter = "BUFF" },
			-- Inquisition
			{ spellID = 84963, unitId = "player", caster = "player", filter = "BUFF" },
			-- Long Arm of the Law
			{ spellID = 87173, unitId = "player", caster = "all", filter = "BUFF" },
			-- Divine Favor
			{ spellID = 31842, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Plea
			{ spellID = 54428, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sacred Shield
			{ spellID = 20925, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Divine Protection
			{ spellID = 498, unitId = "player", caster = "player", filter = "BUFF" },	
			-- Ardent Defender
			{ spellID = 31850, unitId = "player", caster = "player", filter = "BUFF" },
			-- Avenging Wrath
			{ spellID = 31884, unitId = "player", caster = "player", filter = "BUFF" },
			-- Holy Avenger
			{ spellID = 105809, unitId = "player", caster = "player", filter = "BUFF" },
			-- Guardian of Ancient Kings (prot)
			{ spellID = 86659, unitId = "player", caster = "player", filter = "BUFF" },
			-- Devotion Aura
			{ spellID = 31821, unitId = "player", caster = "all", filter = "BUFF" },
			-- Divine Shield
			{ spellID = 642, unitId = "player", caster = "player", filter = "BUFF" },
			-- Speed of Light
			{ spellID = 85499, unitId = "player", caster = "player", filter = "BUFF" },
			-- Delayed Judgement - 2T13 Tank
			{ spellID = 105801, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bastion of Glory
			{ spellID = 114637, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eternal Flame
			{ spellID = 114163, unitId = "player", caster = "player", filter = "BUFF" },
			-- Alabaster Shield
			{ spellID = 121467, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Paladin Procs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS, 
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

			-- Grand Crusader
			{ spellID = 85416, unitId = "player", caster = "player", filter = "BUFF" },
			-- Daybreak
			{ spellID = 88819, unitId = "player", caster = "player", filter = "BUFF" },
			-- Infusion of Light
			{ spellID = 53576, unitId = "player", caster = "player", filter = "BUFF" },
			-- Supplication
			{ spellID = 94686, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Purpose
			{ spellID = 90174, unitId = "player", caster = "player", filter = "BUFF" },
			-- Guardian of Ancient Kings Stack Ret PROC
			{ spellID = 86700, unitId = "player", caster = "player", filter = "BUFF" },
			-- Selfless Healer
			{ spellID = 114250, unitId = "player", caster = "player", filter = "BUFF" },
			-- Sacred Shield
			--{ spellID = 96263, unitId = "player", caster = "player", filter = "BUFF" },
			-- Saint's Vigor - 2T13 Heal
			{ spellID = 105742, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS, 
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Beacon of Light
			{ spellID = 53563, unitId = "target", caster = "player", filter = "BUFF" },
			-- Sacred Shield
			{ spellID = 20925, unitId = "target", caster = "all", filter = "BUFF", absID = true },
			
			-- Hammer of Justice
			--{ spellID = 853, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Seal of Truth Aka Censure
			{ spellID = 31803, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Burden of Guilt
			{ spellID = 110300, unitId = "target", caster = "player", filter = "DEBUFF" },
		},	
		{
			Name = "Focus",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = FS, 
			setPoint = { "TOPLEFT", "iFilgerFocusBuffs", 0, -22 },

			-- Beacon of Light -- player
			{ spellID = 53563, unitId = "focus", caster = "player", filter = "BUFF" },
			-- Hammer of Justice
			{ spellID = 853, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Repentance
			{ spellID = 20066, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["WARRIOR"] = {  ---------------------------------------------------- Warrior
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS, 
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },
			
			-- Last Stand
			{ spellID = 12975, filter = "CD" },	
			-- Taunt
			{ spellID = 355, filter = "CD" },	
			-- Commanding Shout
			{ spellID = 469, filter = "CD" },	

		},
		{
			Name = "Warrior Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "BOTTOMRIGHT", "iFilgerPlayerBuff", 0, 22 },
			
			-- Shield Block
			{ spellID = 2565, unitId = "player", caster = "player", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Wall
			{ spellID = 871, unitId = "player", caster = "player", filter = "BUFF" },
			-- Deadly Calm
			{ spellID = 85730, unitId = "player", caster = "player", filter = "BUFF" },
			-- Recklesness
			{ spellID = 1719, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spell Reflection
			{ spellID = 23920, unitId = "player", caster = "player", filter = "BUFF" },
			-- Mass Spell Reflection
			{ spellID = 114028, unitId = "player", caster = "player", filter = "BUFF" },
			-- Berserker Rage
			{ spellID = 18499, unitId = "player", caster = "player", filter = "BUFF" },
			-- Enraged Regeneration
			{ spellID = 55694, unitId = "player", caster = "player", filter = "BUFF" },
			-- Die by the Sword
			{ spellID = 118038, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bladestorm
			{ spellID = 46924, unitId = "player", caster = "player", filter = "BUFF" },
			-- Avatar
			{ spellID = 107574, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Warrior Procs",
			Enable = true,
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS, 
			setPoint = { "BOTTOMLEFT", "iFilgerProcs", 0, 22 },

			-- Bloodsurge
			{ spellID = 46916, unitId = "player", caster = "all", filter = "BUFF" },
			-- Sword and Board
			{ spellID = 50227, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victorious
			{ spellID = 32216, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Enrage
			{ spellID = 12880, unitId = "player", caster = "player", filter = "BUFF" },
			-- Meat Cleaver
			{ spellID = 85739, unitId = "player", caster = "player", filter = "BUFF" },
			-- Glyph of Rude Interruption
			{ spellID = 86663, unitId = "player", caster = "player", filter = "BUFF" },
			-- Taste for Blood
			{ spellID = 56638, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ultimatum
			{ spellID = 122510, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS, 
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },

			-- Hamstring
			{ spellID = 1715, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Piercing Howl
			{ spellID = 12323, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sluggish (Slow from Herioc Strike glyph)
			{ spellID = 129923, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Colossus Smash
			{ spellID = 86346, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Charge Stun
			{ spellID = 7922, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shockwave
			{ spellID = 46968, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Deep Wounds
			{ spellID = 115767, unitId = "target", caster = "all", filter = "DEBUFF" },

			-- Weakened Armor
			{ spellID = 113746, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Weakened Blows
			{ spellID = 115798, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Enfeeblement (Warlock)
			{ spellID = 109466, unitId = "target", caster = "all", filter = "DEBUFF", spec = 3 },
		},
		{
			Name = "Temp Buffs",  
			Enable = false,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "BAR",
			Alpha = 1,
			BarWidth = 196,
			Size = 18, 
			setPoint = { "TOPLEFT", "iFilgerTempBuffs", 0, -22 },

			-- Battle Shout
			{ spellID = 6673, unitId = "player", caster = "all", filter = "BUFF" },
			-- Horn of Winter
			{ spellID = 57330, unitId = "player", caster = "all", filter = "BUFF" },	
		},
	},
	["MONK"] = {  ---------------------------------------------------- Monk
		{
			Name = "Cooldown",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = CdS,
			setPoint = { "BOTTOMLEFT", "iFilgerCooldowns", 0, 22 },
			
			-- Expel Harm
			{ spellID = 115072, filter = "CD" },
			-- Forifying Brew
			{ spellID = 115203, filter = "CD" },
			-- Grapple Weapon
			{ spellID = 117368, filter = "CD" },
			-- Paralysis
			{ spellID = 115078, filter = "CD" },
			-- Spear Hand Strike
			{ spellID = 116705, filter = "CD" },
			-- Touch of Death
			{ spellID = 115080, filter = "CD" },
			-- Zen Meditation
			{ spellID = 115176, filter = "CD" },
			-- Energizing Brew
			{ spellID = 115288, filter = "CD" },
			-- Fists of Fury
			{ spellID = 113656, filter = "CD" },
			-- Flying Serpent Kick
			{ spellID = 101545, filter = "CD" },
			-- Touch of Karma
			{ spellID = 122470, filter = "CD" },
			-- Summon Black Ox
			{ spellID = 115315, filter = "CD" },
			-- Avert Harm
			{ spellID = 115213, filter = "CD" },
			-- Guard
			{ spellID = 115295, filter = "CD" },
			-- Clash
			{ spellID = 122057, filter = "CD" },
			-- Revival
			{ spellID = 115310, filter = "CD" },
			-- Summon Jade Serpent Statue
			{ spellID = 115313, filter = "CD" },
			-- Thunder Focus Tea
			{ spellID = 116680, filter = "CD" },
			-- Life Cocoon
			{ spellID = 116849, filter = "CD" },
			-- Diffuse Magic
			{ spellID = 122783, filter = "CD" },
			-- Dampen Harm
			{ spellID = 122278, filter = "CD" },
			-- Leg Sweep
			{ spellID = 119381, filter = "CD" },
			-- Rising Sun Kick, Windwalker
			{ spellID = 107428, filter = "CD" },
			-- Chi Wave, Talent
			{ spellID = 132467, filter = "CD" },
			-- Tiger's Lust, Talent
			{ spellID = 116841, filter = "CD" },
			-- Renewing Mist, Mistweaver (very important)
			{ spellID = 119611, filter = "CD" },
			-- Mana Tea, Mistweaver (very important)
			{ spellID = 115294, filter = "CD" },
		},
		{
			Name = "Monk Buffs",
			Enable = true,
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PBS,
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },
			
			-- Death Note
			{ spellID = 121125, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fortifying Brew
			{ spellID = 120954, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tiger Power
			{ spellID = 125359, unitId = "player", caster = "player", filter = "BUFF" },
			-- Path of Blossoms
			{ spellID = 124336, unitId = "player", caster = "player", filter = "BUFF" },
			-- Spinning Crane Kick
			{ spellID = 101546, unitId = "player", caster = "player", filter = "BUFF" },
			-- Zen Meditation
			{ spellID = 131523, unitId = "player", caster = "player", filter = "BUFF" },
			-- Energizing Brew
			{ spellID = 115288, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tigereye Brew
			{ spellID = 125195, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tiger Strikes
			{ spellID = 120273, unitId = "player", caster = "player", filter = "BUFF" },
			
			Name = "Target Buffs and Debuffs",
			Enable = true,
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PTDBS,
			setPoint = { "BOTTOMLEFT", "iFilgerBuffDebuff", 0, 22 },
			
			-- Leg Sweep
			{ spellID = 119381, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Paralysis
			{ spellID = 115078, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Disable
			{ spellID = 116095, unitId = "target", caster = "player", filter = "DEBUFF" },
			
		},
	},			
-------------------------------------------------------------	
-- Credits to Sapz
-------------------------------------------------------------	
	["HUNTER/DRUID/ROGUE"] = {  ---------------------------------------------------- Hunt & Drood
		{
			Name = "Shivable Rage effects",
			Enable = false,
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "ICON",
			Alpha = 1,
			Size = 40,
			setPoint = { "BOTTOM", "iFilgerRage", "BOTTOM", 0, 22 },

			-------------------
			-- Filger Enrage Shiveable stuff  -
			-------------------

			-- Unholy Frenzy
			{ spellID = 49016, unitId = "target", caster = "all", filter = "BUFF" },
			-- Vengeance
			{ spellID = 76691, unitId = "target", caster = "all", filter = "BUFF" },
			-- Enrage
			{ spellID = 5229, unitId = "target", caster = "all", filter = "BUFF" },
			-- Savage Roar
			{ spellID = 52610, unitId = "target", caster = "all", filter = "BUFF" },
			-- Owlkin Frenzy
			{ spellID = 48391, unitId = "target", caster = "all", filter = "BUFF" },
			-- Berserker Rage
			{ spellID = 18499, unitId = "target", caster = "all", filter = "BUFF" },
			-- Death Wish
			{ spellID = 12292, unitId = "target", caster = "all", filter = "BUFF" },
			-- Bastion of Defense
			{ spellID = 84608, unitId = "target", caster = "all", filter = "BUFF" },
		},
	},
-------------------------------------------------------------	
-- dont touch anything below or else ill ass rape you aight!
-------------------------------------------------------------	
	["ALL"] = {
		{
			Name = "ENHANCEMENTS",
			Enable = true,
			Direction = "DOWN",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Column = 3,
--			BarWidth = 150,
			Size = EnhanceS,
			setPoint = {  "TOPRIGHT", "iFilgerEnhancements",0,-22 },
			
		-- Drink
			{ spellID = 80167, unitId = "player", caster = "all", filter = "BUFF" },
			
		-- External Buffs
			-- Tricks of the Trade
			{ spellID = 57934, unitId = "player", caster = "all", filter = "BUFF" },
			-- Devotion Aura
			{ spellID = 31821, unitId = "player", caster = "all", filter = "BUFF" },
			-- Power Infusion
			{ spellID = 10060, unitId = "player", caster = "all", filter = "BUFF" },
			-- Bloodlust
			{ spellID = 2825, unitId = "player", caster = "all", filter = "BUFF" },
			-- Heroism
			{ spellID = 32182, unitId = "player", caster = "all", filter = "BUFF" },
			-- Time Warp
			{ spellID = 80353, unitId = "player", caster = "all", filter = "BUFF" },
			-- Ancient Hysteria
			{ spellID = 90355, unitId = "player", caster = "all", filter = "BUFF" },
			-- Innervate
			{ spellID = 29166, unitId = "player", caster = "all", filter = "BUFF"},
			-- Lightwell
			{ spellID = 7001, unitId = "player", caster = "all", filter = "BUFF"},
			-- Hand of Salvation
			{ spellID = 1038, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hand of Protection
			{ spellID = 1022, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hand of Freedom
			{ spellID = 1044, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hand of Purity
			{ spellID = 114039, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hand of Sacrifice
			{ spellID = 6940, unitId = "player", caster = "all", filter = "BUFF" },
			-- Guardian Spirit
			{ spellID = 47788, unitId = "player", caster = "all", filter = "BUFF" },
			-- Aspect of the Pack
			{ spellID = 13159, unitId = "player", caster = "all", filter = "BUFF" },
			-- Stampeding Roar
			{ spellID = 77764, unitId = "player", caster = "all", filter = "BUFF" },
			-- Master's Call
			{ spellID = 54216, unitId = "player", caster = "all", filter = "BUFF" },
			-- Berserking -- BUFF BG
			{ spellID = 24378, unitId = "player", caster = "all", filter = "BUFF", absID = true },
			-- Ice Ward
			{ spellID = 111264, unitId = "player", caster = "all", filter = "BUFF" },
			-- Roar of Sacrifice
			{ spellID = 53480, unitId = "player", caster = "all", filter = "BUFF" },
			-- Mana Tide Totem
			{ spellID = 16191, unitId = "player", caster = "all", filter = "BUFF" },
			-- Windwalk Totem
			{ spellID = 114896, unitId = "player", caster = "all", filter = "BUFF" },
			-- Safeguard
			{ spellID = 114029, unitId = "player", caster = "all", filter = "BUFF" },
			-- Intervene
			{ spellID = 3411, unitId = "player", caster = "all", filter = "BUFF" },
			-- Vigilance
			{ spellID = 114030, unitId = "player", caster = "all", filter = "BUFF" },
			-- Mass Spell Reflection
			{ spellID = 114028, unitId = "player", caster = "all", filter = "BUFF" },
			-- Guardian Spirit
			{ spellID = 47788, unitId = "player", caster = "all", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "player", caster = "all", filter = "BUFF" },
			-- Ironbark
			{ spellID = 102342, unitId = "player", caster = "all", filter = "BUFF" },
			-- Stormlash Totem
			--{ spellID = 12676, unitId = "player", caster = "all", filter = "BUFF" },
			
		--Racial
			-- Berserking -- RACIAL
			{ spellID = 26297, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Blood Fury
			{ spellID = 33697, unitId = "player", caster = "player", filter = "BUFF" },
			-- Darkflight
			{ spellID = 68992, unitId = "player", caster = "player", filter = "BUFF" },

		-- Trinket Procs

			-- Darkmoon Cards (Proc)
			{ spellID = 128985, unitId = "player", caster = "player", filter = "BUFF" },

			-- Tank
			-- Stuff of Nightmares (Dodge, Proc)
			{ spellID = 126646, unitId = "player", caster = "player", filter = "BUFF" },
			-- Vial of Dragon's Blood (Dodge, Proc)
			{ spellID = 126533, unitId = "player", caster = "player", filter = "BUFF" },
			-- Jade Warlord Figurine (Mastery, Use)
			{ spellID = 126597, unitId = "player", caster = "player", filter = "BUFF" },

			-- Physical Strength DPS
			-- Helmbreaker Medallion (Crit, Use)
			{ spellID = 136084, unitId = "player", caster = "player", filter = "BUFF" },
			-- Darkmist Vortex (Haste, Proc)
			{ spellID = 126657, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lei Shin's Final Orders (Strength, Proc)
			{ spellID = 126582, unitId = "player", caster = "player", filter = "BUFF" },
			-- Jade Charioteer Figurine (Strength, Use)
			{ spellID = 126599, unitId = "player", caster = "player", filter = "BUFF" },
			-- Iron Belly Wok (Haste, Use)
			{ spellID = 129812, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Physical Agility DPS
			-- Arrowflight Medallion (Crit, Use)
			{ spellID = 136086, unitId = "player", caster = "player", filter = "BUFF" },
			-- Terror in the Mists (Crit, Proc)
			{ spellID = 126649, unitId = "player", caster = "player", filter = "BUFF" },
			-- Jade Bandit Figurine (Haste, Use)
			{ spellID = 126599, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bottle of Infinite Stars (Agility, Proc)
			{ spellID = 126554, unitId = "player", caster = "player", filter = "BUFF" },
			
			-- Caster General
			-- Shock-Charger Medallion Figurine (Intellect, Use)
			{ spellID = 136082, unitId = "player", caster = "player", filter = "BUFF" },
			-- Jade Magistrate Figurine (Crit, Use)
			{ spellID = 126605, unitId = "player", caster = "player", filter = "BUFF" },
			-- Caster DPS
			-- Essence of Terror (Haste, Proc)
			{ spellID = 126659, unitId = "player", caster = "player", filter = "BUFF" },
			-- Light of the Cosmos (Intellect, Proc)
			{ spellID = 126577, unitId = "player", caster = "player", filter = "BUFF" },
			-- Caster Heal
			-- Qin-xi's Polarizing Seal (Intellect, Proc)
			{ spellID = 126588, unitId = "player", caster = "player", filter = "BUFF" },

		-- PvP Trinkets
			-- PvP Trinkets (Health, Use)
			{ spellID = 126697, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Strength, Use)
			{ spellID = 126679, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Strength, Proc)
			{ spellID = 126700, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Agility, Use)
			{ spellID = 126690, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Agility, Proc)
			{ spellID = 126707, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Spell Power, Use)
			{ spellID = 126683, unitId = "player", caster = "player", filter = "BUFF" },
			-- PvP Trinkets (Spell Power, Proc)
			{ spellID = 126705, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Engineering
			-- Synapse Springs
			{ spellID = 126734, unitId = "player", caster = "player", filter = "BUFF" },
			-- Phase Fingers
			{ spellID = 108788, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nitro Boosts
			{ spellID = 54861, unitId = "player", caster = "player", filter = "BUFF" },
			-- Parachute
			{ spellID = 55001, unitId = "player", caster = "player", filter = "BUFF" },
			-- Flintlocke's Woodchucker
			{ spellID = 99621, unitId = "player", caster = "player", filter = "BUFF" },

		-- Herbalism
			-- Lifeblood
			{ spellID = 55503, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Tailoring
			-- Darkglow
			{ spellID = 125482, unitId = "player", caster = "all", filter = "BUFF" },
			-- Lightweave (Intellect)
			{ spellID = 125487, unitId = "player", caster = "player", filter = "BUFF" },
			-- Swordguard Embroidery (Attack Power)
			{ spellID = 125489, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Enchanting

			-- River's Song (Dodge)
			{ spellID = 116660, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dancing Steel (Strength/Agility)
			{ spellID = 120032, unitId = "player", caster = "all", filter = "BUFF" },
			-- Jade Spirit (Intellect + Spirit)
			{ spellID = 104993, unitId = "player", caster = "all", filter = "BUFF" },
			-- Mirror Scope (Crit)
			{ spellID = 109092, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lord Blastington's Scope of Doom (Agility)
			{ spellID = 109085, unitId = "player", caster = "player", filter = "BUFF" },

		-- Brewfeast
			-- Now is the time! (Mithril Stopwatch)
			{ spellID = 101291, unitId = "player", caster = "player", filter = "BUFF" },
			-- Drunken Evasiveness (Brawler's Trophy)
			{ spellID = 101293, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life (Petrified Pickled Egg)
			{ spellID = 101289, unitId = "player", caster = "player", filter = "BUFF" },
			-- Loom of Fate (Spidersilk Spindle)
			{ spellID = 96945, unitId = "player", caster = "player", filter = "BUFF" },
			-- Stay of Execution (Stay of Execution)
			{ spellID = 96988, unitId = "player", caster = "player", filter = "BUFF" },

		-- Potions
			-- Virmen's Bite
			{spellID = 105697, unitId = "player", caster = "player", filter = "BUFF"},
			-- Potion of Mogu Power
			{spellID = 105706, unitId = "player", caster = "player", filter = "BUFF"},
			-- Potion of the Jade Serpent
			{spellID = 105702, unitId = "player", caster = "player", filter = "BUFF"},
			-- Speed (Potion)
			{spellID = 2379, unitId = "player", caster = "player", filter = "BUFF", absID = true},
			-- Speed (BG)
			{spellID = 23451, unitId = "player", caster = "all", filter = "BUFF", absID = true},
		},
		{
			Name = "Racials", -- (racial)
			Enable = true,
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Merge = true,
			Mergewith = "Cooldown",
--			BarWidth = 150,
			Size = 52,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			-- Trinket 1
			{ slotID = 13, filter = "CD" }, 
			-- Trinket 2
			{ slotID = 14, filter = "CD" }, 
			-- Arcane Torrent
			{ spellID = 28730, filter = "CD" }, 
			-- Gift of the Naaru
			{ spellID = 59547, filter = "CD" }, 
			-- Stoneform
			{ spellID = 20594, filter = "CD" }, 
			-- Shadowmeld
			{ spellID = 58984, filter = "CD" }, 
			-- Blood Fury
			{ spellID = 20572, filter = "CD" }, 
			-- Darkflight
			{ spellID = 68992, filter = "CD" }, 
			-- Cannibalize
			{ spellID = 20577, filter = "CD" }, 
			-- Will of the Forsaken
			{ spellID = 7744, filter = "CD" }, 
			-- Berserking
			{ spellID = 26297, filter = "CD" }, 
			-- Every Man for Himself
			{ spellID = 59752, filter = "CD" }, 
			-- Rocket Jump
			{ spellID = 69070, filter = "CD" }, 
			-- Escape Artist
			{ spellID = 20589, filter = "CD" }, 
		},
		{
			Name = "ICD", -- (ICD)
			Enable = true,
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
			Merge = true,
			Mergewith = "Cooldown",
--			BarWidth = 150,
			Size = 37,
			setPoint = { "BOTTOMRIGHT", "iFilgerCooldowns", 40, 0 },

			-- Lightweave
			{ spellID = 125487, filter = "ICD", trigger = "BUFF", duration = 61 }, -- it seems 62 with Proculas but with 30% proc chance, i guess 60. => ~25% uptime => 150k intel bonus instead of 80 for the others professions. :P
			-- Power Torrent
			{ spellID = 74241, filter = "ICD", trigger = "BUFF", duration = 45 }, -- exact (check in game with Proculas)
			-- Tricks of the Trade (Thx Rogue)
			--{ spellID = 57934, filter = "ICD", trigger = "BUFF", duration = 30 },
			-- Dreadful Gladiator's Insignia of Victory
			{ spellID = 126700, filter = "ICD", trigger = "BUFF", duration = 50 },

--			{ spellID = 74241, filter = "ICD", trigger = "BUFF", duration = 45, slotID = 16 }, -- if slotID not specified, spellID is used as icon
		},
	},
	["PVP"] = {
		{
--			Tons of SpellIDs taken from LoseControl so credit to Kouri 
--			Here we track pvp buffs on our target
			Name = "ENEMY PVP BUFF",
			Enable = true,
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = TBS,
			setPoint = {  "BOTTOMRIGHT", "iFilgerPvpTargetBuffs" ,0,22 },
			
			-- Druid --
			-- Innervate
			{ spellID = 29166, unitId = "target", caster = "all", filter = "BUFF"},
			-- Barkskin
			{ spellID = 22812, unitId = "target", caster = "all", filter = "BUFF" },
			-- Survival Instincts -50% dmg
			{ spellID = 61336, unitId = "target", caster = "all", filter = "BUFF" },
			-- Frenzied Regeneration
			{ spellID = 22842, unitId = "target", caster = "all", filter = "BUFF" },
			-- Nature's grasp 
			{ spellID = 16689, unitId = "target", caster = "all", filter = "BUFF"},
			-- Stampeding Roar
			{ spellID = 106898, unitId = "target", caster = "all", filter = "BUFF" },
			-- Berserk
			{ spellID = 106951, unitId = "target", caster = "all", filter = "BUFF", absID = true },
			-- Starfall
			{ spellID = 48505, unitId = "target", caster = "all", filter = "BUFF" },
			-- Predatory Swiftness
			{ spellID = 69369, unitId = "target", caster = "all", filter = "BUFF" },
			-- Incarnation
			{ spellID = 117679, unitId = "target", caster = "all", filter = "BUFF" },
			-- Incarnation: King of the Jungle
			{ spellID = 102543, unitId = "target", caster = "all", filter = "BUFF" },
			-- Incarnation: Son of Ursoc
			{ spellID = 102558, unitId = "target", caster = "all", filter = "BUFF" },
			-- Incarnation: Chosen of Elune
			{ spellID = 102560, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ironbark
			{ spellID = 102342, unitId = "target", caster = "all", filter = "BUFF" },
			-- Might of Ursoc
			{ spellID = 106922, unitId = "target", caster = "all", filter = "BUFF" },
			-- Celestial Alignment
			{ spellID = 112071, unitId = "target", caster = "all", filter = "BUFF" },
			-- Nature's Vigil
			{ spellID = 124974, unitId = "target", caster = "all", filter = "BUFF" },
			
			-- Warrior --
			-- Spell Reflection
			{ spellID = 23920, unitId = "target", caster = "all", filter = "BUFF" },
			-- Enraged Regeneration
			{ spellID = 55694, unitId = "target", caster = "all", filter = "BUFF" },
			-- Rallying Cry +20% health
			{ spellID = 97463, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shield Wall -40% dmg
			{ spellID = 871, unitId = "target", caster = "all", filter = "BUFF" },
			-- Berserker Rage
			{ spellID = 18499, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shield Block +25% block
			{ spellID = 2565, unitId = "target", caster = "all", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, unitId = "target", caster = "all", filter = "BUFF" },
			-- Recklessness
			{ spellID = 1719, unitId = "target", caster = "all", filter = "BUFF" },
			-- Bladestorm
			{ spellID = 46924, unitId = "target", caster = "all", filter = "BUFF" },
			-- Die by the Sword
			{ spellID = 118038, unitId = "target", caster = "all", filter = "BUFF" },
			-- Safeguard
			{ spellID = 114029, unitId = "target", caster = "all", filter = "BUFF" },
			-- Mass Spell Reflection
			{ spellID = 114028, unitId = "target", caster = "all", filter = "BUFF" },
			-- Intervene
			{ spellID = 3411, unitId = "target", caster = "all", filter = "BUFF" },
			-- Vigilance
			{ spellID = 114030, unitId = "target", caster = "all", filter = "BUFF" },
			-- Avatar
			{ spellID = 107574, unitId = "target", caster = "all", filter = "BUFF" },
			
			-- Paladin --
			-- Forbearance -- it may be good to know that you can't Lay of Hands your target...
			{ spellID = 25771, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Divine Shield
			{ spellID = 642, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Freedom
			{ spellID = 1044, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Sacrifice
			{ spellID = 6940, unitId = "target", caster = "all", filter = "BUFF" },
			-- Devotion Aura
			{ spellID = 31821, unitId = "target", caster = "all", filter = "BUFF" },	
			-- Hand of Protection
			{ spellID = 1022, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Protection
			{ spellID = 498, unitId = "target", caster = "all", filter = "BUFF" },
			-- Avenging Wrath
			{ spellID = 31884, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Favor
			{ spellID = 31842, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Guardian
			--{ spellID = 70940, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ardent Defender
			{ spellID = 31850, unitId = "target", caster = "all", filter = "BUFF" },
			-- Guardian of Ancient Kings (prot) -50% dmg
			{ spellID = 86659, unitId = "target", caster = "all", filter = "BUFF" },
			-- Sacred Shield
			{ spellID = 20925, unitId = "target", caster = "all", filter = "BUFF", absID = true },
			-- Divine Plea
			{ spellID = 54428, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Purity
			{ spellID = 114039, unitId = "target", caster = "all", filter = "BUFF" },
			-- Holy Avenger
			{ spellID = 105809, unitId = "target", caster = "all", filter = "BUFF" },
			-- Speed of Light
			{ spellID = 85499, unitId = "target", caster = "all", filter = "BUFF" },

			-- Hunter --
			-- Deterrence
			{ spellID = 19263, unitId = "target", caster = "all", filter = "BUFF" },
			-- Master's Call
			{ spellID = 54216, unitId = "target", caster = "all", filter = "BUFF" },
			-- The Beast Within
			{ spellID = 34471, unitId = "target", caster = "all", filter = "BUFF" },
			-- Rapid Fire
			{ spellID = 3045, unitId = "target", caster = "all", filter = "BUFF" },
			-- Roar of Sacrifice
			{ spellID = 53480, unitId = "target", caster = "all", filter = "BUFF" },
			-- Aspect of the Pack
			{ spellID = 13159, unitId = "target", caster = "all", filter = "BUFF" },
			-- Aspect of the Cheetah
			{ spellID = 5118, unitId = "target", caster = "all", filter = "BUFF" },
			
			-- Death Knight --
			-- Anti-Magic Shell
			{ spellID = 48707, unitId = "target", caster = "all", filter = "BUFF" },
			-- Bone Shield -20% dmg
			{ spellID = 49222, unitId = "target", caster = "all", filter = "BUFF" }, 
			-- Lichborne
			{ spellID = 49039, unitId = "target", caster = "all", filter = "BUFF" },
			-- Vampiric Blood +25% heal
			{ spellID = 55233, unitId = "target", caster = "all", filter = "BUFF" },
			-- Icebound Fortitude
			{ spellID = 48792, unitId = "target", caster = "all", filter = "BUFF" },
			-- Pillar of Frost
			{ spellID = 51271, unitId = "target", caster = "all", filter = "BUFF" },
			-- Death's Advance
			{ spellID = 96268, unitId = "target", caster = "all", filter = "BUFF" },
			
			-- Shaman --
			-- Grounding Totem Effect
			{ spellID = 8178, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shamanistic Rage
			{ spellID = 30823, unitId = "target", caster = "all", filter = "BUFF" },
			-- Earth Shield
			{ spellID = 974, unitId = "target", caster = "all", filter = "BUFF" },
			-- Spiritwalker's Grace
			{ spellID = 79206, unitId = "target", caster = "all", filter = "BUFF" },
			-- Mana Tide
			{ spellID = 16191, unitId = "target", caster = "all", filter = "BUFF" },
			-- Spirit Walk
			{ spellID = 58875, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ancestral Guidance
			{ spellID = 108281, unitId = "target", caster = "all", filter = "BUFF" },
			-- Astral Shift
			{ spellID = 108271, unitId = "target", caster = "all", filter = "BUFF" },
			-- Elemental Mastery
			{ spellID = 16166, unitId = "target", caster = "all", filter = "BUFF" },
			-- Windwalk Totem
			{ spellID = 114896, unitId = "target", caster = "all", filter = "BUFF" },

			-- Mage --
			--Ice Block
			{ spellID = 45438, unitId = "target", caster = "all", filter = "BUFF" },
			-- Arcane Power
			{ spellID = 12042, unitId = "target", caster = "all", filter = "BUFF" },
			-- Icy Veins
			{ spellID = 12472, unitId = "target", caster = "all", filter = "BUFF" },			
			-- Fingers Of Frost
			--{ spellID = 83074, unitId = "target", caster = "all", filter = "BUFF"},
			-- Invisibility
			{ spellID = 32612, unitId = "target", caster = "all", filter = "BUFF" },
			-- Evocation
			{ spellID = 12051, unitId = "target", caster = "all", filter = "BUFF" },
			-- Blazing Speed
			{ spellID = 108843, unitId = "target", caster = "all", filter = "BUFF" },
			-- Cauterize
			{ spellID = 87023, unitId = "target", caster = "target", filter = "DEBUFF" },
			-- Alter Time
			{ spellID = 110909, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ice Floes
			{ spellID = 108839, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ice Ward
			{ spellID = 111264, unitId = "target", caster = "all", filter = "BUFF" },

			-- Rogue --
			--Cloak of Shadows
			{ spellID = 31224, unitId = "target", caster = "all", filter = "BUFF" },
			--Evasion
			{ spellID = 5277, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shadow Dance
			{ spellID = 51713, unitId = "target", caster = "all", filter = "BUFF" },
			-- Combat Insight
			{ spellID = 74002, unitId = "target", caster = "all", filter = "BUFF" },
			-- Combat Readiness
			{ spellID = 74001, unitId = "target", caster = "all", filter = "BUFF" },
			-- Cheating Death
			{ spellID = 45182, unitId = "target", caster = "all", filter = "BUFF" },
		
			-- Priest --
			-- Dispersion
			{ spellID = 47585, unitId = "target", caster = "all", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "target", caster = "all", filter = "BUFF" },
			-- Power Infusion
			{ spellID = 10060, unitId = "target", caster = "all", filter = "BUFF" },
			-- Glyph of Inner Focus
			{ spellID = 96267, unitId = "target", caster = "all", filter = "BUFF" },
			-- Guardian Spirit
			{ spellID = 47788, unitId = "target", caster = "all", filter = "BUFF" },
			-- Fear Ward
			{ spellID = 6346, unitId = "target", caster = "all", filter = "BUFF" },
			-- Phantasm
			{ spellID = 114239, unitId = "target", caster = "all", filter = "BUFF" },
			
			-- Warlock --
			-- Dark Soul: Misery
			{ spellID = 113860, unitId = "player", caster = "all", filter = "BUFF" },
			-- Dark Soul: Instability
			{ spellID = 113858, unitId = "player", caster = "all", filter = "BUFF" },
			-- Dark Soul: Knowledge
			{ spellID = 113861, unitId = "player", caster = "all", filter = "BUFF" },
			-- Unending Resolve
			{ spellID = 104773, unitId = "target", caster = "all", filter = "BUFF" },
			-- Burning Rush
			{ spellID = 111400, unitId = "target", caster = "all", filter = "BUFF" },
			-- Dark Bargain
			{ spellID = 110913, unitId = "target", caster = "all", filter = "BUFF" },
			-- Dark Regeneration
			{ spellID = 108359, unitId = "target", caster = "all", filter = "BUFF" },
			-- Demonic Rebirth
			{ spellID = 88448, unitId = "target", caster = "all", filter = "BUFF" },
			-- Soulstone
			{ spellID = 20707, unitId = "target", caster = "all", filter = "BUFF" },
			-- Dark Apotheosis
			{ spellID = 114168, unitId = "target", caster = "all", filter = "BUFF" },
			-- Metamorphosis
			{ spellID = 103958, unitId = "target", caster = "all", filter = "BUFF" },

			-- All
			-- Warsong flag
			{ spellID = 23333, unitId = "target", caster = "all", filter = "BUFF" },
			{ spellID = 23335, unitId = "target", caster = "all", filter = "BUFF" },
			-- Netherstorm flag
			{ spellID = 34976, unitId = "target", caster = "all", filter = "BUFF" },
			-- Seaforium
			{ spellID = 52418, unitId = "target", caster = "all", filter = "BUFF" },
			-- Seaforium 2
			{ spellID = 66271, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			-- Drink
			{ spellID = 80167, unitId = "target", caster = "all", filter = "BUFF" },
		},
		{
			-- Here we track pvp debuffs on ourself
			Name = "ENEMY PVP/PVE DEBUFF",
			Enable = true,
			Direction = "HORIZONTAL",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PDBS,
			setPoint = {  "BOTTOM", "iFilgerPlayerDebuffs" ,0,22 },
			
			--[[ Rogue ]]--
			--Kidney Shot
			{ spellID = 408, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blind
			{ spellID = 2094, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Sap
			{ spellID = 6770, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Smoke Bomb
			{ spellID = 88611, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Garrote - Silence
			{ spellID = 1330, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Dismantle
			{ spellID = 51722, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Crippling Poison
			--{ spellID = 3409, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Debilitation
			--{ spellID = 119696, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Deadly Throw
			--{ spellID = 26679, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Gouge
			{ spellID = 1776, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Cheap Shot
			{ spellID = 1833, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Vendetta
			--{ spellID = 79140, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mind-numbing Poison
			{ spellID = 5760, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Partial Paralytic
			{ spellID = 115197, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Paralysis
			{ spellID = 113953, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Paladin ]]--
			--Hammer of Justice
			{ spellID = 853, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Seal of Justice
			--{ spellID = 20170, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Repentance
			{ spellID = 20066, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Holy Wrath
			{ spellID = 119072, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Turn Evil
			{ spellID = 10326, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Avenger's Shield (Silence)
			{ spellID = 31935, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },			
			--Fist of Justice
			{ spellID = 105593, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blinding Light
			{ spellID = 105421, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Denounce
			{ spellID = 2812, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Burden of guilt
			--{ spellID = 110300, unitId = "player", caster = "all", filter = "DEBUFF" },

			--[[ Mage ]]--
			--Silenced - Improved Counterspell
			{ spellID = 55021, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Polymorph
			{ spellID = 118, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Deep Freeze
			{ spellID = 44572, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Ring of Frost
			{ spellID = 82691, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Freeze (Water Elemental)
			{ spellID = 33395, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },		
			--Frost Nova
			{ spellID = 122, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blast Wave
			{ spellID = 11113, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Cone of Cold
			--{ spellID = 120, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostbolt
			--{ spellID = 116, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostfire Bolt
			--{ spellID = 44614, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Slow
			--{ spellID = 31589, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Dragon's Breath
			{ spellID = 31661, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Cauterize
			{ spellID = 87023, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Combustion Impact
			{ spellID = 118271, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frostjaw
			{ spellID = 102051, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Death Kinght ]]--
			--Monstrous Blow (Super ghoul)
			{ spellID = 91797, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Chains of Ice (Root)
			{ spellID = 96294, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Strangulate
			{ spellID = 47476, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Gnaw (Ghoul)
			{ spellID = 91800, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Chilblains
			--{ spellID = 50435, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Dark Simulacrum
			{ spellID = 77606, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shambling Rush
			{ spellID = 91807, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Asphyxiate
			{ spellID = 108194, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Remorseless Winter
			{ spellID = 115001, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
		
			--[[ Druid ]]--
			-- Mighty Bash
			{ spellID = 5211, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Cyclone
			{ spellID = 33786, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Maim
			{ spellID = 22570, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Pounce
			{ spellID = 9005, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Solar Beam
			{ spellID = 81261, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Entangling Roots
			{ spellID = 339, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Immobilized
			{ spellID = 45334, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Infected Wounds
			--{ spellID = 58180, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Typhoon
			{ spellID = 61391, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hibernate
			{ spellID = 2637, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mass Entanglement
			{ spellID = 102359, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Disorienting Roar
			{ spellID = 99, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ursol's Vortex
			{ spellID = 127797, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Bear Hug
			{ spellID = 102795, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fae Silence
			{ spellID = 114238, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Dazed (Wild Charge - Cat)
			{ spellID = 50259, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Druid Symbiosis]]--
			-- hammer of Justice (Paladin)
			{ spellID = 110698, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Intimidating Roar [Fleeing in fear] (Warrior)
			{ spellID = 113004, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Intimidating Roar [Cowering in fear] (Warrior)
			{ spellID = 113056, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Grapple Weapon (Monk)
			--{ spellID = 126458, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Hunter ]]--
			--Freezing Trap
			{ spellID = 3355, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Intimidation
			{ spellID = 24394, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Wyvern Sting
			{ spellID = 19386, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Silencing Shot
			{ spellID = 34490, unitId = "player", caster = "all", filter = "DEBUFF" },			
			--Scatter Shot
			{ spellID = 19503, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Entrapment
			{ spellID = 64803, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Concussive Barrage
			{ spellID = 35101, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Concussive Shot
			{ spellID = 5116, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Ice Trap Aura
			--{ spellID = 13810, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Glyph of Freezing Trap
			{ spellID = 61394, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Sonic Blast (Bat)
			{ spellID = 50519, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Snatch (Bird of Prey)
			{ spellID = 91644, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Lock Jaw (Dog)
			{ spellID = 90327, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Pin (Crab)
			{ spellID = 50245, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Bad Manner (Monkey)
			{ spellID = 90337, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Venom Web Spray (Silithid)
			{ spellID = 54706, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Web (Spider)
			{ spellID = 4167, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Sting (Wasp)
			{ spellID = 56626, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Clench (Scorpid)
			{ spellID = 50541, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Scare Beast
			{ spellID = 1513, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Binding Shot
			{ spellID = 117405, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Narrow Escape
			{ spellID = 128405, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Priest ]]--
			--Dominate Mind
			{ spellID = 605, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Psychic Horror
			{ spellID = 64044, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Psychic Horror - Disarm
			{ spellID = 64058, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Psychic Scream
			{ spellID = 8122, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shackle Undead
			{ spellID = 9484, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Sin and Punishment
			{ spellID = 87204, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Paralysis
			{ spellID = 87194, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Mind Flay
			--{ spellID = 15407, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Silence
			{ spellID = 15487, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Void Tendrils
			{ spellID = 114404, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Holy Word: Chastise
			{ spellID = 88625, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Psychic Terror (Psyfiend)
			{ spellID = 113792, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Shaman ]]--
			--Bind Elemental
			{ spellID = 76780, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Earthquake
			--{ spellID = 61882, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Earthquake (Stun Proc)
			{ spellID = 77505, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Hex
			{ spellID = 51514, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Earthgrab (Earth's Grasp)
			{ spellID = 64695, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Freeze (Frozen Power)
			{ spellID = 63685, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Earthbind (5 second duration per pulse, but will keep re-applying the debuff as long as you stand within the pulse radius)
			--{ spellID = 3600, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frost Shock
			--{ spellID = 8056, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frostbrand Attack
			{ spellID = 8034, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Static Charge
			{ spellID = 118905, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shaman Primal Earth Elemental
			{ spellID = 118345, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Warlock ]]--
			--Axe Toss (Felguard)
			{ spellID = 89766, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Banish
			{ spellID = 710, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Mortal Coil
			{ spellID = 6789, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Fear
			{ spellID = 118699, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Howl of Terror
			{ spellID = 5484, unitId = "player", caster = "all", filter = "DEBUFF" },		
			--Seduction (Succubus)
			{ spellID = 6358, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mesmerize (Succubus)
			{ spellID = 115268, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },	
			--Shadowfury
			{ spellID = 30283, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Spell Lock (Felhunter)
			{ spellID = 24259, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Unstable Affliction
			{ spellID = 31117, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Optical Blast (Observer)
			{ spellID = 115782, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mesmerize (Shivarra)
			{ spellID = 115268, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Disarm (Voidwalker)
			{ spellID = 118093, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Havoc
			{ spellID = 80240, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Archimonde's Vengeance
			{ spellID = 108505, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sleep (Metamorphosis)
			{ spellID = 104045, unitId = "player", caster = "all", filter = "DEBUFF" },	
			
			--[[ Warrior ]]--
			--Hamstring
			--{ spellID = 1715, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Charge Stun
			{ spellID = 7922, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Intimidating Shout
			{ spellID = 20511, unitId = "player", caster = "all", filter = "DEBUFF" },	
			--Shockwave
			{ spellID = 132168, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Silenced - Gag Order
			{ spellID = 18498, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Disarm
			{ spellID = 676, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Piercing Howl
			--{ spellID = 12323, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Colossus Smash
			{ spellID = 86346, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Warbringer
			{ spellID = 105771, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Staggering Shout
			{ spellID = 107566, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Storm Bolt
			{ spellID = 107570, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Dragon Roar
			{ spellID = 118895, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--[[ Monk ]]--
			--Breath of Fire (Glyph of Breath of Fire)
			{ spellID = 123393, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Clash
			{ spellID = 126451, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Charging Ox Wave
			{ spellID = 119392, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Leg Sweep
			{ spellID = 119381, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Paralysis
			{ spellID = 115078, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Grapple Weapon
			{ spellID = 117368, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Spear Hand Strike
			{ spellID = 116709, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Disable
			{ spellID = 116706, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			--Spinning Fire Blossom
			{ spellID = 123407, unitId = "player", caster = "all", filter = "DEBUFF" },

			--[[ Racials ]]--
			-- War Stomp
			{ spellID = 20549, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Arcane Torrent
			{ spellID = 69179, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Quaking Palm
			{ spellID = 107079, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Other
			-- Rocket Fuel Leak
			{ spellID = 94794, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Reversed Shield
			{ spellID = 82406, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Plasma Misfire!
			{ spellID = 94549, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
			----------------------------------------------------------------------------------------
			--PVE
			----------------------------------------------------------------------------------------
		{
			Name = "Mists of Pandaria Debuffs", -- list compiled by Ryn
			Enable = false,
			Direction = "HORIZONTAL",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PDBS,
			setPoint = {  "BOTTOM", "iFilgerPlayerDebuffs" ,0,22 },
			
			-- [[ OUTDOOR BOSSES ]] --
			-- Sha of Anger
			--Seethe
			{ spellID = 119487, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Aggressive Behavior
			{ spellID = 119626, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Unleashed Wrath
			{ spellID = 119488, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			--Salys's Warband
			-- Stomp
			{ spellID = 121787, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			
			-- [[ HEART OF FEAR ]] --
			-- Imperial Vizier Zor'lok
			-- Exhale
			{ spellID = 122761, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Convert
			{ spellID = 122740, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Blade Lord Ta'yak
			-- Overwhelming Assault
			{ spellID = 123474, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Windstep
			{ spellID = 123175, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Garalon
			-- Pheromones
			{ spellID = 123092, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Wind Lord Mel'Jarak
			-- Wind Bomb
			{ spellID = 131813, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Amber Prison
			{ spellID = 121876, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corrosive Resin
			{ spellID = 122064, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Amber-Shaper Un'sok
			-- Burning Amber
			{ spellID = 122504, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Parasitic Growth
			{ spellID = 121949, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mutated Construct -- Need to get an ID when MoP is live
			-- Amber Strike
			{ spellID = 122389, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fling
			{ spellID = 122413, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Amber Globule
			{ spellID = 125498, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Grand Empress Shek'zeer
			-- Eyes of the Empress
			{ spellID = 123707, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fixate -- Need to get an ID when MoP is live
			-- Sticky Resin
			{ spellID = 124097, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Poison-Drenched Armor
			{ spellID = 124821, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Consuming Terror
			{ spellID = 124849, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Visions of Demise
			{ spellID = 124862, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Heart of Fear
			{ spellID = 123845, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- [[ MOGU'SHAN VAULTS ]] --
			-- The Stone Guard
			-- Amethyst Pool
			{ spellID = 116235, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Jasper Chains
			{ spellID = 130395, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Feng the Accursed
			-- Lightning Last
			{ spellID = 131788, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Arcane Shock
			{ spellID = 131790, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shadowburn
			{ spellID = 131792, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Wildfire Spark
			{ spellID = 116583, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Arcane Resonance
			{ spellID = 116417, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Chains of Shadow
			{ spellID = 118783, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Nullification Barrier
			{ spellID = 115856, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shroud of Reversal
			{ spellID = 115911, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Garajal the Spiritbinder
			-- Cross Over
			{ spellID = 116166, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Voodoo Dolls
			{ spellID = 116000, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Elegon
			-- Overcharged
			{ spellID = 117878, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Closed Circuit
			{ spellID = 117949, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Energy Cascade
			{ spellID = 119722, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Will of the Emperor
			-- Focused Assault
			{ spellID = 116525, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Focused Defense
			{ spellID = 116778, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Focused Energy
			{ spellID = 116829, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- [[ TERRACE OF ENDLESS SPRING ]] --
			-- Protector of the Endless
			-- Defiled Ground
			{ spellID = 117986, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Prison
			{ spellID = 117398, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corrupted Essence
			{ spellID = 117905, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Tsulong
			-- Dread Shadows
			{ spellID = 122768, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shadow Breath
			{ spellID = 122752, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Terrorize
			{ spellID = 123011, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Lei Shi
			-- Spray
			{ spellID = 123121, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Scary Fog
			{ spellID = 123705, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "Cataclysm debuff", -- list by jasje, taken from aurawatch.lua
			Enable = false,
			Direction = "HORIZONTAL",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PDBS,
			setPoint = {  "BOTTOM", "iFilgerPlayerDebuffs" ,0,22 },
			
		-- Baradin Hold
			-- Consuming Darkness
--DELETED	{ spellID = 95173, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Meteor Slash / Meteorschlag (Argaloth)
			{ spellID = 88942, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gaze of Occu'thar
			{ spellID = 97028, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Blackwing Descent
			-- Magmaw
			-- Constricting Chains
--DELETED	{ spellID = 91911, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Parasitic Infection
--DELETED	{ spellID = 94679, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mangle
			--{ spellID = 94617, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Omintron Defense System	
			-- Poison Soaked Shell	
			{ spellID = 79835, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Conductor
--DELETED	{ spellID = 91433, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Incineration Security Measure
--DELETED	{ spellID = 91521, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Power Conversion - Arcanotron
			{ spellID = 79729, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Power Conversion - Arcanotron
--DELETED	{ spellID = 91547, unitId = "player", caster = "all", filter = "BUFF" },

			-- Maloriak	
			-- Flash Freeze
			{ spellID = 77699, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Biting Chill
			{ spellID = 77760, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Dark Sludge
--DELETED	{ spellID = 92988, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- remedy -- for spellsteal 
			{ spellID = 77912, unitId = "target", caster = "all", filter = "BUFF" },
			-- remedy -- for spellsteal  - focus
			{ spellID = 77912, unitId = "focus", caster = "all", filter = "BUFF" },
			
			-- Atramedes
			-- Searing Flame
--DELETED	{ spellID = 92423, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Roaring Flame
--DELETED	{ spellID = 92485, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sonic Breath
--DELETED	{ spellID = 92407, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Chimaeron	
			-- Break
			{ spellID = 82881, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Low Health
			{ spellID = 89084, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Nefarian	
			-- Shadow Conductor
			{ spellID = 92053, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Stolen Power
			{ spellID = 80627, unitId = "player", caster = "all", filter = "BUFF" },
			
		-- The Bastion of Twilight
			--Valiona & Theralion
			-- Blackout
--DELETED	{ spellID = 92878, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Devouring Flames
			{ spellID = 86840, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Engulfing Magic
			{ spellID = 86622, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Twilight Meteorite
			{ spellID = 86013, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Halfus Wyrmbreaker	
			-- Malevolent Strikes
			{ spellID = 39171, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Twilight Ascendant Council
			-- Burning Blood
			{ spellID = 82662, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Hydro Lance
--DELETED	{ spellID = 92511, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Waterlogged
			{ spellID = 82762, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frozen
--DELETED	{ spellID = 92505, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Flame Torrent
--DELETED	{ spellID = 92518, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Rod
			{ spellID = 83099, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gravity Core
			{ spellID = 92075, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gravity Crush
--DELETED	{ spellID = 92488, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Static Overload
			{ spellID = 92067, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Frost Beacon
			{ spellID = 92307, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Cho'gall	
			-- Corruption: Accelerated
			{ spellID = 81836, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Malformation
			{ spellID = 82125, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Absolute
			{ spellID = 82170, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corruption: Sickness
--DELETED	{ spellID = 93200, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Cho's Blast
			{ spellID = 86028, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gall's Blast
			{ spellID = 86029, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Sinestra
			-- Wrack
			{ spellID = 89435, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Essence of the Red
			{ spellID = 87946, unitId = "player", caster = "all", filter = "BUFF" },
			
		-- Throne of the Four Winds
			-- Conclave of Wind
			-- Nezir <Lord of the North Wind>
			-- Wind Chill
--DELETED	{ spellID = 93123, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ice Patch
--DELETED	{ spellID = 93131, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Anshal <Lord of the West Wind>
			-- Soothing Breeze
			{ spellID = 86206, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Toxic Spores
--DELETED	{ spellID = 93122, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Rohash <Lord of the East Wind>
			-- Slicing Gale
--DELETED	{ spellID = 93058, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Al'Akir
			-- Ice Storm
--DELETED	{ spellID = 93260, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ice Storm
--DELETED	{ spellID = 93271, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Rod
--DELETED	{ spellID = 93295, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Static Shock / Statischer Schock (Al'Akir)
			{ spellID = 87873, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Acid Rain / Säureregen (Al'Akir)
--DELETED	{ spellID = 93279, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Firelands
			--Trash
			-- Melt Armor
			{ spellID = 99532, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Shannox
			-- Magma Rupture
			{ spellID = 99840, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Crystal Prison Trap 
			{ spellID = 99837, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Jagged Tear
			{ spellID = 99936, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Lord Rhyolith	
			-- Eruption
			{ spellID = 98492, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Alysrazor	
			-- Molten Feather
			{ spellID = 97128, unitId = "player", caster = "all", filter = "BUFF" },
			-- Wings of Flame
			{ spellID = 98619, unitId = "player", caster = "all", filter = "BUFF" },
			-- Blazing Power
			{ spellID = 99461, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Alysra's Razor
			{ spellID = 100029, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Beth'tilac	
			-- The Widow's Kiss
			{ spellID = 99476, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fixate (Heroic)
			{ spellID = 99526, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Volatile Poison (Heroic)
			{ spellID = 99278, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Baleroc	
			-- Torment
			{ spellID = 99256, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Tormented
			{ spellID = 99257, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blaze of Glory
			{ spellID = 99252, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Vital Flame
			{ spellID = 99262, unitId = "player", caster = "all", filter = "BUFF" },
			-- Vital Spark
			{ spellID = 99263, unitId = "player", caster = "all", filter = "BUFF" },
			-- Countdown
			{ spellID = 99516, unitId = "player", caster = "all", filter = "BUFF" },
			
			-- Majordomo Staghelm	
			-- Searing Seeds
			{ spellID = 98450, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Burning Orbs
			{ spellID = 98451, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Ragnaros	
			-- Blazing Heat
			{ spellID = 100460, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Burning Wound 
--DELETED	{ spellID = 101239, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fixate
			{ spellID = 99849, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Magma Trap Vulnerability
			{ spellID = 100238, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Superheated
			{ spellID = 100594, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Dragon Soul
			--Morchok
			-- Safe
			{ spellID = 103541, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Warning
			{ spellID = 103536, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Danger
			{ spellID = 103534, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Black Blood of the Earth
--DELETED	{ spellID = 108570, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Crush Armor
			{ spellID = 33661, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Warlord Zon'ozz
			-- Disrupting Shadows
			{ spellID = 103434, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Yor'sahj the Unsleeping
			-- Deep Corruption
			{ spellID = 103628, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Hagara the Stormbinder
			-- Frostflake
			{ spellID = 109325, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Target
			{ spellID = 105285, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shattered Ice
			{ spellID = 105289, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ice Tomb
			{ spellID = 104451, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ice Lance
--DELETED	{ spellID = 107061, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Lightning Storm
			{ spellID = 105465, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Watery Entrenchment
			{ spellID = 105259, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Ultraxion
			-- Looming Darkness
			{ spellID = 106498, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Twilight Burst
			{ spellID = 106415, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fading Light
			{ spellID = 109075, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gift of Life
			{ spellID = 105896, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Essence of Dreams
			{ spellID = 105900, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Source of Magic
			{ spellID = 105903, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Warmaster Blackhorn
			-- Twilight Barrage
--DELETED	{ spellID = 109204, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sunder Armor
			{ spellID = 108043, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Shockwave
			{ spellID = 108046, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Brutal Strike
			{ spellID = 107567, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Degeneration
			{ spellID = 107558, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Spine of Deathwing
			-- Searing Plasma
			{ spellID = 105479, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Fiery Grip
			{ spellID = 105490, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Grasping Tendrils
			{ spellID = 105563, unitId = "player", caster = "all", filter = "DEBUFF" },

			--Madness of Deathwing
			-- Shrapnel
--DELETED	{ spellID = 109597, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Degenerative Bite
			{ spellID = 105841, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blistering heat
			{ spellID = 105445, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Tetanus
--DELETED	{ spellID = 109603, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Corrupting Parasite -- HM
			{ spellID = 108649, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "WotLK debuff",
			Enable = false,
			Direction = "HORIZONTAL",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PDBS,
			setPoint = {  "BOTTOM", "iFilgerPlayerDebuffs" ,0,22 },
			

		-- ICC
			-- Deathbringer Saurfang
			-- Mark of the Fallen Champion
			{ spellID = 72293, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Festergut
			-- Inoculated
--DELETED	{ spellID = 72103, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Rotface
			-- Mutated Infection
--DELETED	{ spellID = 71224, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Professor Putricide
			-- Unbound Plague
--DELETED	{ spellID = 72856, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Plague Sickness
--DELETED	{ spellID = 73117, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gas Variable
			{ spellID = 70353, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ooze Variable
			{ spellID = 70352, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Bloodqueen Lana'thel
			-- Pact of the Darkfallen
			{ spellID = 71340, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Swarming Shadows
			{ spellID = 71861, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Essence of the Blood Queen
--DELETED	{ spellID = 71473, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

			-- Sindragosa
			-- Frost Bomb
--DELETED	{ spellID = 71053, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Instability
			{ spellID = 69766, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Unchained Magic
			{ spellID = 69762, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Mystic Buffet
			{ spellID = 70128, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Arthas - The Lich King
			-- Necrotic Plague
--DELETED	{ spellID = 73912, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },

		-- Halion
			--Fiery Combustion/Feurige Einäscherung (Halion)
			{ spellID = 74562, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Soul Consumption/Seelenverzehrung (Halion)
			{ spellID = 74792, size = 68, unitId = "player", caster = "all", filter = "DEBUFF" },
		},
		{
			-- Here we track pvp debuffs on target
			Name = "TARGET PVP DEBUFF",
			Enable = true,
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = TDBS,
			setPoint = {  "BOTTOMLEFT", "iFilgerPvpTargetDebuffs" ,0,22 },			
			
			--[[ Rogue ]]--
			--Kidney Shot
			{ spellID = 408, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Blind
			{ spellID = 2094, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Sap
			{ spellID = 6770, unitId = "target", caster = "all", filter = "DEBUFF" },			
			--Smoke Bomb
			{ spellID = 88611, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Garrote - Silence
			{ spellID = 1330, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Dismantle
			{ spellID = 51722, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Crippling Poison
			--{ spellID = 3409, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Debilitation
			--{ spellID = 119696, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Deadly Throw
			--{ spellID = 26679, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Gouge
			{ spellID = 1776, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Cheap Shot
			{ spellID = 1833, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Vendetta
			--{ spellID = 79140, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Mind-numbing Poison
			--{ spellID = 5760, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Partial Paralytic
			{ spellID = 115197, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Paralysis
			{ spellID = 113953, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Paladin ]]--
			--Hammer of Justice
			{ spellID = 853, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Seal of Justice
			--{ spellID = 20170, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Repentance
			{ spellID = 20066, unitId = "target", caster = "all", filter = "DEBUFF" },			
			--Holy Wrath
			{ spellID = 119072, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Turn Evil
			{ spellID = 10326, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Avenger's Shield (Silence)
			{ spellID = 31935, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },			
			--Fist of Justice
			{ spellID = 105593, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Blinding Light
			{ spellID = 105421, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Denounce
			{ spellID = 2812, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Burden of guilt
			--{ spellID = 110300, unitId = "target", caster = "all", filter = "DEBUFF" },

			--[[ Mage ]]--
			--Silenced - Improved Counterspell
			{ spellID = 55021, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Polymorph
			{ spellID = 118, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Deep Freeze
			{ spellID = 44572, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Ring of Frost
			{ spellID = 82691, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Freeze (Water Elemental)
			{ spellID = 33395, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },		
			--Frost Nova
			{ spellID = 122, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Blast Wave
			{ spellID = 11113, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Cone of Cold
			--{ spellID = 120, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Frostbolt
			--{ spellID = 116, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Frostfire Bolt
			--{ spellID = 44614, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Slow
			--{ spellID = 31589, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Dragon's Breath
			{ spellID = 31661, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Cauterize
			{ spellID = 87023, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Combustion Impact
			{ spellID = 118271, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frostjaw
			{ spellID = 102051, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			--[[ Death Kinght ]]--
			--Monstrous Blow (Super ghoul)
			{ spellID = 91797, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Chains of Ice (Root)
			{ spellID = 96294, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Strangulate
			{ spellID = 47476, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Gnaw (Ghoul)
			{ spellID = 91800, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Chilblains
			--{ spellID = 50435, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Dark Simulacrum
			{ spellID = 77606, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shambling Rush
			{ spellID = 91807, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Asphyxiate
			{ spellID = 108194, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Remorseless Winter
			{ spellID = 115001, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
		
			--[[ Druid ]]--
			-- Mighty Bash
			{ spellID = 5211, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Cyclone
			{ spellID = 33786, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Maim
			{ spellID = 22570, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Pounce
			{ spellID = 9005, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Solar Beam
			{ spellID = 81261, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Entangling Roots
			{ spellID = 339, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Immobilized
			{ spellID = 45334, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Infected Wounds
			--{ spellID = 58180, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Typhoon
			{ spellID = 61391, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Hibernate
			{ spellID = 2637, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Mass Entanglement
			{ spellID = 102359, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Disorienting Roar
			{ spellID = 99, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Ursol's Vortex
			{ spellID = 127797, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Bear Hug
			{ spellID = 102795, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Fae Silence
			{ spellID = 114238, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Dazed (Wild Charge - Cat)
			{ spellID = 50259, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Druid Symbiosis]]--
			-- hammer of Justice (Paladin)
			{ spellID = 110698, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			-- Intimidating Roar [Fleeing in fear] (Warrior)
			{ spellID = 113004, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			-- Intimidating Roar [Cowering in fear] (Warrior)
			{ spellID = 113056, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			-- Grapple Weapon (Monk)
			--{ spellID = 126458, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			
			--[[ Hunter ]]--
			--Freezing Trap
			{ spellID = 3355, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Intimidation
			{ spellID = 24394, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Wyvern Sting
			{ spellID = 19386, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Silencing Shot
			{ spellID = 34490, unitId = "target", caster = "all", filter = "DEBUFF" },			
			--Scatter Shot
			{ spellID = 19503, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Entrapment
			{ spellID = 64803, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Concussive Barrage
			{ spellID = 35101, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Concussive Shot
			{ spellID = 5116, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Ice Trap Aura
			--{ spellID = 13810, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Glyph of Freezing Trap
			{ spellID = 61394, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Sonic Blast (Bat)
			{ spellID = 50519, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Snatch (Bird of Prey)
			{ spellID = 91644, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Lock Jaw (Dog)
			{ spellID = 90327, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Pin (Crab)
			{ spellID = 50245, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Bad Manner (Monkey)
			{ spellID = 90337, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Venom Web Spray (Silithid)
			{ spellID = 54706, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Web (Spider)
			{ spellID = 4167, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Sting (Wasp)
			{ spellID = 56626, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Clench (Scorpid)
			{ spellID = 50541, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Scare Beast
			{ spellID = 1513, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Binding Shot
			{ spellID = 117405, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Narrow Escape
			{ spellID = 128405, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			--[[ Priest ]]--
			--Dominate Mind
			{ spellID = 605, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Psychic Horror
			{ spellID = 64044, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Psychic Horror - Disarm
			{ spellID = 64058, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Psychic Scream
			{ spellID = 8122, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Shackle Undead
			{ spellID = 9484, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Paralysis
			{ spellID = 87194, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Mind Flay
			--{ spellID = 15407, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Silence
			{ spellID = 15487, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Void Tendrils
			{ spellID = 114404, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Holy Word: Chastise
			{ spellID = 88625, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Psychic Terror (Psyfiend)
			{ spellID = 113792, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			--[[ Shaman ]]--
			--Bind Elemental
			{ spellID = 76780, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Earthquake
			--{ spellID = 61882, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Earthquake (Stun Proc)
			{ spellID = 77505, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Hex
			{ spellID = 51514, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Earthgrab (Earth's Grasp)
			{ spellID = 64695, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Freeze (Frozen Power)
			{ spellID = 63685, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Earthbind (5 second duration per pulse, but will keep re-applying the debuff as long as you stand within the pulse radius)
			--{ spellID = 3600, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Frost Shock
			--{ spellID = 8056, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Frostbrand Attack
			{ spellID = 8034, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Static Charge
			{ spellID = 118905, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shaman Primal Earth Elemental
			{ spellID = 118345, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			--[[ Warlock ]]--
			--Axe Toss (Felguard)
			{ spellID = 89766, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Banish
			{ spellID = 710, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Mortal Coil
			{ spellID = 6789, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Fear
			{ spellID = 118699, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Howl of Terror
			{ spellID = 5484, unitId = "target", caster = "all", filter = "DEBUFF" },		
			--Seduction (Succubus)
			{ spellID = 6358, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Shadowfury
			{ spellID = 30283, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Spell Lock (Felhunter)
			{ spellID = 24259, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Unstable Affliction
			{ spellID = 31117, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Optical Blast (Observer)
			{ spellID = 115782, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Mesmerize (Shivarra)
			{ spellID = 115268, unitId = "target", caster = "all", filter = "DEBUFF", },
			--Disarm (Voidwalker)
			{ spellID = 118093, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			-- Sleep (Metamorphosis)
			{ spellID = 104045, unitId = "target", caster = "all", filter = "DEBUFF" },	
			
			--[[ Warrior ]]--
			--Hamstring
			--{ spellID = 1715, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Charge Stun
			{ spellID = 7922, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Intimidating Shout
			{ spellID = 20511, unitId = "target", caster = "all", filter = "DEBUFF" },	
			--Shockwave
			{ spellID = 132168, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Silenced - Gag Order
			{ spellID = 18498, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Disarm
			{ spellID = 676, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Piercing Howl
			--{ spellID = 12323, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Colossus Smash
			--{ spellID = 86346, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Warbringer
			{ spellID = 105771, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Staggering Shout
			{ spellID = 107566, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Storm Bolt
			{ spellID = 107570, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Dragon Roar
			{ spellID = 118895, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			--[[ Monk ]]--
			--Breath of Fire (Glyph of Breath of Fire)
			{ spellID = 123393, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Clash
			{ spellID = 126451, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Charging Ox Wave
			{ spellID = 119392, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Leg Sweep
			{ spellID = 119381, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Paralysis
			{ spellID = 115078, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Grapple Weapon
			{ spellID = 117368, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Spear Hand Strike
			{ spellID = 116709, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Disable
			{ spellID = 116706, unitId = "target", caster = "all", filter = "DEBUFF", absID = true },
			--Spinning Fire Blossom
			{ spellID = 123407, unitId = "target", caster = "all", filter = "DEBUFF" },

			--[[ Racials ]]--
			-- War Stomp
			{ spellID = 20549, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Arcane Torrent
			{ spellID = 69179, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Quaking Palm
			{ spellID = 107079, unitId = "target", caster = "all", filter = "DEBUFF" },
			
			-- Other
			-- Rocket Fuel Leak
			{ spellID = 94794, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Reversed Shield
			{ spellID = 82406, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Plasma Misfire!
			{ spellID = 94549, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
	},
	["TANKS"] = {
		{
			Name = "Tanks CDs", -- requested by Nâmi@EU-Culte de la Rive noire 
			Enable = false,
			Direction = "HORIZONTAL",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,			
			Alpha = 1,
			Size = 47,
			setPoint = { "BOTTOM", "iFilgerTanksCDs", 0, 22 },
			
		-- Priest CDs !!! 
			-- Guardian Spirit
			{ spellID = 47788, unitId = "target", caster = "all", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "target", caster = "all", filter = "BUFF" },
			
		-- Paladin
			-- Forbearance -- it may be good to know that you can't Lay of Hands your target...
			{ spellID = 25771, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Divine Shield -- immune to all
			{ spellID = 642, unitId = "target", caster = "all", filter = "BUFF" },
			-- Hand of Protection -- immune to cac
			{ spellID = 1022, unitId = "target", caster = "all", filter = "BUFF" },
			-- Divine Protection -20% physical OR magical dmg
			{ spellID = 498, unitId = "target", caster = "all", filter = "BUFF" },
			-- Ardent Defender
			{ spellID = 31850, unitId = "target", caster = "all", filter = "BUFF" },
			-- Guardian of Ancient Kings (prot) -50% dmg
			{ spellID = 86659, unitId = "target", caster = "all", filter = "BUFF" },
			
		-- Druid
			-- Survival Instincts -50% dmg
			{ spellID = 61336, unitId = "target", caster = "all", filter = "BUFF" },
			-- Barkskin -20% dmg
			{ spellID = 22812, unitId = "target", caster = "all", filter = "BUFF" },
			-- Frenzied Regeneration
			{ spellID = 22842, unitId = "target", caster = "all", filter = "BUFF" },
			
		-- Warrior
			-- Enraged Regeneration
			{ spellID = 55694, unitId = "target", caster = "all", filter = "BUFF" },
			-- Rallying Cry +20% health
			{ spellID = 97462, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shield Wall -40% dmg
			{ spellID = 871, unitId = "target", caster = "all", filter = "BUFF" },
			-- Spell Reflection
			{ spellID = 23920, unitId = "target", caster = "all", filter = "BUFF" },
			-- Shield Block +25% block
			{ spellID = 2565, unitId = "target", caster = "all", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, unitId = "target", caster = "all", filter = "BUFF" },

		-- Death Knight
			-- Anti-Magic Shell : -75% spell dmg + Immune to magic debuffs.
			{ spellID = 48707, unitId = "target", caster = "all", filter = "BUFF" }, 
			-- Bone Shield -20% dmg
			{ spellID = 49222, unitId = "target", caster = "all", filter = "BUFF" }, 
			-- Icebound Fortitude -50% dmg
			{ spellID = 48792, unitId = "target", caster = "all", filter = "BUFF" }, 
			-- Vampiric Blood +25% heal
			{ spellID = 55233, unitId = "target", caster = "all", filter = "BUFF" }, 
			--Lichborne
			{ spellID = 49039, unitId = "target", caster = "all", filter = "BUFF" }, 
		},
		{
			Name = "Tanks CDs focus",
			Enable = false,
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,			
			Alpha = 1,
			Size = 47,
			setPoint = { "BOTTOMRIGHT", "iFilgerTanksCDsFocus", 0, 22 },
			
		-- Priest CDs !!! 
			-- Guardian Spirit
			{ spellID = 47788, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Pain Suppression
			{ spellID = 33206, unitId = "focus", caster = "all", filter = "BUFF" },
			
		-- Paladin
			-- Forbearance -- it may be good to know that you can't Lay of Hands your focus...
			{ spellID = 25771, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Divine Shield -- immune to all
			{ spellID = 642, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Hand of Protection -- immune to cac
			{ spellID = 1022, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Divine Protection -20% physical OR magical dmg
			{ spellID = 498, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Ardent Defender
			{ spellID = 31850, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Guardian of Ancient Kings (prot) -50% dmg
			{ spellID = 86659, unitId = "focus", caster = "all", filter = "BUFF" },
			
		-- Druid
			-- Survival Instincts -50% dmg
			{ spellID = 61336, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Barkskin -20% dmg
			{ spellID = 22812, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Frenzied Regeneration
			{ spellID = 22842, unitId = "focus", caster = "all", filter = "BUFF" },
			
		-- Warrior
			-- Enraged Regeneration
			{ spellID = 55694, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Rallying Cry +20% health
			{ spellID = 97462, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Shield Wall -40% dmg
			{ spellID = 871, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Spell Reflection
			{ spellID = 23920, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Shield Block +25% block
			{ spellID = 2565, unitId = "focus", caster = "all", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, unitId = "focus", caster = "all", filter = "BUFF" },

		-- Death Knight
			-- Anti-Magic Shell : -75% spell dmg + Immune to magic debuffs.
			{ spellID = 48707, unitId = "focus", caster = "all", filter = "BUFF" }, 
			-- Bone Shield -20% dmg
			{ spellID = 49222, unitId = "focus", caster = "all", filter = "BUFF" }, 
			-- Icebound Fortitude -50% dmg
			{ spellID = 48792, unitId = "focus", caster = "all", filter = "BUFF" }, 
			-- Vampiric Blood +25% heal
			{ spellID = 55233, unitId = "focus", caster = "all", filter = "BUFF" }, 
			--Lichborne
			{ spellID = 49039, unitId = "focus", caster = "all", filter = "BUFF" }, 
		},
		{
			Name = "Tanks Boss Debuff",
			Enable = false,
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			BarWidth = 150,			
			Alpha = 1,
			Size = 37,
			setPoint = { "BOTTOMRIGHT", "iFilgerTanksCDs", 0, 22 },
			
			-- Demoralizing Shout (war)
			{ spellID = 1160, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Thunderclap (war)
			{ spellID = 6343, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Weakened Armor (Druid)
			{ spellID = 113746, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Infected Wounds (Druid)
			{ spellID = 48484, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Demoralizing Roar (Druid)
			{ spellID = 99, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness (Warlock)
			{ spellID = 702, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frost Fever (Death Knight)
			{ spellID = 55095, unitId = "target", caster = "all", filter = "DEBUFF" },
			 --Blood Plague (Death Knight)
			{ spellID = 59879, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Vindication (Paladin)
			{ spellID = 26017, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
	},
}

iFilgerConfig = C