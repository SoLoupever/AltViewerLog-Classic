local addonName, pluginNs = ...

-- ====================================================
-- TRADUCTIONS ANGLAISES
-- ====================================================
pluginNs.locales["enUS"] = {
    BTN_PROFESSIONS      = "Professions",

    -- Errors / debug / slash
    ERR_API_MISSING      = "ERROR: AltViewerLogAPI not found.",
    DBG_LOADED           = "Professions plugin loaded.",
    DBG_HELP             = "|cffffff00/avlprof scan|r  |cffffff00/avlprof show|r",

    -- "Recipes" bar (ui/RecipesBar.lua — depends on ViewerLog_Recette,
    -- invisible if that dependency isn't active)
    RBAR_LABEL   = "Recipes %d / %d",
    RBAR_NO_DATA = "No data yet — open this profession once",
    RBAR_TOOLTIP = "%d / %d known recipes",
    RBAR_FOLD    = "Collapse",
    RBAR_UNFOLD  = "Expand",
    RBAR_OTHER   = "Other",

    -- Recipe search (ui/View.lua + ui/RecipesBar.lua)
    RECIPE_SEARCH_PLACEHOLDER = "Search a recipe...",

    -- Recipe grid loading bar (ui/RecipesBar.lua)
    RBAR_LOADING = "Loading recipes…",
}
