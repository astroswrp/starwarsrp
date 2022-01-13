
ITEM.name = "Military Medical Kit"
ITEM.model = Model("models/illusion/eftcontainers/ifak.mdl")
ITEM.description = "An advanced Medical kit containing medical items to treat wounds in the field of battle "
ITEM.category = "Medical"
ITEM.price = 20

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 100, 100))
	end
}
