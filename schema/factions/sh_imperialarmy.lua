
FACTION.name = "Imperial Armed Forces"
FACTION.description = ""
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.pay = 10
FACTION.models = {
	"models/nada/rogueonetk.mdl"
}

FACTION.weapons = {
	"weapon_empty_hands"
}
function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()


	--inventory:Add("crafting", 1)

end
FACTION.isGloballyRecognized = true
FACTION.isDefault = true
FACTION_IGF = FACTION.index
