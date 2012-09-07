local C, F, L = unpack(select(2, ...))

local client = GetLocale()

if client == "ptBR" or client == "ptPT" then
	-- option name
	L["iFilger"] = "|cffffffffConfigura��o|r |cff1784d1iFilger|r"
	L["Config"] = "Se voc� configurar o seu |cff1784d1iFilger|r por c�digo Lua e\nmesmo assim deseja usar a configura��o em jogo,\nn�o se esque�a de clicar em |cff1784d1Reset Config|r\ncada vez que modificar o ficheiro config.lua"

	L["Name"] = "Nome"
	L["Enable"] = "Activar"
	L["Size"] = "Tamanho"
	L["Direction"] = "Direc��o"
	L["IconSide"] = "Lado do Icon"
	L["Interval"] = "Intervalo"
	L["Mode"] = "Modo"
	L["Alpha"] = "Transpar�ncia"
	L["BarWidth"] = "Comprimento da barra"
	L["Merge"] = "Fundir"

	L["cleverzone"] = "Zona inteligente"
	L["tooltip"] = "Tooltip"
	L["TooltipMover"] = "Mover a Tooltip"
	L["FlashIcon"] = "Clar�o (Icons)"
	L["FlashBar"] = "Clar�o (Barras)"
	L["FlashThreshold"] = "Limiar do Piscar"
	L["FlashDuration"] = "Dura��o do Piscar"

	-- option help
	L["H_Name"] = "O nome tha sub-sec��o"
	L["H_Enable"] = "Activar ou desactivar esta sub-sec��o."
	L["H_Size1"] = "Tamanho dos Icons"
	L["H_Size2"] = "Tem de ser um n�mero positivo"
	L["H_Direction1"] = "Direc��o dos icons:"
	L["H_Direction2"] = "CIMA, BAIXO, ESQUERDA, DIREITA ou HORIZONTAL"
	L["H_IconSide1"] = "Posi��o do Icon em modo de barra:"
	L["H_IconSide2"] = "ESQUERDA or DIREITA"
	L["H_Interval"] = "Espa�o entre icons/barras"
	L["H_Mode1"] = "Modo Exibi��o:"
	L["H_Mode2"] = "ICON ou BARRA"
	L["H_Alpha1"] = "Transpar�ncia:"
	L["H_Alpha2"] = "Escolha entre 1 (cheio) ou 0 (invisivel)"
	L["H_BarWidth"] = "Comprimento da barra (modo de barra requerido)"
	L["H_Merge"] = "Activar fuz�o quando o nome � o mesmo."

	L["H_cleverzone1"] = "Zona Inteligente:"
	L["H_cleverzone2"] = "Recarregar apenas PVP em zonas PVP e PVE em zonas PVE"
	L["H_cleverzone3"] = "(Requerido para recarregar a primeira vez que voc� entre numa zona PVE)"
	L["H_tooltip"] = "Tooltip nos icons"
	L["H_TooltipMover"] = "Tooltip no MoverTooltip para utilizadores da ElvUI e da Tukui."
	L["H_FlashIcon"] = "Piscar quando o tempo restante for abaixo do limiar em modo icon"
	L["H_FlashBar"] = "Piscar quando o tempo restante for abaixo do limiar em modo barra"
	L["H_FlashThreshold1"] = "Limiar quando os icons come�am a piscar."
	L["H_FlashThreshold2"] = "Tem de ser maior que 1."
	L["H_FlashDuration1"] = "Dura��o de cada piscadela."
	L["H_FlashDuration2"] = "Tem de ser um n�mero positivo, mais pequeno => mais r�pido."

	-- buttons
	L["Apply"] = "Aplicar"
	L["Reset Config"] = "Restaurar configura��es"
	L["Move Buffs"] = "Mover os Buffs"
	L["Reset Buff Position"] = "Restaurar a posi��o"
	L["Global"] = "Configura��es Globais"
end