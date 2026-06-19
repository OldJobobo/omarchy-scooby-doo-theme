-- Scooby-Doo Hyprland theme values.
-- Theme-scoped compositor styling for Omarchy's Lua Hyprland loader.

local activeBorderGradient = {
	colors = {
		"rgb(8af3d1)",
		"rgb(ffef93)",
		"rgb(ffa63e)",
		"rgb(45b193)",
	},
	angle = 35,
}

local activeForegroundGradient = {
	colors = {
		"rgb(ffef93)",
		"rgb(8af3d1)",
		"rgb(ffa63e)",
	},
	angle = 35,
}

local inactiveBorderColor = "rgba(6e442acc)"
local activeShadowColor = "rgba(45b19335)"
local inactiveShadowColor = "rgba(140c0875)"

hl.config({
	general = {
		border_size = 3,
		gaps_in = 5,
		gaps_out = 12,
		col = {
			active_border = activeBorderGradient,
			inactive_border = inactiveBorderColor,
		},
	},
	group = {
		col = {
			border_active = activeForegroundGradient,
			border_inactive = inactiveBorderColor,
		},
	},
	decoration = {
		rounding = 0,
		dim_inactive = true,
		dim_strength = 0.08,
		blur = {
			enabled = true,
			size = 6,
			passes = 2,
			ignore_opacity = true,
			new_optimizations = true,
			xray = true,
			noise = 0.025,
			contrast = 1.12,
			brightness = 0.55,
			vibrancy = 0.16,
			vibrancy_darkness = 0.72,
		},
		shadow = {
			enabled = true,
			range = 20,
			render_power = 4,
			sharp = false,
			color = activeShadowColor,
			color_inactive = inactiveShadowColor,
			offset = "0 4",
			scale = 1.0,
		},
	},
	animations = {
		enabled = true,
	},
})

hl.curve("scoobyLinear", {
	type = "bezier",
	points = { { 0, 0 }, { 1, 1 } },
})

hl.curve("mysteryChase", {
	type = "bezier",
	points = { { 0.25, 0.9 }, { 0.1, 1 } },
})

hl.curve("scoobySnap", {
	type = "bezier",
	points = { { 0.18, 1.0 }, { 0.28, 1.0 } },
})

hl.curve("hauntedFade", {
	type = "bezier",
	points = { { 0.38, 0.0 }, { 0.14, 1.0 } },
})

hl.curve("mysteryDrift", {
	type = "bezier",
	points = { { 0.32, 0.78 }, { 0.18, 1.0 } },
})

hl.animation({
	leaf = "global",
	enabled = true,
	speed = 8,
	bezier = "mysteryChase",
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 5,
	bezier = "mysteryDrift",
})

hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 5,
	bezier = "scoobySnap",
	style = "popin 12%",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 4,
	bezier = "hauntedFade",
	style = "popin 86%",
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 5,
	bezier = "mysteryDrift",
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 6,
	bezier = "hauntedFade",
})

hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 80,
	bezier = "scoobyLinear",
	style = "loop",
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 4,
	bezier = "hauntedFade",
})

hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 4,
	bezier = "hauntedFade",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 3,
	bezier = "hauntedFade",
})

hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 5,
	bezier = "mysteryChase",
	style = "slidefade",
})

hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 5,
	bezier = "scoobySnap",
	style = "slidefade",
})

hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 4,
	bezier = "hauntedFade",
	style = "fade",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "mysteryChase",
	style = "slidefade",
})

hl.animation({
	leaf = "specialWorkspace",
	enabled = true,
	speed = 4,
	bezier = "mysteryDrift",
	style = "slidevert",
})
