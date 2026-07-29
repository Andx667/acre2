#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

private _antenna = ["acre_sys_gsa"] call FUNC(getAllItems); //GSA Items
private _radioWithID = call FUNC(getAllRadios); //Radios incl. unique IDs

GVAR(arsenalButton) = [
     _antenna + _radioWithID,
    "ACRE Items", //Open Question: localize?
    "a3\modules_f_curator\data\portraitradio_ca.paa"
] call ace_arsenal_fnc_addRightPanelButton;
