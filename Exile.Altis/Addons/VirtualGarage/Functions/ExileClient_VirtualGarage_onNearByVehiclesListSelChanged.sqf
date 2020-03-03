/*

 	Name: ExileClient_VirtualGarage_onNearByVehiclesListSelChanged.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: handles sel changes for dankness

*/
private ["_display","_NearByVehiclesList","_selectedSel","_selectedSel","_vehicleSelectedClass","_vehicleClassName","_selectedVehicleDispPic","_vehiclePicture","_vehiclePicture"];
disableSerialization;
_display = uiNameSpace getVariable ["VirtualGarageDialog", displayNull];
_NearByVehiclesList = _display displayCtrl 1501;
_selectedSel = lbCurSel _NearByVehiclesList;
_vehicleSelectedClass = localVehicles select _selectedSel;
_vehicleClassName = typeOf _vehicleSelectedClass;
_selectedVehicleDispPic = getText (configfile >> "CfgVehicles" >> _vehicleClassName >> "picture");
_vehiclePicture = _display displayCtrl 1200;
_vehiclePicture ctrlSetText Format["%1",_selectedVehicleDispPic];
