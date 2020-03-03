/*

 	Name: ExileClient_VirtualGarage_network_StoreVehicleResponse.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix and WolfkillArcadia
 	Description: Handles the client Storing a vehicle in the virtual garage.

*/
private ["_response","_this"];
_response = _this select 0;
if(_response == "true")then
{
    ["SuccessTitleAndText", ["Virtual Garage", "Vehicle Successfully Stored"]] call ExileClient_gui_toaster_addTemplateToast;
}
else
{
    ["ErrorTitleAndText", ["Virtual Garage", "The Vehicle Could Not Be Stored"]] call ExileClient_gui_toaster_addTemplateToast;
};
(findDisplay 0720) closeDisplay 0;
