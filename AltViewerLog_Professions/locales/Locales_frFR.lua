local addonName, pluginNs = ...

pluginNs.locales = {}

-- ====================================================
-- TRADUCTIONS FRANÇAISES
-- ====================================================
pluginNs.locales["frFR"] = {
    BTN_PROFESSIONS      = "Métiers",

    -- Erreurs / debug / slash
    ERR_API_MISSING      = "ERREUR : AltViewerLogAPI introuvable.",
    DBG_LOADED           = "Plugin Métiers chargé.",
    DBG_HELP             = "|cffffff00/avlprof scan|r  |cffffff00/avlprof show|r",

    -- Barre "Recettes" (ui/RecipesBar.lua — dépend de ViewerLog_Recette,
    -- invisible si cette dépendance n'est pas active)
    RBAR_LABEL   = "Recettes %d / %d",
    RBAR_NO_DATA = "Aucune donnée — ouvrez ce métier une fois",
    RBAR_TOOLTIP = "%d / %d recettes connues",
    RBAR_FOLD    = "Replier",
    RBAR_UNFOLD  = "Déplier",
    RBAR_OTHER   = "Autres",

    -- Recherche de recette (ui/View.lua + ui/RecipesBar.lua)
    RECIPE_SEARCH_PLACEHOLDER = "Rechercher une recette...",

    -- Barre de chargement de la grille de recettes (ui/RecipesBar.lua)
    RBAR_LOADING = "Chargement des recettes…",
}

-- ====================================================
-- FONCTION DE TRADUCTION
-- ====================================================
function pluginNs.L(key)
    local core = _G.AltViewerLogAPI
    local lang = (core and AltViewerLogDB and AltViewerLogDB.settings
                  and AltViewerLogDB.settings.lang)
                 or GetLocale()
    local t = pluginNs.locales[lang] or pluginNs.locales["enUS"]
    return t[key] or ("[PROF:" .. key .. "]")
end
