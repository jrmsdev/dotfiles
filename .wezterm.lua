local wezterm = require 'wezterm'

return {
  color_scheme = "Builtin",
  colors = {
    foreground = "#cccccc",
    background = "#111111",
    cursor_bg = "#cccccc",
    cursor_border = "#cccccc",
  },
  font = wezterm.font("Monaco"),
  font_size = 18.0,
  line_height = 1.2,
  cursor_style = "BlinkingBar",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
}
