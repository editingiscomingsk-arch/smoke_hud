Config = {
    Locale = "fr",

    UseCruiseControl = true,
    UseInGameTimer = false,

    CruiseKey = "N",
    MenuCommand = "hud",

    UseOverlay = true,
    OverlayColor = "#4CAF50",

    Keys = {
    },
    Notify = function(title, message, type, length, icon, color)
        SendNotification(title, message, type, length, icon, color)
    end,
}
