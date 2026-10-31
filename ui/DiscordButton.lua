local addonName, ns = ...

-- Bouton Discord (juste au-dessus de Paramètres, dans la sidebar) + sa popup.
--
-- Le bouton lui-même réutilise ns.CreateMenuButton (ui/Sidebar.lua) : même
-- style, même intégration au système de thème (ajouté à ns.sideButtons,
-- couleur de bordure resynchronisée automatiquement par ns.ApplyTheme) que
-- Personnages/Banque/Stuff/Paramètres — rien à restyliser à la main ici.
--
-- Pas d'API WoW pour ouvrir un lien dans le navigateur, donc "contrôlable"
-- = copiable : popup avec un EditBox (fenêtre déplaçable, fermable via le
-- bouton ou Échap, Ctrl+A/Ctrl+C natifs sur l'EditBox). Portage du module
-- options/DiscordButton.lua de ViewerLog-Classic.

local DISCORD_URL = "https://discord.gg/2gfEKGAT46"

local dlg

local function EnsureDialog()
    if dlg then return dlg end

    dlg = CreateFrame("Frame", "AVL_DiscordDialog", UIParent, "BackdropTemplate")
    dlg:SetSize(360, 112)
    dlg:SetPoint("CENTER")
    dlg:SetFrameStrata("DIALOG")
    dlg:SetToplevel(true)
    ns.Skin.Frame(dlg, "window")
    dlg:EnableMouse(true)
    dlg:SetMovable(true)
    dlg:RegisterForDrag("LeftButton")
    dlg:SetScript("OnDragStart", dlg.StartMoving)
    dlg:SetScript("OnDragStop", dlg.StopMovingOrSizing)
    tinsert(UISpecialFrames, "AVL_DiscordDialog") -- fermable à l'Échap

    dlg.title = dlg:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    dlg.title:SetPoint("TOP", 0, -14)
    dlg.title:SetText(ns.L("BTN_DISCORD"))

    local close = ns.Skin.CloseButton(dlg, function() dlg:Hide() end)
    close:SetSize(22, 22)
    close:SetPoint("TOPRIGHT", -8, -8)

    dlg.hintFS = dlg:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    dlg.hintFS:SetPoint("TOP", 0, -38)
    dlg.hintFS:SetText(ns.L("DISCORD_HINT"))

    local box = CreateFrame("Frame", nil, dlg, "BackdropTemplate")
    box:SetPoint("TOPLEFT", 16, -58)
    box:SetPoint("TOPRIGHT", -16, -58)
    box:SetHeight(22)
    ns.Skin.Frame(box, "input")
    dlg.box = box

    local edit = CreateFrame("EditBox", nil, box)
    edit:SetPoint("TOPLEFT", 6, 0)
    edit:SetPoint("BOTTOMRIGHT", -6, 0)
    edit:SetAutoFocus(false)
    edit:SetFontObject("ChatFontNormal")
    edit:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)
    edit:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
    dlg.edit = edit

    return dlg
end

local function OpenDiscordDialog()
    EnsureDialog()
    dlg.title:SetTextColor(unpack(ns.Theme.heading))
    dlg.edit:SetText(DISCORD_URL)
    dlg:Show()
    dlg:Raise()
    dlg.edit:SetFocus()
    dlg.edit:HighlightText()
end

-- Chaîné sur CloseModulePopups (sans écraser un handler déjà posé par un
-- plugin) : la popup Discord se ferme comme les autres popups flottantes
-- (charSelMenu, dropdown de recherche…) dès qu'un autre bouton sidebar est
-- cliqué. Même pattern que AltViewerLog_GuildeLog / _Professions.
local _prevModuleClose = ns.CloseModulePopups
ns.CloseModulePopups = function()
    if _prevModuleClose then _prevModuleClose() end
    if dlg and dlg:IsShown() then dlg:Hide() end
end

-- Ancré juste avant Paramètres, après les éventuels boutons de plugins.
-- Créé ici avec btnGear comme ancre de départ, puis RelayoutPluginButtons
-- (ui/Sidebar.lua) le replace correctement dans la chaîne — la même
-- fonction qui repositionne tout le monde à chaque enregistrement de
-- plugin (Professions/Réputations/Guilde), donc Discord reste toujours
-- juste au-dessus de Paramètres, peu importe combien de plugins sont
-- chargés. Texte réel ("Discord") posé par RefreshMenuText au login,
-- comme les autres boutons.
ns.btnDiscord = ns.CreateMenuButton("...", ns.btnGear, -8)
ns.btnDiscord:SetScript("OnClick", function()
    ns.CloseAllPopups()
    OpenDiscordDialog()
end)
ns.RelayoutPluginButtons()
