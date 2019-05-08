import XMonad
import XMonad.Actions.CycleWS
import XMonad.Util.EZConfig

meta = mod4Mask

main = xmonad $ defaultConfig
    { modMask = meta
    , terminal = "urxvt"
    }
    `additionalKeys` keyBindings

keyBindings =
    [
         ((meta, xK_f), toggleWS)
       , ((meta, xK_Left),  prevWS)
       , ((meta, xK_Right), nextWS)
    ]
