RECIPE.name = "Large Light"
RECIPE.description = "Craft a Large Light"
RECIPE.model = "models/lt_c/sci_fi/light_spotlight.mdl"
RECIPE.category = "Craftables"
RECIPE.requirements = {
	["light"] = 1,
	["wiring"] = 2,
	["durasteel"] = 2,
	["transparisteel"] = 1

}
RECIPE.results = {
	["flight"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, "You need to be near a workbench."
end)
