
ITEM.name = "Large Medical Kit"
ITEM.model = Model("models/illusion/eftcontainers/grizzly.mdl")
ITEM.description = "A large advanced Medical kit containing medical items to treat large wounds in the field of battle "
ITEM.category = "Medical"
ITEM.price = 30

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 150, 100))
	end
}
