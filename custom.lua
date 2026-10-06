-------------------------------------------------
--        SYSTEME DE NOTIFICATION
--        Modifiez ici pour utiliser votre
--        systeme de notification prefere.
--
--        Decommenter UNE SEULE option ci-dessous
--        et commenter les autres avec --
-------------------------------------------------

function SendNotification(title, message, type, length, icon, color)

    -- OPTION 1 : ox_lib (par defaut)
    lib.notify({ title = title, description = message, type = type, duration = length })

    -- OPTION 2 : ESX
    -- ESX.ShowNotification(message)

    -- OPTION 3 : QBCore
    -- QBCore:Functions.Notify(message, type, length)

    -- OPTION 4 : mythic_notify
    -- exports['mythic_notify']:DoHudText(type, message, length)

end

-------------------------------------------------
--        SYSTEME DE CARBURANT
--        Modifiez ici pour utiliser votre
--        script de fuel prefere.
--
--        Decommenter UNE SEULE option ci-dessous
--        et commenter les autres avec --
-------------------------------------------------

function GetVehicleFuel(vehicle)

    -- OPTION 1 : Fuel natif GTA (par defaut)
    return GetVehicleFuelLevel(vehicle)

    -- OPTION 2 : ox_fuel
    -- return Entity(vehicle).state.fuel or GetVehicleFuelLevel(vehicle)

    -- OPTION 3 : LegacyFuel
    -- return exports['LegacyFuel']:GetFuel(vehicle)

    -- OPTION 4 : cdn-fuel
    -- return exports['cdn-fuel']:GetFuel(vehicle)

    -- OPTION 5 : ps-fuel
    -- return exports['ps-fuel']:GetFuel(vehicle)

end
