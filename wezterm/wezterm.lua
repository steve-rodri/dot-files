local wezterm = require 'wezterm'
return {
  -- color_scheme = 'Catppuccin Mocha',
  -- color_scheme = 'Catppuccin Macchiato',
  -- color_scheme = 'Catppuccin Frappe',
  -- color_scheme = "OneDark (Gogh)",
  -- color_scheme = "Batman",
  color_scheme = 'Tokyo Night',
  enable_tab_bar = false,
  font_size = 19.0,
  font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true }),
  macos_window_background_blur = 30,
  window_background_opacity = 1.0,
  -- window_background_opacity = 0.98,
  -- window_background_opacity = 0.92,
  -- window_background_opacity = 0.78,
  -- window_background_opacity = 0.20,
  window_decorations = 'RESIZE',
  keys = {
    {
      key = 'f',
      mods = 'CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
  mouse_bindings = {
    -- Ctrl-click will open the link under the mouse cursor
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'CTRL',
      action = wezterm.action.OpenLinkAtMouseCursor,
    },
  },
}
