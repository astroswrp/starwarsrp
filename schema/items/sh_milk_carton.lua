
ITEM.name = "Condensed Milk"
ITEM.model = Model("models/illusion/eftcontainers/condensedmilk.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A can of Condensed Milk."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
