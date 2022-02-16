--TODO: POPULATE CRAFTING ITEMS AND RECIPES
PLUGIN.name = "Crafting"
PLUGIN.author = "ZeMysticalTaco"
PLUGIN.desc = "Replacing the business menu with crafting because that's a more sensible thing to do."
STORED_RECIPES = {}

function PLUGIN:AddRecipe(name, model, desc, requirements, results, id, skill, blueprint, guns, entity, category)
	if type(name) ~= "table" then
		local RECIPE = {}
		RECIPE["id"] = id --Unique ID of the recipe.
		RECIPE["name"] = name -- Name of the recipe.
		RECIPE["model"] = model -- Model it uses in the menu.
		RECIPE["desc"] = desc -- Description of what it is.
		RECIPE["req"] = requirements --Requirements to craft it(use item id's)
		RECIPE["results"] = results --Results of the craft (use item id's)
		RECIPE["blueprint"] = blueprint or false
		RECIPE["guns"] = guns or false
		RECIPE["entity"] = entity or false
		RECIPE["category"] = category or "Miscellaneous"

		if skill then
			RECIPE["skill"] = skill
		end

		STORED_RECIPES[id] = RECIPE
	else
		for k, v in pairs(name) do
		RECIPE["id"] = k --Unique ID of the recipe.
		RECIPE["name"] = v.name -- Name of the recipe.
		RECIPE["model"] = v.model -- Model it uses in the menu.
		RECIPE["desc"] = v.desc -- Description of what it is.
		RECIPE["req"] = v.requirements --Requirements to craft it(use item id's)
		RECIPE["results"] = v.results --Results of the craft (use item id's)
		RECIPE["blueprint"] = v.blueprint or false --Whether or not it uses a blueprint
		RECIPE["guns"] = v.guns or false --Whether or not it will level up your gunsmithing skill.
		RECIPE["entity"] = v.entity or false --FUTURE: Whether or not it will use an entity.
		RECIPE["category"] = v.category or "Miscellaneous" --FUTURE: The Category

		end
	end
end
--[[-------------------------------------------------------------------------
TODO: For release, demonstrate full capacity of plugin.
---------------------------------------------------------------------------]]
local NEW_RECIPES = {
	["transparisteel"] = {
		["name"] = "Transparisteel",
		["model"] = "models/illusion/eftcontainers/plexiglass.mdl",
		["desc"] = "Create Transparisteel from Refined Lommite Ore",
		["requirements"] = {["r_lommite"] = 2},
		["results"] = {["transparisteel"] = 1},
		["category"] = "Refined Materials"
	}

}

for k, v in pairs(NEW_RECIPES) do
	PLUGIN:AddRecipe(v.name, v.model, v.desc, v.requirements, v.results, k, v.skill or nil, v.blueprint or nil, v.guns or nil, v.entity or nil, v.category or "Miscellaneous")
end