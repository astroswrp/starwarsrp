CLASS.name = "Stormtrooper"
CLASS.faction = FACTION_IGF

function CLASS:OnSpawn(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/nada/rogueonetk.mdl")
	end
end

CLASS.weapons = {
	"rw_sw_e11"
}

CLASS.isDefault = false
CLASS_RECRUIT = CLASS.index