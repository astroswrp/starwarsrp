CLASS.name = "Stormtrooper"
CLASS.faction = FACTION_IGF

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/nada/rogueonetk.mdl")
	end
end

CLASS.weapons = {
	"ven_dc17scommandopistol",
	"rw_sw_e11"
}

CLASS.isDefault = false
CLASS_ST = CLASS.index