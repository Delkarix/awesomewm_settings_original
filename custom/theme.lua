-------------------------------
--  "Custom" awesome theme   --
--    By Declan C.           --
-------------------------------

local themes_path = "/home/declan/.config/awesome/themes/" --require("gears.filesystem").get_themes_dir()
local path_custom = themes_path .. "custom/"
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
theme.wallpaper = path_custom .. "wallpaper.jpg"
-- }}}

-- {{{ Styles
theme.font      = "Terminus 14" -- "sans 8"

-- {{{ Colors
theme.fg_normal  = "#FFFFFF" --"#DCDCCC"
theme.fg_focus   = "#FF0000" --"#F0DFAF"
theme.fg_urgent  = "#6F0000" --"#CC9393"
theme.bg_normal  = "#000000" -- "#3F3F3F"
theme.bg_focus   = "#000000" --"#3F3F3F" --"#1E2320"
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#1F1F1F" --"#3F3F3F"
theme.border_focus  = "#3F3F3F" --"#6F6F6F"
theme.border_marked = "#6F0000" --"#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#000000" --"#3F3F3F"
theme.titlebar_bg_normal = "#000000" --"#1F1F1F" -- "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#FFFF00"--"#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}
theme.tooltip_border_width = dpi(1)
theme.tooltip_border_color = "#1F1F1F"

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(20) --dpi(15)
theme.menu_width  = dpi(200)--dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = path_custom .. "taglist/squarefz.png"
theme.taglist_squares_unsel = path_custom .. "taglist/squarez.png"
theme.taglist_squares_resize = "true"
-- }}}

-- {{{ Misc
theme.awesome_icon           = path_custom .. "red_lambda.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_floating   = path_custom .. "layouts/floating.png"
theme.layout_tile       = path_custom .. "layouts/tile.png"
theme.layout_tileleft   = path_custom .. "layouts/tileleft.png"
theme.layout_tilebottom = path_custom .. "layouts/tilebottom.png"
theme.layout_tiletop    = path_custom .. "layouts/tiletop.png"
theme.layout_fairv      = path_custom .. "layouts/fairv.png"
theme.layout_fairh      = path_custom .. "layouts/fairh.png"
--[[theme.layout_spiral     = path_custom .. "layouts/spiral.png"
theme.layout_dwindle    = path_custom .. "layouts/dwindle.png"
theme.layout_max        = path_custom .. "layouts/max.png"
theme.layout_fullscreen = path_custom .. "layouts/fullscreen.png"
theme.layout_magnifier  = path_custom .. "layouts/magnifier.png"
theme.layout_cornernw   = path_custom .. "layouts/cornernw.png"
theme.layout_cornerne   = path_custom .. "layouts/cornerne.png"
theme.layout_cornersw   = path_custom .. "layouts/cornersw.png"
theme.layout_cornerse   = path_custom .. "layouts/cornerse.png"
--]]
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = path_custom .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = path_custom .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus_press = path_custom .. "titlebar/close_focus_press.png"
theme.titlebar_close_button_focus_hover = path_custom .. "titlebar/close_focus_press.png"


theme.titlebar_minimize_button_normal = path_custom .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = path_custom .. "titlebar/minimize_focus.png"
--[[
theme.titlebar_ontop_button_focus_active  = themes_path .. "custom/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "custom/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "custom/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "custom/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "custom/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "custom/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "custom/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "custom/titlebar/sticky_normal_inactive.png"
--]]

theme.titlebar_maximized_button_focus_active  = path_custom .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = path_custom .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active_press  = path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_focus_active_hover  = path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = path_custom .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive_press  = path_custom .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_focus_inactive_hover  = path_custom .. "titlebar/maximized_focus_active.png"

theme.titlebar_floating_button_focus_active  = path_custom .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = path_custom .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active_hover = path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_focus_active_press = path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_focus_inactive  = path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = path_custom .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive_hover = path_custom .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_focus_inactive_press = path_custom .. "titlebar/floating_focus_active.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
