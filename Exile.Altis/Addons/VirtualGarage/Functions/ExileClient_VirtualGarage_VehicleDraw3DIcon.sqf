/*

 	Name: ExileClient_VirtualGarage_VehicleDraw3DIcon.sqf
 	Author(s): Shix
  	Copyright (c) 2016 Shix
 	Description: Handles Drawing of the dankes 3D markers known to man
*/
private["_position","_icon"];
_position = getPos VGVehicle;
if (VirtualGarage3DIconVisible) then
{
	_icon = "\exile_assets\texture\ui\snap_blue_ca.paa";
	drawIcon3D [_icon, [1, 1, 1, 1], _position, 1, 1, 0];
};
