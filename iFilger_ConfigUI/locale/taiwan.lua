﻿local C, F, L = unpack(select(2, ...))
  --Translated by 老虎007(wxnod@vip.qq.com)
  --Translated by Ezra
local client = GetLocale()

if client == "zhTW" then
	L["iFilger"] = "|cff1784d1iFilger|r |cffffffff設定介面|r"
	L["Config"] = "如想編輯LUA和並同時使用遊戲內設定介面來設定你的|cff1784d1iFilger|r , 每次修改config.lua後別忘記點擊|cff1784d1Reset Config|r"

	-- option name
	L["RESETMSG"] = "你確定要重置所有設定至預設?"

	L["Name"] = "名稱"
	L["Enable"] = "啟用"
	L["Size"] = "尺寸"
	L["Direction"] = "方向"
	L["IconSide"] = "圖示於移動框的相對位置"
	L["Interval"] = "間隔"
	L["Mode"] = "模式"
	L["Alpha"] = "透明度"
	L["BarWidth"] = "計時條長度"
	L["Merge"] = "合併"
	L["Mergewith"] = "與...合併"

	L["autoupdate"] = "自動更新"
	L["cleverzone"] = "偵測區域"
	L["tooltip"] = "提示訊息"
	L["TooltipMover"] = "Tooltip Mover"
	L["FlashIcon"] = "閃動(圖示)"
	L["FlashBar"] = "閃動 (計時條)"
	L["FlashThreshold"] = "閃動閥值"
	L["FlashDuration"] = "閃動持續時間"

	L["AddSpell"] = "新增一個法術"
	L["spellID"] = "法術ID或物品ID"
	L["filter"] = "過濾"
	L["unitId"] = "單位ID"
	L["caster"] = "施術者"
	L["absID"] = "絕對ID"
	L["incombat"] = "戰鬥中"
	L["spec"] = "天賦"
	L["trigger"] = "觸發內建冷卻"
	L["duration"] = "內建冷卻時間"
	L["icon"] = "圖示"

	-- option help
	L["H_Name"] = "次項名稱"
	L["H_Enable"] = "啟用或關閉此次項"
	L["H_Size1"] = "圖示尺寸"
	L["H_Size2"] = "必須是正值"
	L["H_Direction1"] = "圖示方向:"
	L["H_Direction2"] = "|cffffffffUP|r, |cffffffffDOWN|r, |cffffffffLEFT|r, |cffffffffRIGHT|r or |cffffffffHORIZONTAL|r"
	L["H_IconSide1"] = "計時條模式時圖示的位置:"
	L["H_IconSide2"] = "|cffffffffLEFT|r or |cffffffffRIGHT|r"
	L["H_Interval"] = "圖示間或計時條之間的空間"
	L["H_Mode1"] = "顯示模式:"
	L["H_Mode2"] = "|cffffffffICON|r or |cffffffffBAR|r"
	L["H_Alpha1"] = "透明度:"
	L["H_Alpha2"] = "1 (實心) 至 0 (透明)"
	L["H_BarWidth"] = "計時條長度 (於計時條模式)"
	L["H_Merge"] = "啟用合併"
	L["H_Mergewith"] = "合併啟用時, 與之合併的名稱"

	L["H_autoupdate"] = "自動更新設定"
	L["H_cleverzone1"] = "偵測區域:"
	L["H_cleverzone2"] = "只在PvP區域載入PvP; 只在PvE區域載入PvE"
	L["H_cleverzone3"] = "(第一次進入PvE區域時, 必須重新載入(reload))"
	L["H_tooltip"] = "圖示上的提示訊息"
	L["H_TooltipMover"] = "TooltipMover上的提示訊息 (ElvUI及Tukui使用者)"
	L["H_FlashIcon"] = "圖示模式中, 時間低於閥值時閃動"
	L["H_FlashBar"] = "計時條模式中, 時間低於閥值時閃動"
	L["H_FlashThreshold1"] = "圖式開始閃動的閥值"
	L["H_FlashThreshold2"] = "必須大於 1"
	L["H_FlashDuration1"] = "每次閃動的持續時間"
	L["H_FlashDuration2"] = "必須是正值, 越小=>越快"

	L["H_spellID"] = "法術ID或物品ID : 13 或 14 代表飾品"
	L["H_filter1"] = "可用過濾 : "
	L["H_filter2"] = "|cffffffffBUFF|r - 過濾增益狀態"
	L["H_filter3"] = "|cffffffffDEBUFF|r - 過濾減益狀態"
	L["H_filter4"] = "|cffffffffIBUFF|r - 追蹤看不見的增益狀態"
	L["H_filter5"] = "|cffffffffIDEBUFF|r - 追蹤看不見的減益狀態"
	L["H_filter6"] = "|cffffffffCD|r - 追蹤冷卻"
	L["H_filter7"] = "|cffffffffACD|r - 追蹤一個冷卻是否可用, 必須設定施術者為\"all\""
	L["H_filter8"] = "|cffffffffICD|r - 追蹤內建冷卻, 須設定觸發及冷卻時間"
	L["H_unitId1"] = "可用的單位ID :"
	L["H_unitId2"] = "|cffffffffplayer|r"
	L["H_unitId3"] = "|cfffffffftarget|r"
	L["H_unitId4"] = "|cfffffffffocus|r"
	L["H_unitId5"] = "|cffffffffpet|r"
	L["H_unitId6"] = "|cfffffffftargettarget|r"
	L["H_unitId7"] = "|cffffffffparty1|r ..."
	L["H_unitId8"] = "|cffffffffarena1|r ..."
	L["H_caster"] = "|cffffffffplayer|r or |cffffffffall|r - 只由自己施放或每個人"
	L["H_absID"] = "法術ID完全一致時才顯示"
	L["H_incombat"] = "只顯示於戰鬥中"
	L["H_spec"] = "只顯示於特定天賦 (|cffffffff1|r |cffffffff2|r |cffffffff3|r or |cffffffff4|r)"
	L["H_trigger1"] = "觸發內建冷卻 :"
	L["H_trigger2"] = "|cffffffffBUFF|r - 內建冷卻開始於增益狀態顯示時"
	L["H_trigger3"] = "|cffffffffDEBUFF|r - 內建冷卻開始於減益狀態顯示時"
	L["H_trigger4"] = "|cffff0000/!\\ 注意: 此項開始於|r"
	L["H_trigger5"] = "|cffff0000觸發出現, 並非消失才開始|r"
	L["H_duration"] = "秒數表示內建冷卻"
	L["H_icon1"] = "抱歉, 圖示設定只限於"
	L["H_icon2"] = "|cffff0000進階使用者|r 以及";
	L["H_icon3"] = "LUA修改"

	-- buttons
	L["Apply"] = "套用"
	L["Cancel"] = "取消"
	L["Reset Config"] = "重置設定"
	L["Move Buffs"] = "移動位置"
	L["Reset Buff Position"] = "重置位置"
	L["Global"] = "一般設定"
	L["Del"] = "刪除"
	L["Edit"] = "編輯"
	L["Add"] = "新增"

	-- update text 
	local myClass = select(2, UnitClass("player"));

	L["VersionNotFound"] = "版本未找到, 清除已儲存的設定"
	L["UpdateRequired"] = "你的設定版本已過期, 使用|cff1784d1iFilger|r前我們強烈建議您|cffff0000"..L["Reset Config"].."|r"
	L["WarningConfig"] = "設定項目已變更, 使用|cff1784d1iFilger|r前我們強烈建議您|cffff0000"..L["Reset Config"]..""
	L["Updated"] = "|cff1784d1iFilger|r 已更新"
	L["ClassVersion"] = myClass.." 版本 : "
	L["AllVersion"] = ", 所有版本 : "
	L["CurrentClassVersion"] = "當前 "..myClass.." 版本 : "
	L["CurrentAllVersion"] = ", 當前 ALL 版本 : "
	L["AvailableClassVersion"] = "可用的 "..myClass.." 版本 : "
	L["AvailableAllVersion"] = ", 可用的 ALL 版本 : "
end