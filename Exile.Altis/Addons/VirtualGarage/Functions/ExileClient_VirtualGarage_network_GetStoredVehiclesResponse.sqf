/*

 	Name: ExileClient_VirtualGarage_network_GetStoredVehiclesResponse.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: Gets a list of stored vehicles and adds them to the display
*/
private ["_display","_StoredVehiclesList","_display","_this","_VehiclesCount","_className","_vehDispName","_VehID","_index","_StoredVehiclesList"];
disableSerialization;
_display = uiNameSpace getVariable ["VirtualGarageDialog", displayNull];
_StoredVehiclesList = _display displayCtrl 1500;
StoredVehicles = _this select 0;
_VehiclesCount = count StoredVehicles;
if (_VehiclesCount !=0) then
{
    for "_i" from 0 to (_VehiclesCount) -1 do
    {
        _className = (StoredVehicles select _i)select 1;
        _vehDispName = getText (configFile >> "CfgVehicles" >> _className >> "displayName");
        _VehID = (StoredVehicles select _i)select 0;
        _index = _StoredVehiclesList lbAdd (format ["%1", toUpper _vehDispName]);
        _StoredVehiclesList lbSetData [_index, str (_VehID)];
    };
    lbSetCurSel [1500, 0];
};
