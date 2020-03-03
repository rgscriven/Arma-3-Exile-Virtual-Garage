/*

 	Name: ExileClient_VirtualGarage_network_GetStoredVehicles.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: Sends a network request for stored vehicles
*/
private ["_flag","_ownerUID"];
_flag = nearestObject [player, "Exile_Construction_Flag_Static"];
_ownerUID = _flag getVariable ["ExileOwnerUID", ""];
["GetStoredVehiclesRequest",[_ownerUID]] call ExileClient_system_network_send;
