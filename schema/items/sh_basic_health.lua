
ITEM.name = "Basic Medical Kit"
ITEM.model = Model("models/illusion/eftcontainers/carmedkit.mdl")
ITEM.description = "A Basic Medical kit containing the necessities for treating wounds"
ITEM.category = "Medical"
ITEM.price = 10

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 50, 100))
	end
}
