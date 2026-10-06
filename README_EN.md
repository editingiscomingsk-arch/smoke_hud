# Smoke HUD V2

## Configuration

### Overlay (config.lua)

| Option | Description | Default |
|--------|-------------|---------|
| `UseOverlay` | Enable/Disable the server overlay (logo, ID, connection time) in the top right corner | `true` |
| `OverlayColor` | Overlay accent color (HEX format) | `#4CAF50` |

```lua
UseOverlay = true,
OverlayColor = "#4CAF50",
```

---

### Notifications (open/custom.lua)

The file `open/custom.lua` allows you to choose your notification system.
By default, the HUD uses its own built-in notification system.

To change it, open `open/custom.lua` and:
1. Comment the active line with `--`
2. Uncomment the desired option by removing `--`

Available options:

| System | Line to uncomment |
|--------|------------------|
| Built-in HUD (default) | `TriggerEvent("z_hud:sendNotify", ...)` |
| ESX | `ESX.ShowNotification(message)` |
| QBCore | `QBCore:Functions.Notify(message, type, length)` |
| ox_lib | `lib.notify({ title = title, ... })` |
| mythic_notify | `exports['mythic_notify']:DoHudText(type, message, length)` |

Example to use ox_lib:
```lua
function SendNotification(title, message, type, length, icon, color)
    -- TriggerEvent("z_hud:sendNotify", message, icon, color, length)
    lib.notify({ title = title, description = message, type = type, duration = length })
end
```
