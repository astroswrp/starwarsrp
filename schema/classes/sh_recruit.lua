CLASS.name = "Imperial Recruit"
CLASS.faction = FACTION_IGF

    function CLASS:OnSet(client)
        client:RemoveAllItems()
        client:Give("weapon_empty_hands")
    end

CLASS.isDefault = true
CLASS_RECRUIT = CLASS.index