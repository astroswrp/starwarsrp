CLASS.name = "Scout Trooper"
CLASS.faction = FACTION_IGF

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/nada/scouttrooper.mdl")
	end
end

CLASS.weapons = {
	"ven_dc17scommandopistol",
	"rw_sw_e11",
	"rw_sw_dlt19x"
}

CLASS.isDefault = false
CLASS_SCOUT = CLASS.index