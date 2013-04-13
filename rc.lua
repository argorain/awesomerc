-- AWESOME CONFIG
-- Author: Tomas Pruzina (tomas.pruzina@gmail.com)
-- Description: Awesome config, tested on Gentoo's awesome 3.5.1

-- Standard awesome library
local gears = require("gears")
awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")

-- EXTENSIONS (functions etc)
local mykb  = require("myrc.kb_layout") -- change keyboard layout
local myro  = require("myrc.run_once")  -- run app as long it's not running already
local myerr = require("myrc.error")     -- error reporting

-- THEME
beautiful.init("/usr/share/awesome/themes/default/theme.lua")
--local mywp = require("settings.wallpaper")

-- VARIABLES
terminal = "urxvtc"
editor = "vim"
editor_cmd = terminal .. " -e " .. editor
configpath="/home/"..os.getenv("USER").."/.config/awesome/"


-- KEYBINDED COMMANDS (see settings/custom_binds.lua)
hibernate_cmd = "/usr/sbin/hibernate-ram"
mute_cmd = "/home/tomas/bin/mute"
brightness_cmd = "/usr/local/sbin/brightness"
raise_volume_cmd = "amixer -q set Master 4+"
lower_volume_cmd = "amixer -q set Master 4-"

-- Default modkey (Mod4 = WinKey)
modkey = "Mod4"
altkey = "#94"

-- TAGS (screens) && LAYOUTS
require("settings.tags")

-- MENUS (menubar, etc)
require("settings.menus")

-- Default wibox stuff (gentoo config)
require("stock.wiboxrc")

-- Key && mouse bindings
require("stock.binds")
require("settings.custom_binds")
root.keys(globalkeys) -- this actually sets the keys

-- WINDOW RULES
-- rules per app (placement, floating, etc)
require("settings.window_rules")

-- SIGNALs function to execute when a new client appears.
require("stock.signals")

-- STARTUP apps
require("settings.startup")

