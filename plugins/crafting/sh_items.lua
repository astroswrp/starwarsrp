//To add a new item or remove an item, this is the file to do it.

local ITEMS = {}
--[[]
ITEMS.scrap_metal = {
	["name"] = "Scrap Metal",
	["model"] = "models/props_debris/metal_panelchunk02d.mdl",
	["description"] = "A small chunk of scrap metal, useless unless combined with other items.",
	["width"] = 1,
	["height"] = 1,
	["chance"] = 75 --This is used for the 'item spawner plugin' this defines how many 'tickets' the item gets to spawn.
}


for k, v in pairs(ITEMS) do
	local ITEM = ix.item.Register(k, nil, false, nil, true)
	ITEM.name = v.name
	ITEM.model = v.model
	ITEM.description = v.description
	ITEM.category = "Crafting"
	ITEM.width = v.width or 1
	ITEM.height = v.height or 1
	ITEM.chance = v.chance or 0
	ITEM.isTool = v.tool or false
	ITEM.weight = v.weight or .5
	ITEM.maxStacks = v.maxStacks or 1
	ITEM.noBusiness = false
end]]--