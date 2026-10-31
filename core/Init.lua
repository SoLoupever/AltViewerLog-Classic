local addonName, ns = ...

AltViewerLogDB = AltViewerLogDB or {}

_G.AltViewerLogAPI = ns

-- Icône de statut connexion (Pierre de Foyer), partagée par les modules
-- affichant l'état en ligne/hors ligne d'un personnage (Characters, Gear).
--
-- GetItemIcon est un global déprécié : sur Retail il reste utilisable (pont
-- de compatibilité chargé par le client), mais sur WoW Forever (bêta) ce
-- pont n'existe pas et l'appel vaut nil -> "attempt to call a nil value".
-- Même pattern déjà utilisé dans Shared.lua / GuildeLog/View.lua : on
-- privilégie l'API moderne C_Item, avec repli sur l'ancien global, puis sur
-- le chemin de texture statique de la Pierre de Foyer (identique sur tous
-- les clients, aucun appel API requis) si les deux sont indisponibles.
local _GetItemIconByID = (C_Item and C_Item.GetItemIconByID) or GetItemIcon
ns.ICON_ONLINE_STATUS = (_GetItemIconByID and _GetItemIconByID(6948))
    or "Interface\\Icons\\INV_Misc_Rune_01"
