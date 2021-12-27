#define MAX_VEHICLESSS 5 // Max vehicles
#define MAX_ID_LENGTH (3 + 1) // Max id length to response the code.|
#define MAX_VEHNAME_LENGTH (11 + 1) // Max veh name length to response the following code and to see in the dialog
#define MAX_VEHPRICE_LENGTH (8 + 1) // Max owner name length to see in the dialog and don't be error
#define DIALOG_SELLCAR 1001 // Dialog of sellcar to show the follwing strings dialog.
#define DIALOG_CONFIRMBUY 1002 // Dialog confirmation to buy a car.

new CarVehicle[6];


new VEH_ID[MAX_VEHICLESSS][MAX_ID_LENGTH] =
{
    "400",
    "401",
    "402",
    "403",
    "404"
};

new VEH_NAME[MAX_VEHICLESSS][MAX_VEHNAME_LENGTH] =
{
    "Landstalker",
    "Bravura",
    "Buffalo",
    "Linerunner",
    "Perennial"
};

new VEH_PRICES[MAX_VEHICLESSS][MAX_VEHPRICE_LENGTH] =
{
    "$30,000",
    "$150,000",
    "$45,500",
    "$78,000",
    "$100,000"
};


stock Show_PlayerCarSell(playerid)
{
    new string[3000];

    string = "Veh ID\tVeh Name\tVeh Price";

    for(new i = 0; i < MAX_VEHICLESSS; i++)
    {
        format(string, 3000, "%s\n%s\t%s\t"WARNING2"%s"WHITE"\n",
        string, 
        VEH_ID[i], 
        VEH_NAME[i], 
        VEH_PRICES[i]);
    }
    return ShowPlayerDialog(playerid, DIALOG_SELLCAR, DIALOG_STYLE_TABLIST_HEADERS, "Grotti Dealership - Veh Price", string, "Buy", "Cancel");
}

CMD:buycar(playerid)
{
    Show_PlayerCarSell(playerid);
    return 1;
}

CMD:testmoney(playerid)
{
    GivePlayerMoney(playerid, 1000000000);
    return 1;
}



Load_VehicleDialog(playerid, dialogid, response, listitem)
{
    switch(dialogid)
    {
        case DIALOG_SELLCAR:
        {
            if(!response) return SCM(playerid, COLOR_SYNTAX, "You canceled to buy a car.");
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        CarVehicle[0] = CreateVehicle(400, 2046.5543, 1361.8239, 10.6719, 279.5317, -1, -1, -1);
                        PutPlayerInVehicle(playerid, CarVehicle[0], 0);
                        GivePlayerMoney(playerid, -30000);
                        SCM(playerid, COLOR_WHITE, ""PRIMES"[Dealership Message]:"WHITE" Sucessfully buy a Landstalker thanks for buying hope you back!");    
                    }
                    case 1:
                    {
                        CarVehicle[1] = CreateVehicle(401, 2046.5543, 1361.8239, 10.6719, 279.5317, -1, -1, -1);
                        PutPlayerInVehicle(playerid, CarVehicle[1], 0);
                        GivePlayerMoney(playerid, -150000);
                        SCM(playerid, COLOR_WHITE, ""PRIMES"[Dealership Message]:"WHITE" Sucessfully buy a Bravura thanks for buying hope you back!"); 
                    }
                    case 2:
                    {
                        CarVehicle[2] = CreateVehicle(402, 2046.5543, 1361.8239, 10.6719, 279.5317, -1, -1, -1);
                        PutPlayerInVehicle(playerid, CarVehicle[2], 0);
                        GivePlayerMoney(playerid, -45500);
                        SCM(playerid, COLOR_WHITE, ""PRIMES"[Dealership Message]:"WHITE" Sucessfully buy a Buffalo thanks for buying hope you back!");
                    }
                    case 3:
                    {
                        CarVehicle[3] = CreateVehicle(403, 2046.5543, 1361.8239, 10.6719, 279.5317, -1, -1, -1);
                        PutPlayerInVehicle(playerid, CarVehicle[3], 0);
                        GivePlayerMoney(playerid, -78000);
                        SCM(playerid, COLOR_WHITE, ""PRIMES"[Dealership Message]:"WHITE" Sucessfully buy a Linerunner thanks for buying hope you back!");
                    }
                    case 4:
                    {
                        CarVehicle[4] = CreateVehicle(404, 2046.5543, 1361.8239, 10.6719, 279.5317, -1, -1, -1);
                        PutPlayerInVehicle(playerid, CarVehicle[4], 0);
                        GivePlayerMoney(playerid, -100000);
                        SCM(playerid, COLOR_WHITE, ""PRIMES"[Dealership Message]:"WHITE" Sucessfully buy a Perennial thanks for buying hope you back!");
                    }
                }
            }
        }
    }
    return 1;
}
    