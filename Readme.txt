Installation Instructions

Server-Side
Open your MySQL database
And porting your data table VirtualGarage.sql base
Update the database, you should now see a new table virtual_garage
Go to @ ExileServer / extDB / sql_custom_v2
Open file exile.ini
Copy and paste the contents of VirtualGarage_extDB2.ini at the bottom of exile.ini
Save exile.ini
Copy VirtualGarage_Server.pbo in @ ExileServer / addons
Unpack your exile_server.pbo
Copy ExileServer_system_network_dispatchIncomingMessage.sqf of Exile Overwrites and paste it into the folder exile_server / code with the replacement of
Repack exile_server back pbo


On the side of the Customer

VirtualGarage Copy the folder to the root of your mission.pbo    aka(Exile.Altis - Exile.Tanoa) and so on

Open your config.cpp
Find a class CfgInteractionMenus
CfgInteractionMenus to find class Laptop
Copy and paste the class VirtualGarage: ExileAbstractAction config.cpp of the file that you downloaded in class Actions
Copy the entire code class CfgNetworkMessages to the bottom of config.cpp downloaded and paste it into the bottom of your config.cpp
Save your config.cpp
Open your description.ext scroll to the bottom, open the file that you downloaded description.ext and paste the contents into the lower part of your description.ext

Open the file init.sqf
insert inside execVM "VirtualGarage \ VirtualGarage_Client_Init.sqf";
Save the file init.sqf
repack your mission back to PBO
That's all!

update


Server Side
Open the MySQL database
SQLUpdate.sql fill in the database
Update the database, virtual_garage table should now have 10 new columns
Go to @ ExileServer / extDB / sql_custom_v2
Open exile.ini
Delete section VIRTUAL GARAGE and copy the contents of VirtualGarage_extDB2.ini
Save exile.ini
Copy VirtualGarage_Server.pbo in @ ExileServer / addons

Client Side
your mission file
Remove VirtualGarage folder and copy the new folder VirtualGarage
open config.cpp
Find class VirtualGarageSettings
Remove class VirtualGarageSettings and replace it with a new one, which is located in the downloaded file config.cpp
safety
Additional Information
You can configure a virtual garage through VirtualGarageSettings, that you copied at the bottom of your config.cpp mission file.


To disable the Exile Virtual Garage though the xm8

Add this to CfgExileCustomCode inside the config.cpp of your mission file, and add the custom folder also, if you already have the custom folder, just copy the files over, or call it wherever you want it from.

	// Exile VirtualGarage (Disabled XM8 VG)
	ExileClient_gui_virtualGarageDialog_show = "Custom\Exile_VirtualGarage\ExileClient_gui_virtualGarageDialog_show.sqf";








