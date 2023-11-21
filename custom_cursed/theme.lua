--------------------------------------
--  "Cursed Custom" awesome theme   --
--    By Declan C.                  --
--------------------------------------

local themes_path = "/home/declan/.config/awesome/themes/" --require("gears.filesystem").get_themes_dir()
local path_custom = themes_path .. "custom/"
local pictures_path = "/home/declan/Pictures/"
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Helper Functions
local function get_files(dir)
    local files = {}
    for file in io.popen("ls -pa " .. dir .. " | grep -v /"):lines() do
        files[#files + 1] = file
    end

    return files
end

local function select_random(array)
    return array[math.random(1, #array)]
end

local function generate_random_rgb()
    return string.format("#%X%X%X%X", math.random(0, 255), math.random(0, 255), math.random(0, 255), math.random(0, 255))
end
-- }}}

-- {{{ Main
local pictures = get_files(pictures_path)

local theme = {}
theme.wallpaper = pictures_path .. select_random(pictures) -- path_custom .. "wallpaper.jpg"
-- }}}

-- {{{ Styles
theme.font      = "Terminus 14" -- "sans 8"

-- {{{ Colors
theme.fg_normal  = generate_random_rgb() --"#FFFFFF" --"#DCDCCC"
theme.fg_focus   = generate_random_rgb() --"#FF0000" --"#F0DFAF"
theme.fg_urgent  = generate_random_rgb() --"#6F0000" --"#CC9393"
theme.bg_normal  = generate_random_rgb() --"#000000" -- "#3F3F3F"
theme.bg_focus   = generate_random_rgb() --"#000000" --"#3F3F3F" --"#1E2320"
theme.bg_urgent  = generate_random_rgb() --"#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = generate_random_rgb() --"#1F1F1F" --"#3F3F3F"
theme.border_focus  = generate_random_rgb() --"#3F3F3F" --"#6F6F6F"
theme.border_marked = generate_random_rgb() --"#6F0000" --"#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = generate_random_rgb() --"#000000" --"#3F3F3F"
theme.titlebar_bg_normal = generate_random_rgb() --"#000000" --"#1F1F1F" -- "#3F3F3F"
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
theme.tooltip_border_color = generate_random_rgb() --"#1F1F1F"

-- {{{ Mouse finder
theme.mouse_finder_color = generate_random_rgb() --"#CC9393"
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
theme.taglist_squares_sel   = pictures_path .. select_random(pictures) --path_custom .. "taglist/squarefz.png"
theme.taglist_squares_unsel = pictures_path .. select_random(pictures) --path_custom .. "taglist/squarez.png"
theme.taglist_squares_resize = "true"
-- }}}

-- {{{ Misc
theme.awesome_icon           = pictures_path .. select_random(pictures) --path_custom .. "red_lambda.png"
theme.menu_submenu_icon      = pictures_path .. select_random(pictures) --themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_floating   = pictures_path .. select_random(pictures) --path_custom .. "layouts/floating.png"
theme.layout_tile       = pictures_path .. select_random(pictures) --path_custom .. "layouts/tile.png"
theme.layout_tileleft   = pictures_path .. select_random(pictures) --path_custom .. "layouts/tileleft.png"
theme.layout_tilebottom = pictures_path .. select_random(pictures) --path_custom .. "layouts/tilebottom.png"
theme.layout_tiletop    = pictures_path .. select_random(pictures) --path_custom .. "layouts/tiletop.png"
theme.layout_fairv      = pictures_path .. select_random(pictures) --path_custom .. "layouts/fairv.png"
theme.layout_fairh      = pictures_path .. select_random(pictures) --path_custom .. "layouts/fairh.png"
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
theme.titlebar_close_button_focus  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = pictures_path .. select_random(pictures) --path_custom .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus_press = pictures_path .. select_random(pictures) --path_custom .. "titlebar/close_focus_press.png"
theme.titlebar_close_button_focus_hover = pictures_path .. select_random(pictures) --path_custom .. "titlebar/close_focus_press.png"


theme.titlebar_minimize_button_normal = pictures_path .. select_random(pictures) --path_custom .. "titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/minimize_focus.png"
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

theme.titlebar_maximized_button_focus_active  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active_press  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_focus_active_hover  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive_press  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_focus_inactive_hover  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/maximized_focus_active.png"

theme.titlebar_floating_button_focus_active  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active_hover = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_focus_active_press = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_focus_inactive  = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive_hover = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_focus_inactive_press = pictures_path .. select_random(pictures) --path_custom .. "titlebar/floating_focus_active.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
