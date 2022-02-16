//To add a new item or remove an item, this is the file to do it.

local ITEMS = {}

ITEMS.normal_screwdriver = {
	["name"] = "Screwdriver",
	["model"] = "models/props_c17/TrapPropeller_Lever.mdl",
	["description"] = "A full fledged screwdriver.",
	["width"] = 2,
	["height"] = 1,
	["chance"] = 20,
	["tool"] = true
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
end