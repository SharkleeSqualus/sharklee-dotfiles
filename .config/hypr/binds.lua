---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local ipc = "noctalia msg "
--Noctalia KEYBINDINGSShe is by far the prettiest girl I have ever known. Because of her, I might consider rejoining the taekwondo club. Infact she is the main reason I even join it and have some brief interests on martial arts in the first place. Again, she is the prettiest girl I have ever known. Atleast I have some **Exclusive** photo of her on my phone, infact, probably the only girl I have photos. However, very pitty I lost her voice records along with that damn Google account, all because I was honest about my ages, her voice was just sweet sweet sweet.

hl.bind(mainMod .. "+ space", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")) --launcher
hl.bind(mainMod .. "+ B", hl.dsp.exec_cmd("noctalia msg bar-toggle")) --hide/show bar
hl.bind(mainMod .. "+ T", hl.dsp.exec_cmd("noctalia msg panel-toggle session")) --open session menu
hl.bind(mainMod .. "+ N", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard")) --open clibpoard
--hl.bind(mainMod .. "+ period", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center notifications")) --open notifications
hl.bind(mainMod .. "+ Y", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center ")) --open control-center
hl.bind(mainMod .. "+ W", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper")) --wallpaper browser
hl.bind(mainMod .. "+ A", hl.dsp.exec_cmd("noctalia msg media toggle"))
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd(ipc .. "volume-up 5"), { repeating = true })
hl.bind(mainMod .. "+ D", hl.dsp.exec_cmd(ipc .. "volume-down 5"), { repeating = true })
hl.bind(mainMod .. "+ F", hl.dsp.exec_cmd(ipc .. "brightness-up 5"), { repeating = true })
hl.bind(mainMod .. "+ S", hl.dsp.exec_cmd(ipc .. "brightness-down 5"), { repeating = true })
hl.bind(mainMod .. "+ P", hl.dsp.exec_cmd("noctalia msg screenshot-region"))
hl.bind(mainMod .. "+ SHIFT + P", hl.dsp.exec_cmd("noctalia msg screenshot-screen"))
--Fullscreen mode, since I have enable smart gap,
hl.bind(mainMod .. "+ U", hl.dsp.exec_cmd("rofi -show run"))
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. "+ Return", hl.dsp.exec_cmd("kitty")) --open terminal
hl.bind(mainMod .. "+ M", hl.dsp.window.float({ action = "toggle" }))
--hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. "+ R", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(mainMod .. "+ C", hl.dsp.window.close())
-- Move focus with mainMod + vim-key
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))
-- Move focus around the active workspace with Super Shift and vim direction
--hl.bind(mainMod .. "+ R", hl.dsp.window.fullscreen({ mode = "maximized", action = "set" }))
hl.bind(mainMod .. "+ SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. "+ SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind(mainMod .. "+ SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. "+ SHIFT + L", hl.dsp.window.move({ direction = "r" }))
-- === Manual Sizing ===
hl.bind(mainMod .. "+ minus", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. "+ equal", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. "+ SHIFT + minus", hl.dsp.window.resize({ x = 0, y = -100, relative = true }), { repeating = true })
hl.bind(mainMod .. "+ SHIFT + equal", hl.dsp.window.resize({ x = 0, y = 100, relative = true }), { repeating = true })
-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
-- Group window
--hl.bind("SUPER + G", hl.dsp.group.toggle())
--hl.bind("SUPER", "Tab", hl.dsp.group.change_active())
--hl.bind("SUPER", "TAB", hl.dsp.overview.toggle()
-- Example special workspace (scratchpad)
--hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + o", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + i", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
