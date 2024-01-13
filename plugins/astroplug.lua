PLUGIN.name = "Misc Plugins"
PLUGIN.author = "Riggs & Sparks"
PLUGIN.description = "Miscellaneous plugins that are short, so it's easier to have them all in one file than multiple ones."

function PLUGIN:PlayerSwitchFlashlight(client, bEnabled)
	return true
end

function PLUGIN:CanCreateCharacterInfo(suppress)
    suppress.description = true
end