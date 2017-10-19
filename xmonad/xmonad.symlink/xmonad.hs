import System.IO
import XMonad
import XMonad.Actions.CycleWS
import XMonad.Actions.SpawnOn
import XMonad.Config.Gnome
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Accordion
import XMonad.Layout.Named
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.SpawnOnce
import XMonad.StackSet(greedyView)

myStartupHook = do
  spawnOnce "xmodmap ~/.Xmodmap"
  spawnOnce "gnome-settings-daemon"

myConfig = gnomeConfig
  { startupHook = myStartupHook
  , terminal = "gnome-terminal"
  }

main = do
  mproc <- spawnPipe "/usr/bin/xmobar"
  xmonad myConfig
