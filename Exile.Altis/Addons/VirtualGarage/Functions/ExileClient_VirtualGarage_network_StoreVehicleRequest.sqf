/*

 	Name: ExileClient_VirtualGarge_StoreVehicleRequest.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: Handles the client Storing a vehicle in the virtual garage.

*/
private ["_display","_flag","_ownerUID","_level","_vehicleLimit","_storedVehiclesCount","_NearByVehiclesList","_selectedSel","_VehNetId"];
disableSerialization;
_display = uiNameSpace getVariable ["VirtualGarageDialog", displayNull];
_flag = nearestObject [player, "Exile_Construction_Flag_Static"];
_ownerUID = _flag getVariable ["ExileOwnerUID", ""];
_level = _flag getVariable ["ExileTerritoryLevel", 0];
_vehicleLimit = 0;
switch (_level) do
{
    case (1):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel1Limit");
    };
    case (2):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel2Limit");
    };
    case (3):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel3Limit");
    };
    case (4):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel4Limit");
    };
    case (5):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel5Limit");
    };
    case (6):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel6Limit");
    };
    case (7):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel7Limit");
    };
    case (8):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel8Limit");
    };
    case (9):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel9Limit");
    };
    case (10):
    {
        _vehicleLimit = getNumber (missionconfigfile >> "VirtualGarageSettings" >> "VirtualGarage_FlagLevel10Limit");
    };
};

_storedVehiclesCount = count StoredVehicles;

if (_storedVehiclesCount < _vehicleLimit) then
{
    _NearByVehiclesList = _display displayCtrl 1501;
    _selectedSel = lbCurSel _NearByVehiclesList;
    _VehNetId = _NearByVehiclesList lbData _selectedSel;
    ["StoreVehicleRequest",[_VehNetId,_ownerUID]] call ExileClient_system_network_send;
}
else
{
    (findDisplay 0720) closeDisplay 0;
    ["ErrorTitleAndText", ["Virtual Garage", "You Already Have Too Many Vehicles For Your Flag Level"]] call ExileClient_gui_toaster_addTemplateToast;
};
