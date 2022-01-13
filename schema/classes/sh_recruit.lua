CLASS.name = "Imperial Recruit"
CLASS.faction = FACTION_IGF

    function CLASS:OnSet(client)
        local character = client:GetCharacter()
    
        if (character) then
            character:SetModel("models/hcn/starwars/bf/human/human_male.mdl")
        end

        client:RemoveAllItems()
        client:Give("weapon_empty_hands")
    end

CLASS.weapons = {
    "weapon_empty_hands"
}

CLASS.isDefault = true
CLASS_RECRUIT = CLASS.index