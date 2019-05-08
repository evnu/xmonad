import XMonad
import XMonad.Actions.CycleWS
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

meta = mod4Mask

main = xmonad =<< xmobar myConfig

myConfig = defaultConfig
    { modMask = meta
    , terminal = "urxvt"
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    }
    `additionalKeys` keyBindings

keyBindings =
    [
         ((meta, xK_f), toggleWS)
       , ((meta, xK_Left),  prevWS)
       , ((meta, xK_Right), nextWS)
    ]
