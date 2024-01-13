PLUGIN.name = "Business Block"
PLUGIN.desc = "Turns off business for EVERYONE"
PLUGIN.license =  ""

function PLUGIN:CanPlayerUseBusiness()
    return false
end