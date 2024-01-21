PLUGIN.name = "Misc Plugins"
PLUGIN.author = "Guy"
PLUGIN.description = "Miscellaneous plugins that are short, so it's easier to have them all in one file than multiple ones."

function PLUGIN:PlayerSwitchFlashlight(client, bEnabled)
	return true
end

function PLUGIN:CanCreateCharacterInfo(suppress)
    suppress.description = true
end

ix.char.vars["description"].bNoDisplay = true
ix.char.vars["description"].OnValidate = function() return "A member of the Imperial Army"    end

function PLUGIN:PlayerSpawn(ply)
    timer.Simple(0.1, function()
        ply:StripWeapon("ix_hands") 
    end)
end