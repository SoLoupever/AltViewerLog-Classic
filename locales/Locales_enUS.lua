local _, ns = ...

-- ====================================================
-- TRADUCTIONS ANGLAISES (enUS)
-- ====================================================
ns.locales["enUS"] = {
    -- Settings & management
    -- Interface / themes
    UI_TITLE         = "ALTVIEWERLOG",
    UI_AUTHOR        = "By Soloup_ever",
    LANG_NAME_FR     = "Français",
    LANG_NAME_EN     = "English",
    THEME_NAME_AVL      = "AltViewerLog",
    THEME_NAME_BLIZZARD = "Blizzard",
    REALM_CHAR_COUNT = "%d characters saved",
    CHAR_LEVEL       = "Lvl %d",
    CHAR_ILVL        = "ilvl %d",
    PLAYED_LABEL     = "Time played: %s",
    GEAR_TITLE       = "Gear & Equipment",
    TIME_AGO_DH      = "%dd %dh ago",
    TIME_AGO_HM      = "%dh %dm ago",
    TIME_AGO_M       = "%dm ago",
    TIME_DH          = "%dd %dh",
    TIME_HM          = "%dh %dm",
    TIME_M           = "%dm",

    SETTINGS_TITLE   = "Settings and Management",
    SORT_POP         = "Show most populated realms at the top",
    LANG_TITLE       = "Addon Language:",
    THEME_TITLE              = "Interface Theme:",
    EXPANSION_FILTER_TITLE   = "Expansion Display",
    EXPANSION_FILTER_TOOLTIP = "Show / hide expansions",
    EXPANSION_SHOW_ALL       = "Show all",
    EXPANSION_HIDE_ALL       = "Hide all",
    EXPANSION_CLOSE          = "Close",
    TOTAL_GOLD        = "Total gold:",
    TOTAL_TIME        = "Total time played:",
    TOTAL_CHARS       = "Total characters:",
    RELOAD_REQUIRED  = "UI reload required",

    -- Sidebar tabs
    BTN_SETTINGS     = "Settings",
    BTN_CHARS        = "Characters",
    BTN_PROFESSIONS  = "Professions",
    BTN_GRAPH        = "Graph",
    BTN_SEARCH       = "Search",
    BTN_DISCORD      = "Discord",
    DISCORD_HINT     = "Select all (Ctrl+A) then copy (Ctrl+C).",

    -- Character list
    REALM_MOVE_UP    = "Move realm up",
    REALM_MOVE_DOWN  = "Move realm down",
    REALM_COLLAPSE   = "Collapse this realm",
    REALM_EXPAND     = "Expand this realm",
    ONLINE           = "Online",
    RESTED_XP        = "Rested",
    NO_DATA          = "No data available",
    CHAR_SEARCH_PLACEHOLDER = "Search a character...",
    CHAR_SEARCH_NONE        = "No character matches.",

    -- Bottom bar

    -- Search & Bags
    NO_RESULTS       = "No items found.",
    SEARCH_TEXT      = "Search...",
    SEARCH_RESULTS   = "results",
    BAG_NAME         = "Bag %d",
    BAG_REAGENT      = "Reagent Bag",
    BANK_MAIN        = "Main Bank",
    BANK_REAGENT     = "Reagent Bank",
    BANK_BAG         = "Bank Bag %d",
    SECTION_BANK     = "Bank",

    -- Misc
    TIME_FORMAT      = "%dd %dh %dm",
    TOTAL_TIME       = "Total time: ",
    CLASS_WARRIOR    = "Warrior",
    CLASS_PALADIN    = "Paladin",
    CLASS_HUNTER     = "Hunter",
    CLASS_ROGUE      = "Rogue",
    CLASS_PRIEST     = "Priest",
    CLASS_DEATHKNIGHT= "Death Knight",
    CLASS_SHAMAN     = "Shaman",
    CLASS_MAGE       = "Mage",
    CLASS_WARLOCK    = "Warlock",
    CLASS_MONK       = "Monk",
    CLASS_DRUID      = "Druid",
    CLASS_DEMONHUNTER= "Demon Hunter",
    CLASS_EVOKER     = "Evoker",

    -- Professions plugin
    SCAN_BTN          = "Scan my professions",
    NO_CHARS          = "No characters found.",
    LEVEL_SHORT       = "Lvl. ",
    -- Settings
    CAT_MODE          = "Display bags by item category (instead of bag by bag)",
    BANK_INLINE_MODE  = "Open the bank inside the window instead of a separate window",
    DEBUG_MODE        = "Debug mode — show internal messages in chat",
    -- Bank
    BTN_BANK          = "Bank",
    BANK_NO_DATA      = "No bank data.\nVisit a banker to scan.",
    CHAR_SWITCH_TT    = "Switch character",
    -- Bag view by category
    BAG_VIEW_TITLE    = "Inventory of %s",
    CAT_AUTRE         = "Other",

    -- Blizzard item categories, translated to the addon language (used when
    -- it differs from the client; otherwise the WoW API string wins).
    -- Stable keys per classID / subclass. Not covered → API string fallback.
    ICAT_0  = "Consumable",
    ICAT_1  = "Container",
    ICAT_2  = "Weapon",
    ICAT_3  = "Gem",
    ICAT_4  = "Armor",
    ICAT_5  = "Reagent",
    ICAT_7  = "Trade Goods",
    ICAT_8  = "Item Enhancement",
    ICAT_9  = "Recipe",
    ICAT_12 = "Quest",
    ICAT_13 = "Key",
    ICAT_15 = "Miscellaneous",
    ICAT_16 = "Glyph",
    ICAT_19 = "Profession",
    ICATSUB_4_1 = "Cloth",
    ICATSUB_4_2 = "Leather",
    ICATSUB_4_3 = "Mail",
    ICATSUB_4_4 = "Plate",
    ICATSUB_4_5 = "Cosmetic",
    ICATSUB_4_6 = "Shield",

    -- Category management ("Category order" window) + drag & drop
    CATMGR_TITLE         = "Category management",
    CATMGR_HINT          = "Drag a row or use the arrows to reorder",
    CATMGR_MOVE_UP       = "Move up",
    CATMGR_MOVE_DOWN     = "Move down",
    CATMGR_DELETE        = "Delete category",
    CATMGR_NEW_NAME      = "New category:",
    CATMGR_ADD_BTN       = "Add",
    CATMGR_ERR_EMPTY     = "The name cannot be empty.",
    CATMGR_ERR_EXISTS    = "This category already exists.",
    CATMGR_SELECT_HINT   = "Select a category to manage its items",
    CATMGR_ITEMS_OF      = "Items assigned to %s",
    CATMGR_MORE          = "+%d more",
    CATMGR_ITEM_REMOVE_TT = "Click: remove from category",
    CATMGR_ITEM_ID       = "Item ID:",
    CATMGR_ITEM_ADD      = "Add item",
    CATMGR_ERR_NO_SEL    = "Select a category first.",
    CATMGR_ERR_BAD_ITEM  = "Invalid item ID.",
    CATDND_PLUS_TT       = "Drop an item here to add it to this category",

    -- Search filters
    FILTER_ALL         = "All",
    FILTER_HEAD        = "Head (slot)",
    FILTER_CLOAK       = "Back (Cloak)",
    FILTER_CONSUMABLE  = "Consumable",
    FILTER_WEAPON      = "Weapon",
    FILTER_ARMOR       = "Armor",
    FILTER_CLOTH       = "Cloth",
    FILTER_LEATHER     = "Leather",
    FILTER_MAIL        = "Mail",
    FILTER_PLATE       = "Plate",
    FILTER_QUEST       = "Quest",
    FILTER_REAGENT     = "Reagent",
    -- Professions plugin filter window
    PROF_FILTER_TITLE  = "Profession Filter",
    PROF_FILTER_TT     = "Show / hide professions",
    -- Stuff & Gear
    BTN_GEAR         = "Gear",
    GEAR_SUBTITLE    = "Character Equipment",
    -- Slots
    GEAR_SLOT_1      = "Head",
    GEAR_SLOT_2      = "Neck",
    GEAR_SLOT_3      = "Shoulders",
    GEAR_SLOT_5      = "Chest",
    GEAR_SLOT_6      = "Waist",
    GEAR_SLOT_7      = "Legs",
    GEAR_SLOT_8      = "Feet",
    GEAR_SLOT_9      = "Wrists",
    GEAR_SLOT_10     = "Hands",
    GEAR_SLOT_11     = "Ring 1",
    GEAR_SLOT_12     = "Ring 2",
    GEAR_SLOT_13     = "Trinket 1",
    GEAR_SLOT_14     = "Trinket 2",
    GEAR_SLOT_15     = "Back",
    GEAR_SLOT_16     = "Main Hand",
    GEAR_SLOT_17     = "Off Hand",

    -- Gear view (status messages)
    GEAR_NO_CHAR_DATA = "No data. Log in on this character.",
    GEAR_NOT_SCANNED  = "Equipment not scanned yet.\nLog back in on this character to scan it.",

    -- Characters (status messages)
    CHARS_NO_DATA    = "No inventory data found.\nMake sure |cff00ff00ViewerLog|r|cffff9900 is active.",

    -- Misc tooltips
    TT_CATEGORY_ORDER  = "Category order",

    -- Minimap icon
    MINIMAP_SUBTITLE  = "Inventory Log",
    MINIMAP_CLICK     = "Left-click: Open / Close",

    -- /av slash commands
    SLASH_GOLD_DBG_MISSING  = "[AVL] ns.DumpGoldDebug not available (is Debug.lua loaded?)",
    SLASH_VLDB_MISSING      = "[AVL] ViewerLogDB not found — is ViewerLog active?",
    SLASH_META_HEADER       = "AltViewerLog — /av meta dump:",
    SLASH_DEBUG_BAGS        = "AltViewerLog Debug — Bags:",
    SLASH_DEBUG_BAG_LINE    = "  Bag |cffffd700%d|r: %d slots / %d items",

    -- Events (ViewerLog missing warnings)
    EVENTS_VL_MISSING_1 = "[AltViewerLog]|r ViewerLog not found — the inventory will not be displayed.",
    EVENTS_VL_MISSING_2 = "[AltViewerLog]|r Make sure ViewerLog is enabled.",

    -- DataProvider status
    STATUS_VL_ACTIVE  = "ViewerLog active",
    STATUS_VL_MISSING = "ViewerLog not found",
    STATUS_VL_OUTDATED = "ViewerLog incompatible (update required)",

    -- Gold debug dump (/bv gold)
    DBG_GOLD_HEADER      = "|cffd4af37[AVL] Gold Debug — %s|r  Legend: |cff55ff55[LIVE]|r=online  |cffffd700[SAVE]|r=saved  |cff888888[ZERO]|r=0g  |cffff4444[NIL]|r=never scanned",
    DBG_DB_NOT_FOUND     = "|cffff4444  [ERROR] ViewerLogDB not found — is ViewerLog active?|r",
    DBG_CHARS_HEADER     = "|cffcccccc  CHARACTERS (%d)|r",
    DBG_NEVER_SCANNED    = "|cffff4444never scanned|r",
    DBG_DB_UPDATE_NOTE   = " |cffff9900← DB=%s (will update)|r",
    DBG_CHAR_SUBTOTAL    = "  %s Character subtotal: %s  |cff888888(%d character(s) with data)|r",
    DBG_GRAND_TOTAL        = "  |cffd4af37GRAND TOTAL|r  →  %s",
    DBG_APPROX_GOLD        = "  |cff888888approx. %d gold rounded|r",
    DBG_NIL_VALUE          = "|cffff4444nil|r",
    DBG_NEGATIVE_SUFFIX    = " (negative?)",
    GOLD_ABBR    = "g",
    SILVER_ABBR  = "s",
    COPPER_ABBR  = "c",
}
