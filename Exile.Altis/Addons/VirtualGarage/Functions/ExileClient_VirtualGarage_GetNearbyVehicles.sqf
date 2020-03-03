/*

 	Name: ExileClient_GetNearbyVehicles.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: Gets a list of nearby vehicles on a flag pole with the ability to be stored in Virtual Garage.
*/
private ["_display","_flag","_buildRights","_flagRadius","_nearVehicles","_nearByVehiclesList","_vehDispName","_index"];
disableSerialization;
_display = uiNameSpace getVariable ["VirtualGarageDialog", displayNull];
_flag = nearestObject [player, "Exile_Construction_Flag_Static"];
_buildRights = _Flag getVariable ["ExileTerritoryBuildRights", []];
if(getPlayerUID player in _buildRights) then
{
    _flagRadius = _flag getVariable ["ExileTerritorySize", 15];
    _nearVehicles = nearestObjects [player, ["LandVehicle", "Air", "Ship"], _flagRadius];
    localVehicles = [];
    {
        if (local _x) then
        {
            if (alive _x) then
            {
                localVehicles pushBack _x;
            };
        };
    }forEach _nearVehicles;

    _nearByVehiclesList = _display displayCtrl 1501;
    lbClear _nearByVehiclesList;
    {
        _vehDispName = getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
        _index = _nearByVehiclesList lbAdd (format ["%1",toUpper _vehDispName]);
        _nearByVehiclesList lbSetData [_index, netId _x];
    } forEach localVehicles;
};
