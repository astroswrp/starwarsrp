
ITEM.name = "Purified Water Bottle"
ITEM.model = Model("models/illusion/eftcontainers/aquamari.mdl")
ITEM.description = "A bottle of purified water, containing less contamanints than the standard water"
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(25)
		client:SetHealth(math.Clamp(client:Health() +20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}
