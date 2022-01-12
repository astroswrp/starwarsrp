
FACTION.name = "Imperial Ground Forces"
FACTION.description = "Members of the Galctic Empire's Ground Forces"
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true

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

FACTION_IGF = FACTION.index
