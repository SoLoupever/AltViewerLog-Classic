local _, ns = ...

ns.locales = {}

-- ====================================================
-- TRADUCTIONS FRANÇAISES (frFR)
-- ====================================================
ns.locales["frFR"] = {
    -- Paramètres & gestion
    -- Interface / thèmes
    UI_TITLE         = "ALTVIEWERLOG",
    UI_AUTHOR        = "By Soloup_ever",
    LANG_NAME_FR     = "Français",
    LANG_NAME_EN     = "English",
    THEME_NAME_AVL      = "AltViewerLog",
    THEME_NAME_BLIZZARD = "Blizzard",
    REALM_CHAR_COUNT = "%d personnages enregistrés",
    CHAR_LEVEL       = "Niv %d",
    CHAR_ILVL        = "ilvl %d",
    PLAYED_LABEL     = "Temps de jeu : %s",
    GEAR_TITLE       = "Stuff & Gear",
    TIME_AGO_DH      = "il y a %dj %dh",
    TIME_AGO_HM      = "il y a %dh %dm",
    TIME_AGO_M       = "il y a %dm",
    TIME_DH          = "%dj %dh",
    TIME_HM          = "%dh %dm",
    TIME_M           = "%dm",

    SETTINGS_TITLE   = "Paramètres et Gestion",
    SORT_POP         = "Afficher les serveurs les plus peuplés en haut",
    LANG_TITLE       = "Langue de l'addon :",
    THEME_TITLE              = "Thème de l'interface :",
    EXPANSION_FILTER_TITLE   = "Affichage des extensions",
    EXPANSION_FILTER_TOOLTIP = "Afficher / masquer les extensions",
    EXPANSION_SHOW_ALL       = "Tout afficher",
    EXPANSION_HIDE_ALL       = "Tout masquer",
    EXPANSION_CLOSE          = "Fermer",
    TOTAL_GOLD        = "Total or :",
    TOTAL_TIME        = "Total temps joué :",
    TOTAL_CHARS       = "Total personnages :",
    RELOAD_REQUIRED  = "Rechargement de l'interface requis",

    -- Onglets sidebar
    BTN_SETTINGS     = "Paramètres",
    BTN_CHARS        = "Personnages",
    BTN_PROFESSIONS  = "Métiers",
    BTN_GRAPH        = "Graphique",
    BTN_SEARCH       = "Recherche",
    BTN_DISCORD      = "Discord",
    DISCORD_HINT     = "Sélectionne tout (Ctrl+A) puis copie (Ctrl+C).",

    -- Vue personnages
    REALM_MOVE_UP    = "Monter ce serveur",
    REALM_MOVE_DOWN  = "Descendre ce serveur",
    REALM_COLLAPSE   = "Replier ce serveur",
    REALM_EXPAND     = "Déplier ce serveur",
    ONLINE           = "En ligne",
    RESTED_XP        = "Repos",
    NO_DATA          = "Aucune donnée disponible",
    CHAR_SEARCH_PLACEHOLDER = "Rechercher un perso...",
    CHAR_SEARCH_NONE        = "Aucun personnage ne correspond.",

    -- Barre du bas

    -- Recherche et Sacs
    NO_RESULTS       = "Aucun objet trouvé.",
    SEARCH_TEXT      = "Rechercher...",
    SEARCH_RESULTS   = "résultats",
    BAG_NAME         = "Sac %d",
    BAG_REAGENT      = "Sac de Composants",
    BANK_MAIN        = "Banque Principale",
    BANK_REAGENT     = "Banque de Composants",
    BANK_BAG         = "Sac de Banque %d",
    SECTION_BANK     = "Banque",

    -- Divers
    TIME_FORMAT      = "%d j %d h %d m",
    TOTAL_TIME       = "Temps total : ",
    CLASS_WARRIOR    = "Guerrier",
    CLASS_PALADIN    = "Paladin",
    CLASS_HUNTER     = "Chasseur",
    CLASS_ROGUE      = "Voleur",
    CLASS_PRIEST     = "Prêtre",
    CLASS_DEATHKNIGHT= "Chevalier de la mort",
    CLASS_SHAMAN     = "Chaman",
    CLASS_MAGE       = "Mage",
    CLASS_WARLOCK    = "Démoniste",
    CLASS_MONK       = "Moine",
    CLASS_DRUID      = "Druide",
    CLASS_DEMONHUNTER= "Chasseur de démons",
    CLASS_EVOKER     = "Évocateur",

    -- Plugin Métiers
    SCAN_BTN          = "Scanner mes métiers",
    NO_CHARS          = "Aucun personnage trouvé.",
    LEVEL_SHORT       = "Niv. ",
    -- Paramètres
    CAT_MODE          = "Afficher les sacs par catégorie d'item (au lieu de sac par sac)",
    BANK_INLINE_MODE  = "Ouvrir la banque dans la fenêtre au lieu d'une fenêtre séparée",
    DEBUG_MODE        = "Mode debug — afficher les messages internes dans le chat",
    -- Banque
    BTN_BANK          = "Banque",
    BANK_NO_DATA      = "Aucune donnée de banque.\nVisite un banquier pour scanner.",
    CHAR_SWITCH_TT    = "Changer de personnage",
    -- Vue sacs par catégorie
    BAG_VIEW_TITLE    = "Inventaire de %s",
    CAT_AUTRE         = "Autre",

    -- Catégories d'objets Blizzard, traduites selon la langue de l'addon
    -- (utilisées quand elle diffère de celle du client ; sinon l'API WoW
    -- fait foi). Clés stables par classID / sous-classe. Non couvert →
    -- repli sur la chaîne de l'API.
    ICAT_0  = "Consommable",
    ICAT_1  = "Conteneur",
    ICAT_2  = "Arme",
    ICAT_3  = "Gemme",
    ICAT_4  = "Armure",
    ICAT_5  = "Composant",
    ICAT_7  = "Artisanat",
    ICAT_8  = "Amélioration d'objet",
    ICAT_9  = "Recette",
    ICAT_12 = "Quête",
    ICAT_13 = "Clé",
    ICAT_15 = "Divers",
    ICAT_16 = "Glyphe",
    ICAT_19 = "Métier",
    ICATSUB_4_1 = "Tissu",
    ICATSUB_4_2 = "Cuir",
    ICATSUB_4_3 = "Mailles",
    ICATSUB_4_4 = "Plaques",
    ICATSUB_4_5 = "Cosmétique",
    ICATSUB_4_6 = "Bouclier",

    -- Gestion des catégories (fenêtre « Ordre des catégories ») + drag & drop
    CATMGR_TITLE         = "Gestion des catégories",
    CATMGR_HINT          = "Glissez une ligne ou utilisez les flèches pour réordonner",
    CATMGR_MOVE_UP       = "Monter",
    CATMGR_MOVE_DOWN     = "Descendre",
    CATMGR_DELETE        = "Supprimer la catégorie",
    CATMGR_NEW_NAME      = "Nouvelle catégorie :",
    CATMGR_ADD_BTN       = "Ajouter",
    CATMGR_ERR_EMPTY     = "Le nom ne peut pas être vide.",
    CATMGR_ERR_EXISTS    = "Cette catégorie existe déjà.",
    CATMGR_SELECT_HINT   = "Sélectionnez une catégorie pour gérer ses objets",
    CATMGR_ITEMS_OF      = "Objets assignés à %s",
    CATMGR_MORE          = "+%d autres",
    CATMGR_ITEM_REMOVE_TT = "Clic : retirer de la catégorie",
    CATMGR_ITEM_ID       = "ID d'objet :",
    CATMGR_ITEM_ADD      = "Ajouter l'objet",
    CATMGR_ERR_NO_SEL    = "Sélectionnez d'abord une catégorie.",
    CATMGR_ERR_BAD_ITEM  = "ID d'objet invalide.",
    CATDND_PLUS_TT       = "Déposez un objet ici pour l'ajouter à cette catégorie",

    -- Filtres de recherche
    FILTER_ALL         = "Tout",
    FILTER_HEAD        = "Tête (emplacement)",
    FILTER_CLOAK       = "Dos (Cape)",
    FILTER_CONSUMABLE  = "Consommable",
    FILTER_WEAPON      = "Arme",
    FILTER_ARMOR       = "Armure",
    FILTER_CLOTH       = "Tissu",
    FILTER_LEATHER     = "Cuir",
    FILTER_MAIL        = "Maille",
    FILTER_PLATE       = "Plaques",
    FILTER_QUEST       = "Quête",
    FILTER_REAGENT     = "Composant",
    -- Fenêtre filtre métiers (plugin Professions)
    PROF_FILTER_TITLE  = "Filtre des métiers",
    PROF_FILTER_TT     = "Afficher / masquer des métiers",
    -- Stuff & Gear
    BTN_GEAR         = "Stuff",
    GEAR_SUBTITLE    = "Équipement du personnage",
    -- Slots
    GEAR_SLOT_1      = "Tête",
    GEAR_SLOT_2      = "Cou",
    GEAR_SLOT_3      = "Épaules",
    GEAR_SLOT_5      = "Torse",
    GEAR_SLOT_6      = "Ceinture",
    GEAR_SLOT_7      = "Jambes",
    GEAR_SLOT_8      = "Pieds",
    GEAR_SLOT_9      = "Poignets",
    GEAR_SLOT_10     = "Mains",
    GEAR_SLOT_11     = "Bague 1",
    GEAR_SLOT_12     = "Bague 2",
    GEAR_SLOT_13     = "Bijou 1",
    GEAR_SLOT_14     = "Bijou 2",
    GEAR_SLOT_15     = "Dos",
    GEAR_SLOT_16     = "Main droite",
    GEAR_SLOT_17     = "Main gauche",

    -- Vue Stuff & Gear (messages d'état)
    GEAR_NO_CHAR_DATA = "Aucune donnée. Connectez-vous sur ce personnage.",
    GEAR_NOT_SCANNED  = "Équipement non encore scanné.\nReconnectez-vous sur ce personnage pour le scanner.",

    -- Personnages (messages d'état)
    CHARS_NO_DATA    = "Aucune donnée d'inventaire.\nAssurez-vous que |cff00ff00ViewerLog|r|cffff9900 est activé.",

    -- Tooltips divers
    TT_CATEGORY_ORDER  = "Ordre des catégories",

    -- Icône minimap
    MINIMAP_SUBTITLE  = "Journal d'inventaire",
    MINIMAP_CLICK     = "Clic gauche : Ouvrir / Fermer",

    -- Commandes slash /bv
    SLASH_GOLD_DBG_MISSING  = "[AVL] ns.DumpGoldDebug non disponible (Debug.lua chargé ?)",
    SLASH_VLDB_MISSING      = "[AVL] ViewerLogDB introuvable — ViewerLog est-il actif ?",
    SLASH_META_HEADER       = "AltViewerLog — /av meta dump :",
    SLASH_DEBUG_BAGS        = "AltViewerLog Debug — Sacs :",
    SLASH_DEBUG_BAG_LINE    = "  Sac |cffffd700%d|r : %d emplacements / %d objets",

    -- Événements (avertissements ViewerLog manquant)
    EVENTS_VL_MISSING_1 = "[AltViewerLog]|r ViewerLog introuvable — l'inventaire ne sera pas affiché.",
    EVENTS_VL_MISSING_2 = "[AltViewerLog]|r Assurez-vous que ViewerLog est activé.",

    -- Statut DataProvider
    STATUS_VL_ACTIVE  = "ViewerLog actif",
    STATUS_VL_MISSING = "ViewerLog introuvable",
    STATUS_VL_OUTDATED = "ViewerLog incompatible (mise à jour requise)",

    -- Dump de débogage de l'or (/bv gold)
    DBG_GOLD_HEADER      = "|cffd4af37[AVL] Débogage de l'or — %s|r  Légende : |cff55ff55[LIVE]|r=connecté  |cffffd700[SAVE]|r=sauvegardé  |cff888888[ZERO]|r=0g  |cffff4444[NIL]|r=jamais scanné",
    DBG_DB_NOT_FOUND     = "|cffff4444  [ERREUR] ViewerLogDB introuvable — ViewerLog est-il actif ?|r",
    DBG_CHARS_HEADER     = "|cffcccccc  PERSONNAGES (%d)|r",
    DBG_NEVER_SCANNED    = "|cffff4444jamais scanné|r",
    DBG_DB_UPDATE_NOTE   = " |cffff9900← DB=%s (sera mis à jour)|r",
    DBG_CHAR_SUBTOTAL    = "  %s Sous-total persos : %s  |cff888888(%d perso(s) avec données)|r",
    DBG_GRAND_TOTAL        = "  |cffd4af37GRAND TOTAL|r  →  %s",
    DBG_APPROX_GOLD        = "  |cff888888soit environ %d po en valeur arrondie|r",
    DBG_NIL_VALUE          = "|cffff4444nil|r",
    DBG_NEGATIVE_SUFFIX    = " (négatif ?)",
    GOLD_ABBR    = "po",
    SILVER_ABBR  = "pa",
    COPPER_ABBR  = "pc",
}

-- ====================================================
-- FONCTION DE TRADUCTION
-- ====================================================
-- GetLocale() est immuable pendant une session : on le cache au chargement.
local _cachedLocale = GetLocale()

function ns.L(key)
    local currentLang = "frFR"
    if AltViewerLogDB and AltViewerLogDB.settings and AltViewerLogDB.settings.lang then
        currentLang = AltViewerLogDB.settings.lang
    elseif ns.locales[_cachedLocale] then
        currentLang = _cachedLocale
    end
    local tableLangue = ns.locales[currentLang] or ns.locales["frFR"]
    return tableLangue[key] or key
end
