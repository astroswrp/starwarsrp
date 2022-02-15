
Schema.name = "Starwars RP"
Schema.author = "Rey"
Schema.description = "A Semi-SeriousRP Server"

-- Include netstream
ix.util.Include("libs/thirdparty/sh_netstream2.lua")

ix.util.Include("sh_configs.lua")
ix.util.Include("sv_schema.lua")
--[[
ix.util.Include("sh_commands.lua")
ix.util.Include("cl_schema.lua")
ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sh_voices.lua")
ix.util.Include("sv_hooks.lua")

ix.util.Include("meta/sh_player.lua")
ix.util.Include("meta/sv_player.lua")
ix.util.Include("meta/sh_character.lua")

ix.flag.Add("v", "Access to light blackmarket goods.")
ix.flag.Add("V", "Access to heavy blackmarket goods.")
]]--
ix.anim.SetModelClass("models/nada/rogueonetk.mdl", "player")
ix.anim.SetModelClass("models/nada/scouttrooper.mdl", "player")
ix.anim.SetModelClass("models/hcn/starwars/bf/human/human_male_5.mdl", "player")
ix.anim.SetModelClass("models/hcn/starwars/bf/human/human_male.mdl", "player")
ix.anim.SetModelClass("models/hcn/starwars/bf/human/human_male_2.mdl", "player")
ix.anim.SetModelClass("models/hcn/starwars/bf/human/human_male_3.mdl", "player")
ix.anim.SetModelClass("models/nada/scouttrooper.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonenova.mdl", "player")
ix.anim.SetModelClass("models/nada/tiepilot.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonemortar.mdl", "player")
ix.anim.SetModelClass("models/imperial_officer/isb/operative/op_m.mdl", "player")
ix.anim.SetModelClass("models/player/markus/custom/characters/hero/deathtrooper/male/deathtrooper_male_01/deathtrooper_01_male_mesh.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonetkmedic.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueoneheavy.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueoneshock.mdl", "player")
ix.anim.SetModelClass("models/nada/shadowscouttrooper.mdl", "player")
ix.anim.SetModelClass("models/imperial_officer/isb/chairman_director/cd_m.mdl", "player")
ix.anim.SetModelClass("models/imperial_officer/navy/commodore_lieutenant/cl_m.mdl", "player")
ix.anim.SetModelClass("models/imperial_officer/msc/red/red_m.mdl", "player")
ix.anim.SetModelClass("models/player/markus/custom/characters/hero/deathtrooper/male/deathtrooper_male_02/deathtrooper_02_male_mesh.mdl", "player")
ix.anim.SetModelClass("models/player/markus/custom/characters/hero/deathtrooper/male/deathtrooper_male_03/deathtrooper_03_male_mesh.mdl", "player")
ix.anim.SetModelClass("models/player/markus/custom/characters/hero/deathtrooper/male/deathtrooper_male_04/deathtrooper_04_male_mesh.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonenovamedic.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonenovasentinel.mdl", "player")
ix.anim.SetModelClass("models/nada/rogueonenovaelite.mdl", "player")

function Schema:ZeroNumber(number, length)
	local amount = math.max(0, length - string.len(number))
	return string.rep("0", amount)..tostring(number)
end