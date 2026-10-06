# Smoke HUD V2

## Configuration

### Overlay (config.lua)

| Option | Description | Default |
|--------|-------------|---------|
| `UseOverlay` | Activer/Desactiver l'overlay serveur (logo, ID, temps de connexion) en haut a droite | `true` |
| `OverlayColor` | Couleur d'accent de l'overlay (format HEX) | `#4CAF50` |

```lua
UseOverlay = true,
OverlayColor = "#4CAF50",
```

---

### Notifications (open/custom.lua)

Le fichier `open/custom.lua` permet de choisir votre systeme de notification.
Par defaut, le HUD utilise son propre systeme de notification interne.

Pour changer, ouvrez `open/custom.lua` et :
1. Commentez la ligne active avec `--`
2. Decommentez l'option souhaitee en retirant le `--`

Options disponibles :

| Systeme | Ligne a decommenter |
|---------|-------------------|
| HUD Interne (defaut) | `TriggerEvent("z_hud:sendNotify", ...)` |
| ESX | `ESX.ShowNotification(message)` |
| QBCore | `QBCore:Functions.Notify(message, type, length)` |
| ox_lib | `lib.notify({ title = title, ... })` |
| mythic_notify | `exports['mythic_notify']:DoHudText(type, message, length)` |

Exemple pour utiliser ox_lib :
```lua
function SendNotification(title, message, type, length, icon, color)
    -- TriggerEvent("z_hud:sendNotify", message, icon, color, length)
    lib.notify({ title = title, description = message, type = type, duration = length })
end
```
