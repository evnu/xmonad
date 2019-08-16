import           XMonad
import           XMonad.Actions.CycleWS
import           XMonad.Util.EZConfig
import           XMonad.Hooks.ManageDocks
import           XMonad.Hooks.DynamicLog

meta = mod4Mask

main = xmonad =<< xmobar myConfig

myConfig =
  def { modMask            = meta
      , terminal           = "alacritty"
      , layoutHook         = avoidStruts $ layouts
      , borderWidth        = 6
      , focusedBorderColor = "#42adf4"
      }
    `additionalKeys` keyBindings

layouts =
  (Mirror $ Tall 1 (3 / 100) (1 / 2)) ||| Tall 1 (3 / 100) (1 / 2) ||| Full

keyBindings =
  [ ((meta, xK_f)    , toggleWS)
  , ((meta, xK_Left) , prevWS)
  , ((meta, xK_Right), nextWS)
  ]
