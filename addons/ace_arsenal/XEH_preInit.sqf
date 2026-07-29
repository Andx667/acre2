#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;

private _antenna = ["acre_sys_gsa"] call FUNC(getAllItems); //GSA Items
private _radios = ([] call acre_api_fnc_getAllRadios) select 0; //Radio Base Clases
private _radioWithID = call FUNC(getAllRadios); //Radios with unique IDs

private _combined = _antenna + _radios + _radioWithID;
private _unique = _combined arrayIntersect _combined;

GVAR(arsenalButton) = [
    _unique,
    "ACRE", //Open Question: localize?
    "a3\modules_f_curator\data\portraitradio_ca.paa"
] call ace_arsenal_fnc_addRightPanelButton;
