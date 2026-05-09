local wezterm = require 'wezterm'
local config  = wezterm.config_builder()

-- ── Window ────────────────────────────────────────────────────────────────────
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar            = true
config.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }

-- ── Background (Acrylic) ──────────────────────────────────────────────────────
config.win32_system_backdrop       = 'Acrylic'
config.window_background_opacity   = 0.3

-- ── Theme ─────────────────────────────────────────────────────────────────────
config.color_scheme = 'Rosé Pine (Gogh)'

-- ── Tab Bar (inherits theme, blends with acrylic) ─────────────────────────────
config.window_frame = {
  font      = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Bold' }),
  font_size = 12.0,
  active_titlebar_bg   = 'rgba(0,0,0,0)',
  inactive_titlebar_bg = 'rgba(0,0,0,0)',
}

-- ── Fonts ─────────────────────────────────────────────────────────────────────
config.font      = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 13.0

-- ── Shell ─────────────────────────────────────────────────────────────────────
config.default_prog = { 'pwsh.exe' }

-- ── Leader ────────────────────────────────────────────────────────────────────
config.leader = { key = 'Space', mods = 'CTRL', timeout_milliseconds = 1000 }

-- ── Keybindings ───────────────────────────────────────────────────────────────
config.keys = {
  { key = 'o', mods = 'CTRL',   action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL',   action = wezterm.action.CloseCurrentTab { confirm = false } },
  { key = 'h', mods = 'LEADER', action = wezterm.action.SplitVertical   { domain = 'CurrentPaneDomain' } },
  { key = 'v', mods = 'LEADER', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'f', mods = 'LEADER', action = wezterm.action.ToggleFullScreen },
  { key = 'c', mods = 'LEADER', action = wezterm.action.EmitEvent 'center-window' },
  { key = 'm', mods = 'LEADER', action = wezterm.action.Hide },
}

-- ── Mouse Bindings ────────────────────────────────────────────────────────────
config.mouse_bindings = {
  {
    event  = { Drag = { streak = 1, button = 'Left' } },
    mods   = 'SHIFT',
    action = wezterm.action.StartWindowDrag,
  },
}

-- ── Center Window ─────────────────────────────────────────────────────────────
wezterm.on('center-window', function(window)
  window:set_position(183, 54)
  window:set_inner_size(1000, 630)
end)

-- ── Dynamic Decorations (integrated buttons only with 2+ tabs) ────────────────
wezterm.on('update-status', function(window)
  local overrides = {}
  if #window:mux_window():tabs() >= 2 then
    overrides.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
  else
    overrides.window_decorations = 'RESIZE'
  end
  window:set_config_overrides(overrides)
end)

return config
