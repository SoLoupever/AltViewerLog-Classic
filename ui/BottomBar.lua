local addonName, ns = ...

-- ====================================================
-- UI/BOTTOMBAR — Barre du bas : Or Total / Temps / Personnages
-- ====================================================

-- ── 1. Constantes ─────────────────────────────────────────────────
local BTN_H   = 32

-- ── 2. Collecte de données ────────────────────────────────────────

-- Or total (cuivres) de tous les personnages.
local function CountCharGold()
    if not ns.DP_IsReady() then return 0 end
    local total = 0
    ns.DP_IterateChars(function(_, _, charData)
        total = total + (charData.gold or 0)
    end)
    return total
end

local function CountTotalTime()
    if not ns.DP_IsReady() then return 0 end
    local total = 0
    ns.DP_IterateChars(function(_, _, charData)
        total = total + (charData.timePlayed or 0)
    end)
    return total
end

local function CountTotalChars()
    if not ns.DP_IsReady() then return 0 end
    local total = 0
    ns.DP_IterateChars(function() total = total + 1 end)
    return total
end

-- ── 3. Factory bouton ─────────────────────────────────────────────

local function MakeBottomBtn()
    local btn = CreateFrame("Button", nil, ns.bottomBar, "BackdropTemplate")
    btn:SetHeight(BTN_H)
    ns.Skin.Button(btn, "bar")

    local fs = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    fs:SetPoint("CENTER")
    fs:SetTextColor(unpack(ns.Theme.text))
    btn.fs = fs

    return btn
end

-- ── 4. Création des 3 boutons ─────────────────────────────────────

ns.bbGold  = MakeBottomBtn()
ns.bbTime  = MakeBottomBtn()
ns.bbChars = MakeBottomBtn()

-- ── 5. Positionnement dynamique ───────────────────────────────────

local function LayoutBtns()
    if not ns.mainFrame or not ns.bottomBar then return end
    local pad  = ns.LAYOUT.pad
    local btnW = math.floor((ns.mainFrame:GetWidth() - pad * 4) / 3)

    ns.bbGold:ClearAllPoints()
    ns.bbGold:SetWidth(btnW)
    ns.bbGold:SetPoint("LEFT",   ns.bottomBar, "LEFT",   pad, 0)

    ns.bbTime:ClearAllPoints()
    ns.bbTime:SetWidth(btnW)
    ns.bbTime:SetPoint("CENTER", ns.bottomBar, "CENTER", 0, 0)

    ns.bbChars:ClearAllPoints()
    ns.bbChars:SetWidth(btnW)
    ns.bbChars:SetPoint("RIGHT", ns.bottomBar, "RIGHT", -pad, 0)
end

ns.mainFrame:HookScript("OnSizeChanged", LayoutBtns)

local _initFrame = CreateFrame("Frame")
_initFrame:RegisterEvent("PLAYER_LOGIN")
_initFrame:SetScript("OnEvent", function(self)
    self:UnregisterEvent("PLAYER_LOGIN")
    C_Timer.After(0.1, LayoutBtns)
end)

-- ── 6. ns.UpdateBottomBar ─────────────────────────────────────────
-- Point d'entrée unique pour rafraîchir les 3 boutons.

ns.UpdateBottomBar = function()
    if not (ns.bbGold and ns.bbTime and ns.bbChars) then return end

    -- Or personnages (depuis la DB, mise à jour en temps réel par PLAYER_MONEY)
    local charTotal     = CountCharGold()

    -- Libellé couleur titre + valeur claire (thème actif)
    local t   = ns.Theme
    local dim = "|cff" .. t.title  -- libellés = couleur du titre
    local val = "|cff" .. ns.ColorHex(t.text)
    ns.bbGold.fs:SetText(dim .. ns.L("TOTAL_GOLD") .. "|r  " .. C_CurrencyInfo.GetCoinTextureString(charTotal))
    ns.bbTime.fs:SetText(dim .. ns.L("TOTAL_TIME") .. "|r  " .. val
        .. (ns.FormatTime and ns.FormatTime(CountTotalTime()) or "?") .. "|r")
    ns.bbChars.fs:SetText(dim .. ns.L("TOTAL_CHARS") .. "|r  " .. val .. CountTotalChars() .. "|r")
end
