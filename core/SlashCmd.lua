local addonName, ns = ...

-- ====================================================
-- CORE/SLASHCMD — Commandes slash /bv
-- Rôle UNIQUE : déclarer /av et ses sous-commandes.
--   /av         → ouvre / ferme la fenêtre
--   /av debug   → diagnostique le contenu des sacs (résumé)
--   /av gold    → rapport détaillé de l'or (cf. core/Debug.lua)
--   /av meta    → dump restedXP + guilde
-- ====================================================

SLASH_ALTVIEWER1 = "/av"
SlashCmdList["ALTVIEWER"] = function(msg)
    msg = msg and strtrim(msg:lower()) or ""

    -- /av gold : rapport complet de l'or — logique dans core/Debug.lua
    if msg == "gold" then
        if ns.DumpGoldDebug then
            ns.DumpGoldDebug()
        else
            print("|cffff4444" .. ns.L("SLASH_GOLD_DBG_MISSING") .. "|r")
        end
        return
    end

    -- /av meta : dump restedXP + guild de tous les persos en DB
    if msg == "meta" then
        if not ns.DP_IsReady() then
            print("|cffff4444" .. ns.L("SLASH_VLDB_MISSING") .. "|r")
            return
        end
        local vlAPI = _G.ViewerLogAPI
        print("|cff00ccff" .. ns.L("SLASH_META_HEADER") .. "|r")
        ns.DP_IterateChars(function(realmName, charName, data)
            local restedStr = "nil"
            local r = data.rested
            if r and type(r) == "table" then
                local pct = vlAPI.GetEstimatedRestedPct(charName, realmName)
                local ago = r.updatedAt and (time() - r.updatedAt) or nil
                restedStr = string.format("raw=%d maxXP=%d resting=%s pct=%s ago=%ss",
                    r.currentRestedXP or 0,
                    r.maxXP or 0,
                    tostring(r.isRestingArea),
                    tostring(pct),
                    tostring(ago))
            end
            print(string.format(
                "  |cffffd700%s|r @ %s  guild=|cff88ff88%s|r  rested={%s}",
                charName, realmName,
                tostring(data.guild),
                restedStr))
        end)
        return
    end

    if msg == "debug" then
        ns.DBG("|cffff9900" .. ns.L("SLASH_DEBUG_BAGS") .. "|r")
        for bag = -3, 20 do
            local numSlots = C_Container.GetContainerNumSlots(bag)
            if numSlots and numSlots > 0 then
                local count = 0
                for slot = 1, numSlots do
                    if C_Container.GetContainerItemInfo(bag, slot) then count = count + 1 end
                end
                ns.DBG(string.format(ns.L("SLASH_DEBUG_BAG_LINE"),
                    bag, numSlots, count))
            end
        end
        return
    end

    if ns.mainFrame then
        ns.mainFrame:SetShown(not ns.mainFrame:IsShown())
    end
end
