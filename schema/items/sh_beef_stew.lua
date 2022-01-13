
ITEM.name = "Beef Stew"
ITEM.model = Model("models/illusion/eftcontainers/beefstew.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A can of the Empire's finest Beef Stew."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
