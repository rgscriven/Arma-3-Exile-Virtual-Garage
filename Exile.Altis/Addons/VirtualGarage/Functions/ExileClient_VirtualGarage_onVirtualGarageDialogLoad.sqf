/*

 	Name: ExileClient_onVirtualGarageDialogLoad.sqf
 	Author(s): Shix
    Copyright (c) 2016 Shix
 	Description: Loads the virtual garage dialog

*/
private ["_display","_VirtCtrls","_hide","_setLoadingText","_progressBar","_curLoadingBarPos","_progressBar","_loadingCtrls","_VirtGarageStoredVehiclesTitle","_VirtGarageStoredVehiclesTitle","_VirtGarageNearbyVehiclesTitle"];
disableSerialization;
_display = uiNameSpace getVariable ["VirtualGarageDialog", displayNull];
_VirtCtrls = [1100,1101,1102,1105,1600,1500,1501,1200,1106,1608,1107,1606];
{
    _hide = (_display displayCtrl _x);
    _hide ctrlSetFade 1;
    _hide ctrlCommit 0;
} forEach _VirtCtrls;
//Set Loading bar  text
_setLoadingText = (_display displayCtrl 1120);
_setLoadingText ctrlSetStructuredText parseText Format["<t color='#00b2cd' font='OrbitronLight' size='2' valign='middle' align='center' shadow='0'>Loading</t>"];
_progressBar = (_display displayCtrl 1900);

_curLoadingBarPos = 0;
while {_curLoadingBarPos < 1} do
{
    _curLoadingBarPos = _curLoadingBarPos + 0.01;
    _progressBar progressSetPosition _curLoadingBarPos;
    uiSleep 0.01;
};
_loadingCtrls = [1900,1120];
{
    _hide = (_display displayCtrl _x);
    _hide ctrlSetFade 1;
    _hide ctrlCommit 0.25;
} forEach _loadingCtrls;

uiSleep 0.25;
{
    _hide = (_display displayCtrl _x);
    _hide ctrlSetFade 0;
    _hide ctrlCommit 0.5;
} forEach _VirtCtrls;
_VirtGarageStoredVehiclesTitle = (_display displayCtrl 1100);
_VirtGarageStoredVehiclesTitle ctrlSetStructuredText parseText Format["<t color='#00b2cd' font='OrbitronLight' size='2' valign='middle' align='center' shadow='0'>STORED VEHICLES</t>"];
_VirtGarageTitle = (_display displayCtrl 1101);
_VirtGarageTitle ctrlSetStructuredText parseText Format["<t color='#00b2cd' font='OrbitronLight' size='2' valign='middle' align='center' shadow='0'>VIRTUAL GARAGE</t>"];
_VirtGarageNearbyVehiclesTitle = (_display displayCtrl 1102);
_VirtGarageNearbyVehiclesTitle ctrlSetStructuredText parseText Format["<t color='#00b2cd' font='OrbitronLight' size='2' valign='middle' align='center' shadow='0'>NEARBY VEHICLES</t>"];
call ExileClient_VirtualGarage_GetNearbyVehicles;
call ExileClient_VirtualGarage_network_GetStoredVehiclesRequest;
