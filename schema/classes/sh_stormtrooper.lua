CLASS.name = "Stormtrooper"
CLASS.faction = FACTION_IGF

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then

		character:SetModel("models/nada/rogueonetk.mdl")
	end
end

CLASS.isDefault = false
CLASS_RECRUIT = CLASS.index