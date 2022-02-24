local PLUGIN = PLUGIN

PLUGIN.name = "Simplistic Event System"
PLUGIN.author = "Riggs Mackay"
PLUGIN.description = "A Simplistic Event System, mainly used to play sound effects or music tracks."

ix.util.Include("sv_plugin.lua")

if ( CLIENT ) then
    net.Receive("ixPlaySound", function(len, ply)
        LocalPlayer():EmitSound(tostring(net.ReadString()), tonumber(net.ReadUInt(7)) or 100)
    end)
    
    net.Receive("ixCreateVGUI", function(len, ply)
        vgui.Create(tostring(net.ReadString()))
    end)

    surface.CreateFont("RiggsFontShadow30", {
        font = "Segoe Ui",
        size = 30,
        weight = 1000,
        antialias = true,
        shadow = true,
    })

    surface.CreateFont("RiggsFont28", {
        font = "Segoe Ui",
        size = 28,
        weight = 1000,
        antialias = true,
    })

    surface.CreateFont("RiggsFont18", {
        font = "Segoe Ui",
        size = 18,
        weight = 1000,
        antialias = true,
    })
end

ix.adminSystem = ix.adminSystem or {}
ix.adminSystem.music = ix.adminSystem.music or {}
ix.adminSystem.derma = ix.adminSystem.derma or {}

-- Configuration below.

ix.adminSystem.music = {
    ["Ambient"] = {
        {"Belsavis, the Ancient Prison", "sw/belsavis_the_ancient_prison.mp3"},
        {"Star Wars Theme", "sw/star_wars_theme.mp3"},
    },
    ["Buildup"] = {
        {"Balmorra, the Forge", "sw/balmorra_the_forge.mp3"},
        {"Corellia, the Shipyards", "sw/corellia_the_shipyards.mp3"},
        {"Imperial March", "sw/imperial_march.mp3"},
        {"Rogue One: Jedha Arrival", "sw/r1_jedha_arrival.mp3"},
        {"Rogue One: The Master Switch", "sw/r1_the_master_switch.mp3"},
        {"They Will Come", "sw/they_will_come.mp3"},
    },
    ["Cantina"] = {
        {"Average Brown Wookie", "sw/average_brown_wookiee.mp3"},
        {"Cantina Band", "sw/cantina_band.mp3"},
        {"Credits Where Credits Are Due", "sw/credits_where_credits_are_due.mp3"},
        {"Do the Holos Show Up On the Bill", "sw/do_the_holos_show_up_on_the_bill.mp3"},
        {"In the Escape Pod", "sw/in_the_escape_pod.mp3"},
        {"One Chuba Too Many", "sw/one_chuba_too_many.mp3"},
        {"Run Kessel Run", "sw/run_kessel_run.mp3"},
        {"See You On the Dark Side", "sw/see_you_on_the_dark_side.mp3"},
        {"Shake That Wampa Down", "sw/shake_that_wampa_down.mp3"},
        {"Smeelaaya Whao Tupee Upee", "sw/smeelaaya_whao_tupee_upee.mp3"},
        {"That Slippery Little Hutt Of Mine", "sw/that_slippery_little_hutt_of_mine.mp3"},
        {"Yesterday's Jawa", "sw/yesterdays_jawa.mp3"},
    },
    ["Combat"] = {
        {"Battle of the Heroes", "sw/battle_of_heroes.mp3"},
        {"Clash of Destiny", "sw/clash_of_destiny.mp3"},
        {"Deception, the Sith Warrior", "sw/deception_the_sith_warrior.mp3"},
        {"Duel of the Fates", "sw/duel_of_the_fates.mp3"},
        {"Jedi Temple March", "sw/jedi_temple_march.mp3"},
        {"March of the Resistance", "sw/march_resistance.mp3"},
        {"Rogue One: AT-ACT Assault", "sw/r1_at_act_assault.mp3"},
        {"Rogue One: He's Here For Us", "sw/r1_hes_here_for_us.mp3"},
        {"Rogue One: Hope", "sw/r1_hope.mp3"},
        {"Rogue One: The Imperial March", "sw/r1_the_imperial_suite.mp3"},
        {"The Occupation of Balmorra", "sw/the_occupation_of_balmorra.mp3"},
        {"The Siege of Alderaan", "sw/the_siege_of_alderaan.mp3"},
    },
    ["Ominous"] = {
        {"Nihilus Theme", "sw/nihilus_theme.mp3"},
        {"Snoke", "sw/snoke.mp3"},
        {"Treachery, the Sith Inquisitor", "sw/treachery_the_sith_inquisitor.mp3"},
        {"Tython, the Wellspring", "sw/tython_the_wellspring.mp3"},
        {"Villainy, the Imperial Agent", "sw/villainy_the_imperial_agent.mp3"},
    },
    ["Post Event"] = {
        {"Anakin & Padme", "sw/anakin_padme_theme.mp3"},
        {"Binary Sunset", "sw/binary_sunset.mp3"},
        {"Bravado, the Smuggler", "sw/bravado_the_smuggler.mp3"},
        {"Rogue One: Your Father Would Be Proud", "sw/r1_your_father_would_be_proud.mp3"},
        {"Throne Room Theme", "sw/throne_room_theme.mp3"},
    }
}