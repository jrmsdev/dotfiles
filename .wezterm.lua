local wezterm = require 'wezterm'

return {
  --default_gui_startup_args = { "start", "--maximize" },
  enable_tab_bar = false,
  color_scheme = "Builtin",
  colors = {
    foreground = "#cccccc",
    background = "#111111",
    cursor_bg = "#cccccc",
    cursor_border = "#cccccc",
    visual_bell = "#333333",
  },
  font = wezterm.font("Monaco"),
  font_size = 18.0,
  line_height = 1.1,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  audible_bell = "Disabled",
  visual_bell = {
    fade_in_function = "EaseIn",
    fade_in_duration_ms = 30,
    fade_out_function = "EaseOut",
    fade_out_duration_ms = 30,
  },
}
