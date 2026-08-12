#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

// Show/Hide connectors
GVAR(connectorsEnabled) = false;

ADDON = true;

//Gather Classnames of Radios and the GSA Items
private _radios = "(getNumber(_x >> 'acre_isRadio')) == 1" configClasses (configFile >> "CfgWeapons") apply {configName _x};
private _gsaItems = getArray(configFile >> "CfgPatches" >> "acre_sys_gsa" >> "weapons");

GVAR(arsenalButton) = [
     _radios + _gsaItems,
    LLSTRING(radios),
    "a3\modules_f_curator\data\portraitradio_ca.paa"
] call ace_arsenal_fnc_addRightPanelButton;
