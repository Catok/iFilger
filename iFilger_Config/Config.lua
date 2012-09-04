local C = {}

C["Filger_Config"] = {
	["cleverzone"] = false,								-- load only PVP in PVP zones and PVE in PVE zones (require to reload the 1st time you enter the pve zone)
	["tooltip"] = false,									-- tooltip on mouseover buffs, some people wanted it. I don't.
	["TooltipMover"] = false,							-- tooltip on TooltipMover for ElvUI and Tukui users.
	["FlashIcon"] = false,								-- Flash when time left is below a threshold in ICON mode.
	["FlashBar"] = false,								-- Flash when time left is below a threshold in BAR mode.
	["FlashThreshold"] = 5,								-- Threshold from which icons start flashing.
	["FlashDuration"] = 0.5,							-- Duration of each flash smaller => quicker.
}

C["Filger_Cooldown"] = { -- will be disabled if Tukui / ElvUI / OmniCC / ncCooldown is enabled
	["enable"] = true,									-- do i really need to explain this?
	["treshold"] = 8,									-- show decimal under X seconds and text turn red
	["fontsize"] = 20,									--the base font size to use at a scale of 1
}

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
		{ name = "iFilgerPlayerBuff", w = 100, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -250, text = "Player Buffs" },
		{ name = "iFilgerProcs", w = 45, h = 21, anchor = "BOTTOMLEFT", x = -85, y = -290, text = "Procs" },
		{ name = "iFilgerBuffDebuff", w = 170, h = 21, anchor = "TOPLEFT", x = 86, y = -269, text = "Target Buffs/Debuffs" },
		--{ name = "iFilgerTempBuffs", w = 150, h = 20, anchor = "BOTTOMLEFT", x = -306, y = -208, text = "Temp Buffs" },
	},
	["ALL"] = {
		{ name = "iFilgerEnhancements", w = 110, h = 20, anchor = "BOTTOMRIGHT", x = -47, y = -359, text = "Enhancements" },
		{ name = "iFilgerPlayerDebuffs", w = 150, h = 20, anchor = "CENTER", x = 0, y = -155, text = "Pvp Player Debuffs" },
		{ name = "iFilgerPvpTargetDebuffs", w = 155, h = 20, anchor = "BOTTOMLEFT", x = 38, y = -430, text = "Pvp Target Debuffs" },
		{ name = "iFilgerPvpTargetBuffs", w = 140, h = 20, anchor = "BOTTOMRIGHT", x = 36, y = -430, text = "Pvp Target Buffs" },
		{ name = "iFilgerTanksCDs", w = 85, h = 20, anchor = "BOTTOM", x = 0, y = 100, text = "Tanks CDs" },
		{ name = "iFilgerTanksCDsFocus", w = 135, h = 20, anchor = "TOPRIGHT", x = -220, y = 53, text = "Tanks focus CDs" },
	},
}

