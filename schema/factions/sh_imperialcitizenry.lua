
FACTION.name = "Imperial Citizen"
FACTION.description = "A citizen on one of the numerous planets under the government of the Galcatic Empire"
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = false

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

FACTION_CITIZEN = FACTION.index
