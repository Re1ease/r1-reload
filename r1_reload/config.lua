Config = {}

Config.Framework = "ESX"                --"ESX" or "STANDALONE"

Config.Debug = false                    --Displays information about the current weapon (prints to console).
Config.DebugRefresh = 5000              --How often should it refresh.

Config.Item = "CHANGE_ME"             --Database name of YOUR item that should be used as a weapon clip.

Config.SpamDelay = 1500                 --If trigger and error; How long delay until next trigger.
Config.CheckAndApplyAmmo = true         --Weapons that have ammo beyond the clip gets its ammo automatically removed.
Config.DisablePistolPunching = true     --Remove melee hits while wielding a weapon.

Config.NotificationStyle = "ESX"        --"ESX" or "CONSOLE"; Defaults back to console (print) if not ESX.
Config.Notifications = {
    FullClip = "You have a fully loaded clip in your weapon",
    NotEnough = "You don't have enough ammo boxes", --This is only if framework is "ESX"
}
