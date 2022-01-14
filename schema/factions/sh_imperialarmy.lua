
FACTION.name = "Imperial Ground Forces"
FACTION.description = "Members of the Galctic Empire's Ground Forces"
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.models = {
	"models/hcn/starwars/bf/human/human_male_5.mdl",
	"models/hcn/starwars/bf/human/human_male.mdl", 
	"models/hcn/starwars/bf/human/human_male_2.mdl",
	"models/hcn/starwars/bf/human/human_male_3.mdl" 
}

FACTION.weapons = {
	"weapon_empty_hands"
}
function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end
FACTION.isGloballyRecognized = true
FACTION.isDefault = true
FACTION_IGF = FACTION.index