C["Filger_Spells"] = {
	["DEATHKNIGHT"] = {  ---------------------------------------------------- Death Knight -- A REVOIR
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
			-- Flame Orb
			--{ spellID = 82731, filter = "CD" }, 
			-- Mage Ward
			--{ spellID = 543, filter = "CD" }, 
			-- Deep Freeze
			{ spellID = 44572, filter = "CD" }, 
			-- Arcane Power -- since 4T13
			--{ spellID = 12042, filter = "CD" }, 
			-- Icy Veins -- since 4T13
			--{ spellID = 12472, filter = "CD" }, 
			-- Combustion -- since 4T13
			{ spellID = 11129, filter = "CD" }, 
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
			-- Arcane Blast
			{ spellID = 30451, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Fingers Of Frost
			{ spellID = 44544, unitId = "player", caster = "player", filter = "BUFF"},
			-- Cauterize	
			{ spellID = 87023, unitId = "player", caster = "player", filter = "DEBUFF" },
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
			-- Frost Bomb
			{ spellID = 112948, unitId = "target", caster = "player", filter = "DEBUFF" },
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
			
			-- Molten Armor
			{ spellID = 30482, unitId = "player", caster = "all", filter = "IBUFF", incombat = false, spec = 2 },
			-- Mage Armor
			{ spellID = 6117, unitId = "player", caster = "all", filter = "IBUFF", incombat = false, spec = 1 },
			-- Ice Barrier
--			{ spellID = 11426, unitId = "player", caster = "all", filter = "ACD", incombat = false, spec = 3 },
			-- Combustion
--			{ spellID = 11129, caster = "all", filter = "ACD", incombat = false },
			-- Living Bomb
			{ spellID = 44457, unitId = "target", caster = "player", filter = "IDEBUFF", incombat = false, spec = 2 }, 
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
			{ spellID = 118, unitId = "focus", caster = "player", filter = "DEBUFF" },
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

			-- Dispersion
			{ spellID = 47585, filter = "CD" }, 
			-- Guardian Spirit
			--{ spellID = 47788, filter = "CD" }, 
			-- Holy Word: Sanctuary
			--{ spellID = 88686, filter = "CD" }, 
			-- Inner Focus
			--{ spellID = 89485, filter = "CD" }, 
			-- Penance
			--{ spellID = 47540, filter = "CD" }, 
			-- Circle of Healing
			--{ spellID = 34861, filter = "CD" },
			-- Prayer of Mending
			--{ spellID = 33076, filter = "CD" },
			-- Psychic Scream
			--{ spellID = 8122, filter = "CD" }, 
			-- Shadowfiend
			--{ spellID = 34433, filter = "CD" },
			-- Archangel
			--{ spellID = 87151, filter = "CD" },
			-- Desperate Prayer
			--{ spellID = 19236, filter = "CD" },
			-- Holy Word: Chastise
			--{ spellID = 88625, filter = "CD" },
			-- Mind Blast
			--{ spellID = 8092, filter = "CD" },
			-- Holy Fire
			--{ spellID = 14914, filter = "CD" },
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
			-- Temporal Boon - 2T13 Heal
			{ spellID = 105826, unitId = "player", caster = "player", filter = "BUFF" },
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
			{ spellID = 9484, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Psychic Scream
			{ spellID = 8122, unitId = "focus", caster = "all", filter = "DEBUFF" },
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
			
			-- Backlash
			{ spellID = 34936, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soulburn
			{ spellID = 74434, unitId = "player", caster = "player", filter = "BUFF" },
			-- Apocalypse T12 4P
			{ spellID = 99232, unitId = "player", caster = "player", filter = "BUFF" },
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
			{ spellID = 5782, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Banish
			{ spellID = 710, unitId = "focus", caster = "all", filter = "DEBUFF" },
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

			-- Charge (cat)
			--{ spellID = 49376, filter = "CD", absID = true },
			-- Frenzied Regeneration
			{ spellID = 22842, filter = "CD" },
			-- Starfall
			--{ spellID = 48505, filter = "CD" },
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
			{ spellID = 339, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Cyclone
			{ spellID = 33786, unitId = "focus", caster = "all", filter = "DEBUFF" },
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
			{ spellID = 19386, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Freezing Trap
			{ spellID = 3355, unitId = "focus", caster = "all", filter = "DEBUFF" },
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

			-- Sprint
			{ spellID = 2983, filter = "CD" },
			-- Cloak of Shadows
			--{ spellID = 31224, filter = "CD" },
			-- Tricks of the Trade
			--{ spellID = 57934, filter = "CD" },
			-- Kidney Shot
			--{ spellID = 408, filter = "CD" },
			-- ShadowStep
			{ spellID = 36554, filter = "CD" },
			-- Shadow Dance
			--{ spellID = 51713, filter = "CD" },
			-- Vendetta
			--{ spellID = 14177, filter = "CD" },
			-- Cold Blood
			--{ spellID = 14177, filter = "CD" },
			-- Vanish
			--{ spellID = 1856, filter = "CD" },
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
			{ spellID = 2094, unitId = "focus", caster = "all", filter = "DEBUFF" },
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
			-- Nature's Swiftness
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

			-- Maelstorm Weapon
			{ spellID = 53817, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16246, unitId = "player", caster = "player", filter = "BUFF" },
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
			{ spellID = 51514, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Bind Elemental
			{ spellID = 76780, unitId = "focus", caster = "all", filter = "DEBUFF" },
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

			-- Divine Plea
			{ spellID = 54428, filter = "CD" },
			-- Lay on Hands
			--{ spellID = 633, filter = "CD" },
			-- Divine Guardian
			--{ spellID = 70940, filter = "CD" },
			-- Holy Shield
			--{ spellID = 20925, filter = "CD" },
			-- Divine Protection
			--{ spellID = 498, filter = "CD" },
			-- Avenging Wrath
			--{ spellID = 31884, filter = "CD" },
			-- Guardian of Ancient Kings
			--{ spellID = 86150, filter = "CD" },
			-- Divine Favor
			--{ spellID = 31842, filter = "CD" },
			-- Aura Mastery
			--{ spellID = 31821, filter = "CD" },
			-- Hand of Freedom
			--{ spellID = 1044, filter = "CD" },
			-- Sacred Shield
			--{ spellID = 96263, filter = "ICD", trigger = "BUFF", duration = 60 },
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
			
			-- Recklesness
			--{ spellID = 1719, filter = "CD" },
			-- Berserker rage
			--{ spellID = 18499, filter = "CD" },  
			-- Last Stand
			{ spellID = 12975, filter = "CD" },	
			-- Taunt
			{ spellID = 355, filter = "CD" },	
			-- Commanding Shout
			{ spellID = 469, filter = "CD" },	
			-- Heroic Leap	  
			--{ spellID = 6544, filter = "CD" },
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
			setPoint = { "TOPLEFT", "iFilgerPlayerBuff", -38, 0 },
			
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
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			Alpha = 1,
--			BarWidth = 150,
			Size = PPS, 
			setPoint = { "TOPLEFT", "iFilgerProcs", -43, 0 },

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

			-- Colossus Smash
			{ spellID = 86346, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Weakened Armor
			{ spellID = 113746, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Charge Stun
			{ spellID = 7922, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shockwave
			{ spellID = 46968, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Hamstring
			{ spellID = 1715, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Piercing Howl
			{ spellID = 12323, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Deep Wounds
			{ spellID = 115767, unitId = "target", caster = "all", filter = "DEBUFF" },
			
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
			-- Wrecking Crew  *
			{ spellID = 57519, unitId = "target", caster = "all", filter = "BUFF" },
			-- Death Wish
			{ spellID = 12292, unitId = "target", caster = "all", filter = "BUFF" },
			-- Bastion of Defense
			{ spellID = 29594, unitId = "target", caster = "all", filter = "BUFF" },
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
--			BarWidth = 150,
			Size = EnhanceS,
			setPoint = {  "TOPRIGHT", "iFilgerEnhancements",0,-22 },
			
		-- Drink
			{ spellID = 80167, unitId = "player", caster = "all", filter = "BUFF" },
			
		-- External Buffs
			-- Tricks of the Trade
			{ spellID = 57934, unitId = "player", caster = "all", filter = "BUFF" },
			-- Aura Mastery
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

			-- 333/346
			-- Cleansing Tears (Tear of Blood)
			{ spellID = 91139, unitId = "player", caster = "player", filter = "BUFF" },
			-- Witching Hour
			{ spellID = 90887, unitId = "player", caster = "player", filter = "BUFF" },
		
			-- 359/372/379 4.0
			-- Pattern of Light (Mandala of Stirring Patterns)
			{ spellID = 91192, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Image of Immortality (Mirror of Broken Images)
			{ spellID = 92222, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Dire Magic (Bell of Enraging Resonance)
			{ spellID = 91007, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Battle Magic (Stump of Time)
			{ spellID = 91047, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Volcanic Destruction (darkmoon)
			{ spellID = 89091, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart of Rage
			{ spellID = 92345, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart's Revelation
			{ spellID = 91027, unitId = "player", caster = "player", filter = "BUFF" },
			-- Heart's Judgement
			{ spellID = 91041, unitId = "player", caster = "player", filter = "BUFF" },
			-- Soul Power (Soul Casket)
			{ spellID = 91019, unitId = "player", caster = "player", filter = "BUFF" },
			-- Revelation (Theralion Mirror)
			{ spellID = 91024, unitId = "player", caster = "player", filter = "BUFF" },
			-- Celerity (Shard of Woe Heroic)
			{ spellID = 91173, unitId = "player", caster = "player", filter = "BUFF" },

			-- 365/378/384/391/397 4.2
			-- Soul Fragment (Necromatic Focus)
			{ spellID = 96962, unitId = "player", caster = "player", filter = "BUFF" },
			-- Moonwell Phial
			{ spellID = 101156, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blessing of the Moonwell (Moonwell Chalice)
			{ spellID = 100403, unitId = "player", caster = "player", filter = "BUFF" },
			-- Charged Blows (Ricket's Magnetic Fireball)
			{ spellID = 101515, unitId = "player", caster = "player", filter = "BUFF" },
			-- Matrix Restabilizer
			{ spellID = 96976, unitId = "player", caster = "player", filter = "BUFF" },
			-- Accelerated
			{ spellID = 96980, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancient Petrified Seed
			{ spellID = 97009, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blessing of Khaz'goroth (Apparatus of Khaz'goroth)
			{ spellID = 96934, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of the Eternal Flame
			{ spellID = 97010, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fiery Quintessence
			{ spellID = 97008, unitId = "player", caster = "player", filter = "BUFF" },
			-- Victorious  (Jaws of Defeat)
			{ spellID = 96907, unitId = "player", caster = "player", filter = "BUFF", absID = true  },
			-- Mark of the Firelord  (Rune of Zeth)
			{ spellID = 97007, unitId = "player", caster = "player", filter = "BUFF" },
			-- Devour  (The Hungerer)
			{ spellID = 96911, unitId = "player", caster = "player", filter = "BUFF" },
			-- Weight of a Feather (Scales of Life)
			{ spellID = 96879, unitId = "player", caster = "player", filter = "BUFF" },
			-- Titanic Power (Apparatus of Khaz'goroth)
			{ spellID = 96923, unitId = "player", caster = "player", filter = "BUFF" },

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

			-- 378/384/397/401 4.3
			-- Foul Gift (Foul Gift of the Demon Lord)
			{ spellID = 102662, unitId = "player", caster = "player", filter = "BUFF", absID = true },
			-- Foul Gift (Foul Gift of the Demon Lord)
			{ spellID = 109908, unitId = "player", caster = "player", filter = "DEBUFF", absID = true },
			-- Titanic Strength (Eye of Unmaking/Rotting Skull)
			{ spellID = 109750, unitId = "player", caster = "player", filter = "BUFF" },
			-- Expansive Mind (Heart of Unliving)
			{ spellID = 109813, unitId = "player", caster = "player", filter = "BUFF" },
			-- Preternatural Evasion (Resolve of Undying)
			{ spellID = 109782, unitId = "player", caster = "player", filter = "BUFF" },
			-- Combat Mind (Will of Unbinding)
			{ spellID = 109795, unitId = "player", caster = "player", filter = "BUFF" },
			-- Combat Trance (Wrath of Unchaining)
			{ spellID = 109719, unitId = "player", caster = "player", filter = "BUFF" },
			-- Find Weakness (Creche of the Final Dragon)
			{ spellID = 109744, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ultimate Power (Bottled Wishes/Reflection of the Light)
			{ spellID = 109792, unitId = "player", caster = "player", filter = "BUFF" },
			-- Elusive (Fire of the Deep)
			{ spellID = 109779, unitId = "player", caster = "player", filter = "BUFF" },
			-- Velocity (Insignia of the Corrupted Mind/Seal of the Seven Signs)
			{ spellID = 109789, unitId = "player", caster = "player", filter = "BUFF" },
			-- Agile (Kiroptyric Sigil)
			{ spellID = 109715, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician (Soulshifter Vortex)
			{ spellID = 109776, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slowing the Sands - weapon caster DW
			{ spellID = 107804, unitId = "player", caster = "all", filter = "BUFF" },
			-- Beast Fury - weapon agi DW
			{ spellID = 109861, unitId = "player", caster = "player", filter = "BUFF" },
			
		-- PvP Trinkets
			-- Call of Conquest / Badge of Conquest
			{ spellID = 99711, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of Dominance / Badge of Dominance
			{ spellID = 99712, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of Victory / Badge of Victory
			{ spellID = 99713, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tremendous Fortitude / Battlemaster Trinket S10-371
			{ spellID = 99714, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Conquest / Insignia of Conquest
			{ spellID = 99717, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Dominance / Insignia of Dominance
			{ spellID = 99719, unitId = "player", caster = "player", filter = "BUFF" },
			-- Surge of Victory / Insignia of Victory
			{ spellID = 99721, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Engineering
			-- Hyperspeed Accelerators / Hypergeschwindigkeitsbeschleuniger
			{ spellID = 54758, unitId = "player", caster = "player", filter = "BUFF" },
			-- Synapse Springs / Synapsenfedern
			{ spellID = 96230, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nitro Boots ( or should I say Belt? )
			{ spellID = 54861, unitId = "player", caster = "player", filter = "BUFF" },
			-- Grounded Plasma Shield 
			{ spellID = 82626, unitId = "player", caster = "player", filter = "BUFF" },
			-- Flintlocke's Woodchucker
			{ spellID = 99621, unitId = "player", caster = "player", filter = "BUFF" },

		-- Herbalism
			-- Lifeblood
			{ spellID = 55503, unitId = "player", caster = "player", filter = "BUFF" },

		-- Item Enchants - Tailoring
			-- Darkglow
			{ spellID = 125482, unitId = "player", caster = "all", filter = "BUFF" },
			-- Lightweave
			{ spellID = 125487, unitId = "player", caster = "all", filter = "BUFF" },
			-- Swordguard
			{ spellID = 125483, unitId = "player", caster = "all", filter = "BUFF" },

		-- Item Enchants - Enchanting
			-- Heartsong / Gesang des Herzens
			{ spellID = 74224, unitId = "player", caster = "all", filter = "BUFF" },
			-- Avalanche / Lawine
			{ spellID = 74196, unitId = "player", caster = "all", filter = "BUFF" },
			-- Hurricane / Hurrikan
			{ spellID = 74221, unitId = "player", caster = "all", filter = "BUFF" },
			-- Power Torrent
			{ spellID = 74241, unitId = "player", caster = "all", filter = "BUFF" },
			-- Landside
			{ spellID = 74245, unitId = "player", caster = "all", filter = "BUFF" },

		-- Potions
			-- Speed / Geschwindigkeit - Potion of Speed
			{ spellID = 53908, unitId = "player", caster = "all", filter = "BUFF" },
			-- Wild Magic / Wilde Magie - Potion of Wild Magic
			{ spellID = 53909, unitId = "player", caster = "all", filter = "BUFF" },
			-- Earthen Armor / Irdene Rüstung - Earthen Potion
			{ spellID = 79475, unitId = "player", caster = "all", filter = "BUFF" },
			-- Volcanic Power
			{ spellID = 79476, unitId = "player", caster = "all", filter = "BUFF" }, 
			-- Golemblood Potion
			{ spellID = 79634, unitId = "player", caster = "player", filter = "BUFF" },
			
		-- Rogue Legendary
			-- Suffering -- Legendary buff
			{ spellID = 109959, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nightmare -- Legendary buff
			{ spellID = 109955, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shadows of the Destroyer -- Legendary buff
			{ spellID = 109941, unitId = "player", caster = "player", filter = "BUFF" },
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

			-- Foul Gift (Foul Gift of the Demon Lord)
			{ spellID = 102662, filter = "ICD", trigger = "BUFF", duration = 45, absID = true }, -- 60 ?
			-- Indomitable (Indomitable Pride)
			{ spellID = 108008, filter = "ICD", trigger = "BUFF", duration = 60 }, -- not sure of the spellID
			-- Find Weakness (Creche of the Final Dragon)
			{ spellID = 109744, filter = "ICD", trigger = "BUFF", duration = 115 }, -- guess
			-- Master Tactician (Soulshifter Vortex) / May create problem for hunter... (i hate 'em btw)
			{ spellID = 109776, filter = "ICD", trigger = "BUFF", duration = 115 }, -- guess
			-- Velocity (Starcatcher Compass, Insignia of the Corrupted Mind, Seal of the Seven Signs)
			{ spellID = 109789, filter = "ICD", trigger = "BUFF", duration = 115 }, -- exact (check in game with Proculas, couldn't go below)
			-- Lightweave
			{ spellID = 125487, filter = "ICD", trigger = "BUFF", duration = 61 }, -- it seems 62 with Proculas but with 30% proc chance, i guess 60. => ~25% uptime => 150k intel bonus instead of 80 for the others professions. :P
			-- Power Torrent
			{ spellID = 74241, filter = "ICD", trigger = "BUFF", duration = 45 }, -- exact (check in game with Proculas)
			-- Tricks of the Trade (Thx Rogue)
			--{ spellID = 57934, filter = "ICD", trigger = "BUFF", duration = 30 },

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
			
			--[[ Warlock ]]--
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
			-- Here we track pvp/pve debuffs on ourself
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
			{ spellID = 2637, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Disorienting Roar
			{ spellID = 99, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Ursol's Vortex
			{ spellID = 127797, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Bear Hug
			{ spellID = 102795, unitId = "player", caster = "all", filter = "DEBUFF" },
			
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
			--Shadowfury
			{ spellID = 30283, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Spell Lock (Felhunter)
			{ spellID = 24259, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Unstable Affliction
			--{ spellID = 31117, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Optical Blast (Observer)
			{ spellID = 115782, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mesmerize (Shivarra)
			{ spellID = 115268, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Disarm (Voidwalker)
			{ spellID = 118093, unitId = "player", caster = "all", filter = "DEBUFF" },
			
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
			{ spellID = 676, unitId = "player", caster = "all", filter = "DEBUFF" },
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

			--[[ Racials ]]--
			-- War Stomp
			{ spellID = 20549, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Arcane Torrent
			{ spellID = 69179, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			-- Other
			-- Rocket Fuel Leak
			{ spellID = 94794, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Reversed Shield
			{ spellID = 82406, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Plasma Misfire!
			{ spellID = 94549, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			----------------------------------------------------------------------------------------
			--PVE
			----------------------------------------------------------------------------------------
			
	-- Baradin Hold
			-- Consuming Darkness
			--{ spellID = 95173, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Meteor Slash / Meteorschlag (Argaloth)
			{ spellID = 88942, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Gaze of Occu'thar
			{ spellID = 97028, unitId = "player", caster = "all", filter = "DEBUFF" },

	-- Dragon Soul
		--Morchok
			-- Safe
			{ spellID = 103541, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Warning
			{ spellID = 103536, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Danger
			{ spellID = 103534, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Black Blood of the Earth
			--{ spellID = 108570, unitId = "player", caster = "all", filter = "DEBUFF" },
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
			--{ spellID = 107061, unitId = "player", caster = "all", filter = "DEBUFF" },
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
			--{ spellID = 109204, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Sunder Armor
			{ spellID = 108043, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
			-- Shockwave
			{ spellID = 108046, unitId = "player", caster = "all", filter = "DEBUFF", absID = true },
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
			--{ spellID = 109597, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Degenerative Bite
			{ spellID = 105841, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Blistering heat
			{ spellID = 105445, unitId = "player", caster = "all", filter = "DEBUFF" },
			-- Tetanus
			--{ spellID = 109603, unitId = "player", caster = "all", filter = "DEBUFF" },	
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
			{ spellID = 2637, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Disorienting Roar
			{ spellID = 99, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Ursol's Vortex
			{ spellID = 127797, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Bear Hug
			{ spellID = 102795, unitId = "target", caster = "all", filter = "DEBUFF" },
			
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
			--{ spellID = 31117, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Optical Blast (Observer)
			{ spellID = 115782, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Mesmerize (Shivarra)
			{ spellID = 115268, unitId = "target", caster = "all", filter = "DEBUFF" },
			--Disarm (Voidwalker)
			{ spellID = 118093, unitId = "target", caster = "all", filter = "DEBUFF" },
			
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
			{ spellID = 676, unitId = "target", caster = "all", filter = "DEBUFF" },
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

			--[[ Racials ]]--
			-- War Stomp
			{ spellID = 20549, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Arcane Torrent
			{ spellID = 69179, unitId = "target", caster = "all", filter = "DEBUFF" },
			
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
			-- Holy Shield +20% block
			{ spellID = 20925, unitId = "target", caster = "all", filter = "BUFF" },
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
			-- Holy Shield +20% block
			{ spellID = 20925, unitId = "focus", caster = "all", filter = "BUFF" },
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