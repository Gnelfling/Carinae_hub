--[[
	SIRIUS / TERRAFORM  —  v3.0 (UNIFIED FORGE STUDIO, EXOWORLD SIMULATOR, ATLAS & LABS)
	====================================================================================
	• Built on the exact UI_old.txt ("SiriusTerraformForge") 1120×780 anodized architecture:
	    - Header with rotating "S" badge, Player Headshot Welcome Bar & Live Clock, Status Pill
	    - 11-Tab Sidebar with 11 Distinct Category Colors, Telemetry & Hotkeys cards
	    - Inline Terrain Live Top-Down Map + West→East Cross-Section + 4 Animated Metric Cards
	    - Floating Top 3D Sculpt HUD Bar + Bottom Progress/ETA Footer + Shimmering Generate CTA
	    - Elevated machined glass top-rim highlights, dual-corner aurora wash & Special Button gradients
	• Cinematic Menu Transitions & Window Lifecycle:
	    - Smooth menu fade in and fade out on appear, disappear, studio toggle, and teardown
	    - Robust Rollup Minimize/Maximize: collapses to header bar and restores full 1120×780 cleanly
	    - Lower Screen Locked Taskbar Dock: dedicated [⤓] button docks the studio into a sleek pill
	      at the lower screen position with quick restore, 3D brush toggle, live telemetry & close
	• Enhanced 3D Planet Simulator ("Planet" Tab) + 14 Exoworld Archetypes & Dynamic Physics:
	    - 14 Planetary Archetypes: Gaia, Ashen, Volcanic, Cryo, Dune, Pelagic, Xeno, Fractured,
	      Tartarus, Boreas, Oceanus, Ares, Sylva, Erebus
	    - Auto Skybox Cubemap Switching adapting dynamically to the selected planetary class:
	        * Volcanic / Lava 1: 123450674043674, 84892181423810, 96057940895723, 115474632610950, 96985335287535, 87015174865972
	        * Volcanic 2 / Magma 2: 9701866137, 9701873352, 9701856260, 9701862744, 9701870276, 9701852487
	        * Heavy Volcanic 3 / Magma 3: 11730840088, 11730842997, 11730849615, 11730852920, 11730855491, 11730857150
	        * Venusian Yellowish: 83819020062581, 127478764151479, 134341176119465, 75860781528753, 120579571549952, 137128137492980
	        * Ashen / Gray: 10368956403, 10368977332, 10368932800, 10368945501, 10368965543, 10368926442
	        * Biolume / Purple Alien: 85659192210345, 125800208970549, 122865239695599, 84079751210910, 91605229162923, 93040478228924
	        * Alien Earthly / Earthly 2: 70745689, 70745650, 70745654, 70745673, 70745661, 70745685
	        * Ice Planet: 18971368068, 18971365073, 18971357616, 18971376424, 18971378277, 18971370215
	        * Remnant Planet: 155444384, 149677032, 155444397, 155444368, 155444372, 155444404
	        * Gaia Terran / Earthly: 654808887, 654809167, 654808760, 654809248, 654809043, 654808635
	        * Earthly Planet: 18971655364, 18971661151, 18971643833, 18971648315, 18971650172, 18971658363
	        * Desert / Mars: 14362084333, 14362053475, 14362090310, 14362098512, 14362105403, 14362064903
	        * Deep Space Cosmos: 243002141, 243002345, 243002245, 243002198, 243002287, 243002395
	    - Multi-Class Planetary Audio Suites & Seismic Quakes:
	        * Earthly loop: 9112801967
	        * Biolume / Alien loop: 139668444963836
	        * Biolume / Earthly loop: 139786277679262
	        * Watery / Ocean: 137086424700822
	        * Desert / Mars wind: 143501865
	        * Snowy / Ice: 139725280625973 & 143501865
	        * Heavy Snow / Storm Gale loop: 123731555496199
	        * Volcanic lava ambient loop: 74613804928235 & 213203829
	        * Heavy Volcanic / Magma chamber loop: 9085909202 & 213203829
	        * Volcanic periodic 5–10s rumble: 5870958093 with smooth camera screen shake
	        * Volcanic periodic 3–6s crackle: 95838414628747
	    - Multi-Layer 3D Viewport Planetarium:
	        * Pulsing Magma Core, Lithosphere Crust Sphere, 24 Fibonacci Tangent Tectonic Plates
	        * 6 Rim-Ringed Volcanic Calderas, Reflective Hydrosphere Ocean, Polar Glacier Caps
	        * Outer Atmosphere Halo, Swirling Great Red Spot Storm Vortex, Polar Aurora Crown
	        * Counter-Rotating 3D Cloud Belts, 3-Band Cassini Ring System, Dual Keplerian Moons
	    - Dynamic Planetary Physics Simulation:
	        * Live Surface Gravity (0.10g–3.00g) & Atmospheric Circulation Wind (0–80 st/s)
	        * Planetary Coriolis Wind Drift locomotion vector simulation
	        * Low-G Lunar Space Hop with inverse-square jump impulse scaling
	        * Dynamic Hydrosphere Tidal Swell with smooth wave oscillation
	        * Solar Day Cycle auto-rotation advancing Lighting.ClockTime
	• 576-Combination Synthesizer Matrix ("Synth" Tab):
	    - 24 Primary Domains × 24 Structural Features = 576 Procedural Terrain Combinations
	    - Dedicated QOL Suite: Randomize Seed, Re-Roll Domain Only, Re-Roll Feature Only, Copy Synth Code
	    - Procedural Modulators: Ridge Sharpness, Terrace Bands, Moisture Shift, Cave Threshold
	    - 8-Card Discovery Deck with instant slot loading and deck regeneration
	• 128-Bar High-Precision Performance Telemetry ("Perf" Tab):
	    - 128-sample ring buffer displaying ~2.1 seconds of frametime history
	    - Real-time jitter calculation (±ms) and 1% low FPS computation
	• Aspect-Locked Smooth-Zoom Cartographic Atlas ("Atlas" Tab):
	    - Fixed 1:1 square cartographic canvas (384×384) with UIAspectRatioConstraint
	    - Immune to window resizing and horizontal stretching
	    - Butter-smooth zoom interpolation (1.0× to 12.0×) with fine 1.18× mouse wheel steps
	    - Adaptive A1–D4 / A1–P16 Alphanumeric Grid aligned with cartographic sectors
	• 3D Orbital Telescope & Space Tracking ("Space" Tab):
	    - Real-Time Keplerian Orbit Viewport with 3D Earth, Cloud Belts, Orbit Ring, Perigee/Apogee & Nadir Beacon
	    - Interactive Multi-Cam: 360° Mouse Orbit Drag, Wheel Zoom, Nadir Surface Lock & Prograde Chase Cam
	    - RCS Thruster Console: Prograde (+50 st/s), Retrograde (-50 st/s), Boost (+1k), Lower (-1k) & Kill Drift (Zero-V)
	    - Keplerian Parking Circularization (11,500 st) & Orbital Plane Inclination Cycling (0°, 28.5°, 51.6°, 90°)
	    - Nadir Surface Recon Scanner: Ground Elevation, Biome & Material Detection, Pressure & Lapse Rates
	    - Deployable Scientific Fleet: Launch Orbital Probes & Comms Relays into space with telemetry beacon lights
	    - EVA Spacewalk Suit Thrusters, Adjustable Orbital Ceiling Governor & Space Vacuum Audio Filtering
	    - Automatic Surface Lockout: Deactivated while on the surface; activates in orbital vacuum
	• Experimental "Labs" Features:
	    - High-Altitude Atmospheric Simulation & Orbital Ascent Engine:
	        * Smooth Troposphere → Mesosphere → Deep Space (10,000 st) vacuum boundary
	        * Instantaneous 12.0 ClockTime & Deep Space Starfield skybox swap in space
	        * True Zero-G Microgravity Float & RCS Flight (BodyVelocity vertical lock preventing any falling)
	        * 14,000-Stud Orbital Ceiling Limit: Exceeding 14k studs forces atmospheric re-entry & plasma burn
	        * Flipbook Explosion Re-Entry VFX: 8x8 flipbook plasma emitter (15194500627), 8-brightness orange torso light,
	          smooth atmospheric spool-up audio (9104875504) with volume fade-in, low-to-normal pitch sweep & continuous screen shake
	        * Full Game Audio Hard Vacuum Muting: Automatically silences all game audio in deep space
	        * Multi-Layer Orbital Earth Backdrop (22,000-stud curved planetary horizon model placed at 2,000 st altitude,
	          5,000 studs forward, with continents, cloud cover, pastel neon atmosphere limb & slow rotation)
	        * Refined Orbital Probe Signals: Rotating dishes, pulsing point lights, 3D telemetry radio audio & nadir scan beams
	    - Sylvan Canopy #1 Modular Trees with Adaptive Terrain Metrics Sync
	    - 14-Layer Volumetric Clouds with 20,048-stud stretch beams and altitude anchoring
	• Luau Register-Safe: 81 main-block locals (far below Luau's 200 local register limit)
]]

do
	----------------------------------------------------------------------------------------------------
	-- 1. SERVICES, ENVIRONMENT, LIGHTING BACKUP & RE-RUN SAFETY
	----------------------------------------------------------------------------------------------------
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local GuiService = game:GetService("GuiService")
	local AssetService = game:GetService("AssetService")
	local InsertService = game:GetService("InsertService")
	local Lighting = game:GetService("Lighting")

	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		error("[Sirius Terraform] Must run on the client (Players.LocalPlayer is nil).", 0)
	end
	local Terrain = workspace:FindFirstChildOfClass("Terrain")
	if not Terrain then
		error("[Sirius Terraform] workspace.Terrain was not found.", 0)
	end
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

	local SESSION_KEY = "SiriusTerraformSession"
	local previousSession = shared[SESSION_KEY]
	if type(previousSession) == "table" and type(previousSession.cleanup) == "function" then
		pcall(previousSession.cleanup)
	end
	local session = {
		history = (type(previousSession) == "table" and type(previousSession.history) == "table") and previousSession.history or {},
		brushHistory = (type(previousSession) == "table" and type(previousSession.brushHistory) == "table") and previousSession.brushHistory or {},
		synthDeck = (type(previousSession) == "table" and type(previousSession.synthDeck) == "table") and previousSession.synthDeck or nil,
		originalMaterialColors = (type(previousSession) == "table" and type(previousSession.originalMaterialColors) == "table") and previousSession.originalMaterialColors or nil,
		originalLighting = (type(previousSession) == "table" and type(previousSession.originalLighting) == "table") and previousSession.originalLighting or nil,
		waypoints = (type(previousSession) == "table" and type(previousSession.waypoints) == "table") and previousSession.waypoints or {},
	}
	shared[SESSION_KEY] = session

	if not session.originalLighting then
		local origAtmo = Lighting:FindFirstChildOfClass("Atmosphere")
		local origSky = Lighting:FindFirstChildOfClass("Sky")
		session.originalLighting = {
			Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
			Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
			ColorShift_Top = Lighting.ColorShift_Top, ColorShift_Bottom = Lighting.ColorShift_Bottom,
			ExposureCompensation = Lighting.ExposureCompensation,
			FogColor = Lighting.FogColor, FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart,
			GlobalShadows = Lighting.GlobalShadows,
			Gravity = workspace.Gravity, GlobalWind = workspace.GlobalWind,
			AtmoDensity = origAtmo and origAtmo.Density or nil,
			AtmoOffset = origAtmo and origAtmo.Offset or nil,
			AtmoColor = origAtmo and origAtmo.Color or nil,
			AtmoDecay = origAtmo and origAtmo.Decay or nil,
			AtmoGlare = origAtmo and origAtmo.Glare or nil,
			AtmoHaze = origAtmo and origAtmo.Haze or nil,
			SkyboxBk = origSky and origSky.SkyboxBk or nil,
			SkyboxDn = origSky and origSky.SkyboxDn or nil,
			SkyboxFt = origSky and origSky.SkyboxFt or nil,
			SkyboxLf = origSky and origSky.SkyboxLf or nil,
			SkyboxRt = origSky and origSky.SkyboxRt or nil,
			SkyboxUp = origSky and origSky.SkyboxUp or nil,
			CelestialBodiesShown = origSky and origSky.CelestialBodiesShown or nil,
			StarCount = origSky and origSky.StarCount or nil,
		}
	end

	----------------------------------------------------------------------------------------------------
	-- 2. CONSOLIDATED CONSTANTS, AUDIO IDS & 10-CATEGORY SIRIUS PALETTE
	----------------------------------------------------------------------------------------------------
	local K = {
		VERSION = "2.7",
		GUI_NAME = "SiriusTerraformForge",
		BOUNDS_PART_NAME = "SiriusTerraformBounds",
		WIREFRAME_NAME = "SiriusTerraformWireframe",
		BRUSH_WIRE_NAME = "SiriusTerraformBrushCursor",
		TREES_FOLDER = "SiriusTerraformTrees",
		CLOUDS_FOLDER = "SiriusTerraformClouds",
		SOUND_CLICK = "rbxassetid://98797174600699",
		SOUND_COMPLETE = "rbxassetid://138118203571469",
		SOUND_SPECIAL = "rbxassetid://117649901456711",
		VOXEL = 4,
		MIN_Y = -64,
		SURFACE_BASE = 4,
		SUBSOIL_DEPTH = 14,
		BASE_FREQ = 0.0046,
		WARP_STUDS = 52,
		MAX_SNAP_VOXELS = 28000000,
		HISTORY_LIMIT = 6,
		BRUSH_HIST_LIMIT = 12,
		BRUSH_BLOCK_VOX = 16,
		SYNTH_DECK_SIZE = 8,
		CONFIRM_WINDOW = 4,
		PREVIEW_GRID = 40,
		ATLAS_GRID = 52,
		PROFILE_BARS = 56,
		WINDOW_W = 1120,
		WINDOW_H = 780,
		HEADER_H = 74,
		CANCELLED = "SIRIUS_TERRAFORM_CANCELLED",
	}

	local FONT, FONT_MED, FONT_BOLD = Enum.Font.Gotham, Enum.Font.GothamMedium, Enum.Font.GothamBold
	local M = Enum.Material

	local C = {
		bg = Color3.fromRGB(11, 12, 14),
		panel = Color3.fromRGB(17, 19, 23),
		panelHi = Color3.fromRGB(25, 28, 34),
		card = Color3.fromRGB(24, 26, 31),
		cardHover = Color3.fromRGB(33, 36, 43),
		inset = Color3.fromRGB(12, 13, 16),
		stroke = Color3.fromRGB(46, 51, 59),
		strokeHi = Color3.fromRGB(92, 100, 114),
		strokeLo = Color3.fromRGB(26, 28, 34),
		text = Color3.fromRGB(244, 246, 250),
		muted = Color3.fromRGB(154, 160, 172),
		dim = Color3.fromRGB(94, 100, 112),

		-- 10 Distinct Tab Category Accent Triads
		accent = Color3.fromRGB(0, 174, 130),     accentSoft = Color3.fromRGB(13, 70, 54),  accentPale = Color3.fromRGB(174, 248, 224), -- 1. Terrain (Emerald)
		planet = Color3.fromRGB(255, 124, 68),    planetSoft = Color3.fromRGB(78, 36, 20),  planetPale = Color3.fromRGB(255, 210, 180), -- 2. Planet (Solar Coral)
		sky    = Color3.fromRGB(76, 182, 248),    skySoft    = Color3.fromRGB(18, 56, 86),  skyPale    = Color3.fromRGB(196, 236, 255), -- 3. Atlas (Tactical Sky)
		cyan   = Color3.fromRGB(34, 198, 186),    cyanSoft   = Color3.fromRGB(14, 68, 66),  cyanPale   = Color3.fromRGB(182, 248, 242), -- 4. Brush (Sculpt Cyan)
		blue   = Color3.fromRGB(26, 148, 255),    blueSoft   = Color3.fromRGB(16, 54, 94),  bluePale   = Color3.fromRGB(184, 224, 255), -- 5. Water (Deep Azure)
		biome  = Color3.fromRGB(98, 212, 110),    biomeSoft  = Color3.fromRGB(24, 68, 30),  biomePale  = Color3.fromRGB(198, 248, 202), -- 6. Biomes (Verdant Lime)
		purple = Color3.fromRGB(152, 114, 245),   purpleSoft = Color3.fromRGB(48, 36, 82),  purplePale = Color3.fromRGB(218, 200, 255), -- 7. Synth (Nebula Purple)
		amber  = Color3.fromRGB(240, 176, 68),    amberSoft  = Color3.fromRGB(76, 54, 18),  amberPale  = Color3.fromRGB(255, 230, 176), -- 8. Perf (Telemetry Amber)
		rose   = Color3.fromRGB(232, 98, 164),    roseSoft   = Color3.fromRGB(74, 28, 52),  rosePale   = Color3.fromRGB(255, 198, 226), -- 9. Labs (Experimental Rose)
		indigo = Color3.fromRGB(122, 138, 255),   indigoSoft = Color3.fromRGB(32, 38, 82),  indigoPale = Color3.fromRGB(204, 212, 255), -- 10. World (Periwinkle Indigo)

		warn = Color3.fromRGB(238, 184, 86),
		danger = Color3.fromRGB(234, 108, 112),
	}

	local PAGE_ACCENTS = {
		Terrain = {main = C.accent, soft = C.accentSoft, pale = C.accentPale, tone = "normal"},
		Planet  = {main = C.planet, soft = C.planetSoft, pale = C.planetPale, tone = "planet"},
		Atlas   = {main = C.sky,    soft = C.skySoft,    pale = C.skyPale,    tone = "sky"},
		Brush   = {main = C.cyan,   soft = C.cyanSoft,   pale = C.cyanPale,   tone = "cyan"},
		Water   = {main = C.blue,   soft = C.blueSoft,   pale = C.bluePale,   tone = "blue"},
		Biomes  = {main = C.biome,  soft = C.biomeSoft,  pale = C.biomePale,  tone = "biome"},
		Synth   = {main = C.purple, soft = C.purpleSoft, pale = C.purplePale, tone = "purple"},
		Perf    = {main = C.amber,  soft = C.amberSoft,  pale = C.amberPale,  tone = "amber"},
		Labs    = {main = C.rose,   soft = C.roseSoft,   pale = C.rosePale,   tone = "rose"},
		Space   = {main = Color3.fromRGB(130, 175, 255), soft = Color3.fromRGB(24, 38, 68), pale = Color3.fromRGB(190, 220, 255), tone = "sky"},
		World   = {main = C.indigo, soft = C.indigoSoft, pale = C.indigoPale, tone = "indigo"},
	}

	local DEFAULT_MATERIAL_COLORS = {
		[M.Grass] = Color3.fromRGB(106, 127, 63), [M.LeafyGrass] = Color3.fromRGB(88, 116, 56),
		[M.Ground] = Color3.fromRGB(102, 92, 59), [M.Mud] = Color3.fromRGB(66, 54, 42),
		[M.Sand] = Color3.fromRGB(171, 152, 112), [M.Sandstone] = Color3.fromRGB(150, 96, 72),
		[M.Limestone] = Color3.fromRGB(206, 173, 148), [M.Salt] = Color3.fromRGB(205, 198, 190),
		[M.Rock] = Color3.fromRGB(110, 114, 118), [M.Slate] = Color3.fromRGB(76, 82, 86),
		[M.Basalt] = Color3.fromRGB(42, 41, 46), [M.CrackedLava] = Color3.fromRGB(232, 120, 52),
		[M.Snow] = Color3.fromRGB(226, 231, 240), [M.Glacier] = Color3.fromRGB(150, 200, 232),
		[M.Ice] = Color3.fromRGB(172, 214, 234), [M.Cobblestone] = Color3.fromRGB(124, 118, 108),
		[M.Asphalt] = Color3.fromRGB(60, 62, 65),
	}

	local THEMEABLE_MATERIALS = {
		M.Grass, M.LeafyGrass, M.Ground, M.Mud, M.Sand, M.Sandstone,
		M.Limestone, M.Salt, M.Rock, M.Slate, M.Basalt, M.Snow, M.Glacier, M.Ice, M.Cobblestone, M.Asphalt,
	}

	local BRUSH_MATERIALS = {
		{mat = M.Grass, label = "Grass"}, {mat = M.LeafyGrass, label = "Leafy"}, {mat = M.Ground, label = "Ground"},
		{mat = M.Cobblestone, label = "Cobble"}, {mat = M.Rock, label = "Rock"}, {mat = M.Slate, label = "Slate"},
		{mat = M.Sand, label = "Sand"}, {mat = M.Sandstone, label = "Sandst."}, {mat = M.Limestone, label = "Limest."},
		{mat = M.Mud, label = "Mud"}, {mat = M.Snow, label = "Snow"}, {mat = M.Glacier, label = "Glacier"},
		{mat = M.Basalt, label = "Basalt"}, {mat = M.CrackedLava, label = "Lava"}, {mat = M.Asphalt, label = "Asphalt"},
		{mat = M.Salt, label = "Salt"}, {mat = M.Water, label = "Water"}, {mat = M.Air, label = "Erase"},
	}

	if not session.originalMaterialColors then
		session.originalMaterialColors = {}
		for _, mat in ipairs(THEMEABLE_MATERIALS) do
			local ok, col = pcall(function() return Terrain:GetMaterialColor(mat) end)
			session.originalMaterialColors[mat] = (ok and typeof(col) == "Color3") and col or DEFAULT_MATERIAL_COLORS[mat]
		end
	end

	local MATERIAL_COLORS = table.clone(DEFAULT_MATERIAL_COLORS)
	for mat, col in pairs(session.originalMaterialColors) do MATERIAL_COLORS[mat] = col end

	local MATERIAL_THEME_ORDER = {"Default", "Lush", "Autumn", "Scorched", "Alien", "Frost"}
	local MATERIAL_THEMES = {
		Default  = {desc = "Restores the place's original Terrain material colors.", overrides = {}},
		Lush     = {desc = "Vibrant emerald meadows, rich forest loam and cool slate stone.", overrides = {[M.Grass]=Color3.fromRGB(68,148,66),[M.LeafyGrass]=Color3.fromRGB(52,122,58),[M.Ground]=Color3.fromRGB(88,74,50),[M.Rock]=Color3.fromRGB(98,106,114),[M.Sand]=Color3.fromRGB(194,176,132)}},
		Autumn   = {desc = "Golden harvest grass, russet foliage turf and warm ochre canyon rock.", overrides = {[M.Grass]=Color3.fromRGB(176,134,54),[M.LeafyGrass]=Color3.fromRGB(154,88,44),[M.Ground]=Color3.fromRGB(112,82,54),[M.Sandstone]=Color3.fromRGB(168,102,68),[M.Rock]=Color3.fromRGB(116,108,102)}},
		Scorched = {desc = "Charred ash-gray scrub, soot basalt and dark volcanic stone.", overrides = {[M.Grass]=Color3.fromRGB(92,88,68),[M.LeafyGrass]=Color3.fromRGB(72,68,62),[M.Ground]=Color3.fromRGB(76,62,56),[M.Sand]=Color3.fromRGB(122,116,110),[M.Rock]=Color3.fromRGB(68,66,70),[M.Basalt]=Color3.fromRGB(36,34,38)}},
		Alien    = {desc = "Bioluminescent teal-mint flora, twilight indigo turf and violet mineral stone.", overrides = {[M.Grass]=Color3.fromRGB(44,168,142),[M.LeafyGrass]=Color3.fromRGB(68,86,156),[M.Ground]=Color3.fromRGB(64,56,84),[M.Limestone]=Color3.fromRGB(168,148,204),[M.Sand]=Color3.fromRGB(146,164,182),[M.Rock]=Color3.fromRGB(82,84,112)}},
		Frost    = {desc = "Silver-rime subarctic grass, pale permafrost soil and glacial blue rock.", overrides = {[M.Grass]=Color3.fromRGB(132,162,152),[M.LeafyGrass]=Color3.fromRGB(108,142,138),[M.Ground]=Color3.fromRGB(112,114,118),[M.Rock]=Color3.fromRGB(118,132,146),[M.Slate]=Color3.fromRGB(86,98,112)}},
	}

	local ROCKY = {[M.Rock]=true,[M.Slate]=true,[M.Basalt]=true,[M.Sandstone]=true,[M.Limestone]=true,[M.Glacier]=true,[M.Ice]=true,[M.Cobblestone]=true,[M.Asphalt]=true}
	local SUB_OVERRIDE = {[M.Sand]=M.Sand,[M.Salt]=M.Sand,[M.Snow]=M.Snow,[M.Mud]=M.Mud,[M.CrackedLava]=M.Basalt}

	----------------------------------------------------------------------------------------------------
	-- 3. MATH, ALPHANUMERIC GRID LABELS, CLOCK & UTILITY HELPERS
	----------------------------------------------------------------------------------------------------
	local function clamp(v, lo, hi) return v < lo and lo or (v > hi and hi or v) end
	local function lerp(a, b, t) return a + (b - a) * t end
	local function round(v) return math.floor(v + 0.5) end
	local function snapVoxel(v) return math.floor(v / K.VOXEL + 0.5) * K.VOXEL end
	local function floorVoxel(v) return math.floor(v / K.VOXEL) * K.VOXEL end
	local function ceilVoxel(v) return math.ceil(v / K.VOXEL) * K.VOXEL end
	local function isFinite(v) return type(v) == "number" and v == v and v ~= math.huge and v ~= -math.huge end

	local function smoothstep(edge0, edge1, x)
		if edge1 == edge0 then return x >= edge1 and 1 or 0 end
		local t = clamp((x - edge0) / (edge1 - edge0), 0, 1)
		return t * t * (3 - 2 * t)
	end

	local function terrace(v, steps, cliff)
		local s = v * steps
		local f = math.floor(s)
		return (f + smoothstep(1 - cliff, 1, s - f)) / steps
	end

	local function colLetters(idx)
		idx = math.max(1, math.floor(idx))
		local out = ""
		while idx > 0 do
			local rem = (idx - 1) % 26
			out = string.char(65 + rem) .. out
			idx = math.floor((idx - 1) / 26)
		end
		return out
	end

	local function formatCompact(n)
		if n >= 1e9 then return string.format("%.2fB", n / 1e9) end
		if n >= 1e6 then return string.format("%.2fM", n / 1e6) end
		if n >= 1e3 then return string.format("%.1fK", n / 1e3) end
		return tostring(round(n))
	end

	local function formatDuration(seconds)
		seconds = math.max(0, round(seconds))
		return seconds < 60 and (seconds .. "s") or string.format("%dm %02ds", math.floor(seconds / 60), seconds % 60)
	end

	local function getClockInfo()
		local ok, t = pcall(os.date, "*t")
		if ok and type(t) == "table" then
			local timeStr = string.format("%02d:%02d:%02d", t.hour or 0, t.min or 0, t.sec or 0)
			local okDate, dateStr = pcall(os.date, "%a · %b %d")
			local h = t.hour or 12
			local greeting = (h < 5 and "Late-night lab") or (h < 12 and "Good morning") or (h < 18 and "Good afternoon") or "Good evening"
			return timeStr, string.upper(okDate and dateStr or "LOCAL TIME"), greeting
		end
		local s = math.floor(workspace.DistributedGameTime)
		return string.format("%02d:%02d:%02d", math.floor(s / 3600) % 24, math.floor(s / 60) % 60, s % 60), "SESSION CLOCK", "Session active"
	end

	local function hasMethod(object, name)
		local ok, member = pcall(function() return object[name] end)
		return ok and typeof(member) == "function"
	end

	local function smoothPolyline(pts, passes)
		local cur = pts
		for _ = 1, passes or 2 do
			if #cur < 3 then break end
			local out = {cur[1]}
			for i = 1, #cur - 1 do
				local a, b = cur[i], cur[i + 1]
				table.insert(out, {
					x = a.x * 0.75 + b.x * 0.25, z = a.z * 0.75 + b.z * 0.25,
					h = (a.h and b.h) and (a.h * 0.75 + b.h * 0.25) or nil,
					w = (a.w and b.w) and (a.w * 0.75 + b.w * 0.25) or nil,
				})
				table.insert(out, {
					x = a.x * 0.25 + b.x * 0.75, z = a.z * 0.25 + b.z * 0.75,
					h = (a.h and b.h) and (a.h * 0.25 + b.h * 0.75) or nil,
					w = (a.w and b.w) and (a.w * 0.25 + b.w * 0.75) or nil,
				})
			end
			table.insert(out, cur[#cur])
			cur = out
		end
		return cur
	end

	----------------------------------------------------------------------------------------------------
	-- 4. FIELD DEFINITIONS (30 UNIFIED PARAMETERS)
	----------------------------------------------------------------------------------------------------
	local FIELDS = {
		Width = {label = "Width (studs)", min = 128, max = 21504, step = 4, default = 256, hint = "East–west size up to 21,504 studs (warning >8K). Streamed in center-outward tiles."},
		Depth = {label = "Depth (studs)", min = 128, max = 21504, step = 4, default = 256, hint = "North–south size up to 21,504 studs (warning >8K). Right-click any slider to reset."},
		MaxHeight = {label = "Peak height", min = 32, max = 384, step = 1, default = 144, hint = "Maximum surface elevation above base level."},
		Roughness = {label = "Roughness", min = 0.2, max = 2.5, step = 0.01, default = 1, hint = "Feature frequency across the world."},
		Detail = {label = "Detail", min = 0, max = 1.6, step = 0.01, default = 1, hint = "Fine fractal octaves and micro-relief."},
		Warp = {label = "Domain warp", min = 0, max = 1.8, step = 0.01, default = 0.45, hint = "Bends noise coordinates organically."},
		EdgeFalloff = {label = "Edge blend", min = 0, max = 0.5, step = 0.01, default = 0.08, hint = "Tapers map edges smoothly toward base level."},
		CaveDensity = {label = "Cave density", min = 0, max = 1, step = 0.01, default = 0, hint = "Carves 3D underground tunnel networks."},
		TerraceSteps = {label = "Terrace steps", min = 0, max = 16, step = 1, default = 0, hint = "Sculpts stepped plateau benches."},
		RidgeSharpness = {label = "Peak contrast", min = 0.4, max = 2.2, step = 0.05, default = 1, hint = "Sharpens peaks (>1) or broadens hills (<1)."},
		FlatFloor = {label = "Valley flatten", min = 0, max = 0.65, step = 0.01, default = 0, hint = "Levels low basins into walkable floors."},
		Erosion = {label = "Slope erosion", min = 0, max = 1, step = 0.01, default = 0, hint = "Carves rainwater drainage creases into slopes."},
		MoistureShift = {label = "Climate lushness", min = -0.8, max = 0.8, step = 0.05, default = 0, hint = "Shifts biome materials drier (-) or lusher (+)."},
		GrassLength = {label = "Grass length", min = 0.1, max = 1.0, step = 0.01, default = 0.7, hint = "Target 3D grass blade height."},
		GrassSpread = {label = "Grass coverage", min = 0, max = 1, step = 0.01, default = 0.65, hint = "Ratio of 3D blade Grass vs flat LeafyGrass."},
		CliffAngle = {label = "Cliff threshold", min = 0.45, max = 1.8, step = 0.05, default = 1.0, hint = "Slope steepness required to expose cliff stone."},
		SnowLine = {label = "Snowline height", min = 0.35, max = 1.05, step = 0.01, default = 1.05, hint = "Universal snow & glacier cap height."},
		BeachWidth = {label = "Shoreline width", min = 0, max = 24, step = 0.5, default = 4, hint = "Vertical reach of beaches above Sea Level."},
		RiverCount = {label = "Procedural rivers", min = 0, max = 5, step = 1, default = 0, hint = "Meandering rivers traced from highlands to sea."},
		RiverWidth = {label = "River width", min = 8, max = 48, step = 2, default = 18, hint = "Base river channel width in studs."},
		TrailCount = {label = "Procedural trails", min = 0, max = 5, step = 1, default = 0, hint = "A* slope-graded trails & switchbacks."},
		TrailWidth = {label = "Trail width", min = 6, max = 28, step = 2, default = 12, hint = "Walkable graded trail width in studs."},
		Seed = {label = "Seed", min = -999999, max = 999999, step = 1, default = 2137, hint = "Deterministic world seed."},
		CenterX = {label = "Center X", min = -100000, max = 100000, step = 4, default = 0, hint = "World X coordinate of map center."},
		CenterZ = {label = "Center Z", min = -100000, max = 100000, step = 4, default = 0, hint = "World Z coordinate of map center."},
		SeaLevel = {label = "Sea level (Y)", min = 0, max = 220, step = 1, default = 32, hint = "Water elevation across the bounds."},
		WaterTransparency = {label = "Transparency", min = 0.05, max = 1, step = 0.01, default = 0.25, hint = "Place-wide Terrain water transparency."},
		WaterWaveSize = {label = "Wave size", min = 0, max = 1, step = 0.01, default = 0.12, hint = "Place-wide Terrain wave amplitude."},
		WaterWaveSpeed = {label = "Wave speed", min = 0, max = 100, step = 1, default = 10, hint = "Place-wide Terrain wave speed."},
		WaterReflectance = {label = "Reflectance", min = 0, max = 1, step = 0.01, default = 0.2, hint = "Place-wide Terrain water reflectance."},
	}

	local FIELD_ORDER = {
		"Width", "Depth", "MaxHeight", "Roughness", "Detail", "Warp", "EdgeFalloff", "CaveDensity",
		"Seed", "CenterX", "CenterZ", "SeaLevel",
		"WaterTransparency", "WaterWaveSize", "WaterWaveSpeed", "WaterReflectance",
		"TerraceSteps", "RidgeSharpness", "FlatFloor", "MoistureShift",
		"Erosion", "GrassLength", "GrassSpread", "CliffAngle", "SnowLine", "BeachWidth",
		"RiverCount", "RiverWidth", "TrailCount", "TrailWidth",
	}
	local SHAPE_KEYS = {
		"Width", "Depth", "MaxHeight", "Roughness", "Detail", "Warp", "EdgeFalloff", "CaveDensity",
		"TerraceSteps", "RidgeSharpness", "FlatFloor", "Erosion", "GrassLength", "GrassSpread", "CliffAngle", "SnowLine",
	}
	local PATH_GEN_KEYS = {"RiverCount", "RiverWidth", "TrailCount", "TrailWidth"}
	local WATER_KEYS = {"WaterTransparency", "WaterWaveSize", "WaterWaveSpeed", "WaterReflectance"}
	local QUICK_SIZES = {256, 512, 1024, 2048, 4096, 21504}

	local function decimalsFor(step)
		local d = 0
		while d < 4 and math.abs(step * 10 ^ d - math.floor(step * 10 ^ d + 0.5)) > 1e-9 do d += 1 end
		return d
	end
	for _, key in ipairs(FIELD_ORDER) do
		FIELDS[key].key = key
		FIELDS[key].decimals = decimalsFor(FIELDS[key].step)
	end

	local function quantize(key, value)
		local f = FIELDS[key]
		value = tonumber(value)
		if not isFinite(value) then value = f.default end
		value = clamp(math.floor(clamp(value, f.min, f.max) / f.step + 0.5) * f.step, f.min, f.max)
		if f.decimals > 0 then value = tonumber(string.format("%." .. f.decimals .. "f", value)) end
		return value
	end

	local function rawText(key, value)
		local f = FIELDS[key]
		return f and string.format("%." .. f.decimals .. "f", value) or tostring(value)
	end

	----------------------------------------------------------------------------------------------------
	-- 5. 16 FORMATION STYLES, 6 WATER PRESETS, 256 SYNTHESIS POOLS & 8 PLANET ARCHETYPES
	----------------------------------------------------------------------------------------------------
	local STYLE_ORDER = {
		"Rolling", "Alpine", "Islands", "Archipelago", "Atoll", "Desert", "Badlands", "Canyon",
		"Mesa", "Karst", "Steppe", "Volcanic", "Shattered", "Fjords", "Tundra", "Wetlands",
	}

	local function makeStrataSampler(list, band)
		local count = #list; band = band or 6
		return function(y) return list[math.floor(y / band) % count + 1] end
	end

	local STYLES = {
		Rolling = {
			desc = "Soft hills, broad meadows and gentle, walkable slopes.",
			notes = "A balanced profile for open-world exploration with smoothstepped valleys and hilltops.",
			materials = "Grass · leafy grass · ground slopes · rock cliffs", palette = {M.Grass, M.LeafyGrass, M.Ground, M.Rock},
			preset = {MaxHeight=104,Roughness=0.72,Detail=0.65,Warp=0.45,EdgeFalloff=0.08,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.08,MoistureShift=0,GrassSpread=0.7,CliffAngle=1,SnowLine=1.05,BeachWidth=4,SeaLevel=18},
			water = "Ocean", sub = M.Ground, cliff = M.Rock, trailMat = M.Cobblestone, treeAffinity = 1.0,
			shape = function(n) local b = n.base; b = b * b * (3 - 2 * b); return 0.16 + b * 0.62 + n.fine * 0.04 end,
			surface = function(c)
				if c.slope > 1.25 then return M.Rock elseif c.slope > 0.8 then return M.Ground end
				if c.rel + c.moisture * 0.08 > 0.88 then return M.Rock end
				return c.moisture > 0.16 and M.LeafyGrass or M.Grass
			end,
		},
		Alpine = {
			desc = "Sharp ridgelines, high peaks, exposed rock and snow caps.",
			notes = "Ridged multifractal noise clustered by a continental mask. Snow and glacier ice crown the highest peaks.",
			materials = "Meadows · ground · slate & rock · snow · glacier", palette = {M.Grass, M.Rock, M.Snow, M.Glacier},
			preset = {MaxHeight=220,Roughness=1.1,Detail=1.15,Warp=0.6,EdgeFalloff=0.1,CaveDensity=0.1,TerraceSteps=0,RidgeSharpness=1.15,FlatFloor=0,Erosion=0.32,MoistureShift=0,GrassSpread=0.55,CliffAngle=0.95,SnowLine=0.76,BeachWidth=3,SeaLevel=24},
			water = "Glacier", ridge = true, sub = M.Ground, cliff = M.Rock, trailMat = M.Cobblestone, treeAffinity = 0.75,
			shape = function(n)
				local mask = smoothstep(0.3, 0.72, 0.5 + n.broad * 1.4)
				local r = clamp((n.ridge - 0.25) / 0.65, 0, 1)
				return 0.1 + n.base * 0.3 + (r ^ 1.6) * 0.62 * (0.35 + 0.65 * mask) + n.fine * 0.035
			end,
			surface = function(c)
				local r = c.rel + c.moisture * 0.07
				if c.slope > 1.35 then return r > 0.7 and M.Slate or M.Rock end
				if r > 0.8 then return (r > 0.9 and c.slope < 0.35) and M.Glacier or M.Snow end
				if r > 0.62 then return (c.slope > 0.6 or c.moisture > 0.1) and M.Rock or M.Ground end
				if r > 0.45 then return c.moisture > 0 and M.Grass or M.Ground end
				return c.moisture > 0.2 and M.LeafyGrass or M.Grass
			end,
		},
		Islands = {
			desc = "An organic island mass with beaches that falls away into the sea.",
			notes = "Warped radial coastline surrounded by tropical shallows.",
			materials = "Wide beaches · grass & leafy grass · rock faces · sandy seabed", palette = {M.Sand, M.Grass, M.LeafyGrass, M.Rock},
			preset = {MaxHeight=136,Roughness=0.95,Detail=0.85,Warp=0.8,EdgeFalloff=0,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.14,MoistureShift=0,GrassSpread=0.72,CliffAngle=1,SnowLine=1.05,BeachWidth=7,SeaLevel=48},
			water = "Tropical", sub = M.Ground, cliff = M.Rock, trailMat = M.Ground, treeAffinity = 1.05,
			shape = function(n)
				local mask = smoothstep(1.02, 0.42, n.radial + n.broad * 0.55 + n.fine * 0.05)
				return 0.03 + mask * (0.3 + n.base * 0.45) * 0.95 + mask * mask * n.medium * 0.12, mask
			end,
			surface = function(c)
				if c.slope > 1.2 then return M.Rock end
				if c.water and c.h < c.sea + 8 + c.moisture * 5 and c.slope < 0.7 then return M.Sand end
				if c.rel + c.moisture * 0.06 > 0.82 then return M.Rock end
				return c.moisture > 0.1 and M.LeafyGrass or M.Grass
			end,
		},
		Archipelago = {
			desc = "Scattered tropical island chains, sandbars and coral lagoons.",
			notes = "High-frequency island clusters separated by shallow turquoise channels.",
			materials = "Coral sandbars · leafy jungle · limestone cliffs · grass", palette = {M.Sand, M.LeafyGrass, M.Limestone, M.Grass},
			preset = {MaxHeight=122,Roughness=1.25,Detail=0.95,Warp=0.95,EdgeFalloff=0.12,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1.15,FlatFloor=0,Erosion=0.1,MoistureShift=0.15,GrassSpread=0.5,CliffAngle=0.95,SnowLine=1.05,BeachWidth=8,SeaLevel=46},
			water = "Tropical", ridge = true, sub = M.Sand, cliff = M.Limestone, bedrock = M.Limestone, trailMat = M.Limestone, treeAffinity = 1.15,
			shape = function(n)
				local border = smoothstep(1.18, 0.45, n.radial0)
				local cluster = smoothstep(0.36, 0.78, n.base + n.medium * 0.35)
				return 0.04 + border * (cluster * 0.58 + cluster * clamp(n.ridge - 0.35, 0, 1) * 0.38) + n.fine * 0.025, cluster
			end,
			surface = function(c)
				if c.slope > 1.05 then return M.Limestone end
				if c.water and c.h < c.sea + 10 + c.moisture * 4 and c.slope < 0.75 then return M.Sand end
				if c.rel > 0.72 then return M.Limestone end
				return c.moisture > -0.05 and M.LeafyGrass or M.Grass
			end,
		},
		Atoll = {
			desc = "A ring-shaped coral reef enclosing a calm central turquoise lagoon.",
			notes = "Warped ring geometry builds sandy coral motus around a sheltered inner lagoon.",
			materials = "White salt-sand · coral sandbars · lush palms · limestone reef", palette = {M.Salt, M.Sand, M.LeafyGrass, M.Limestone},
			preset = {MaxHeight=88,Roughness=1.05,Detail=0.9,Warp=0.7,EdgeFalloff=0.05,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0,MoistureShift=0.2,GrassSpread=0.45,CliffAngle=1,SnowLine=1.05,BeachWidth=9,SeaLevel=36},
			water = "Tropical", sub = M.Sand, cliff = M.Limestone, bedrock = M.Limestone, beach = M.Sand, trailMat = M.Limestone, treeAffinity = 0.85,
			shape = function(n)
				local r = n.radial * 0.75 + n.radial0 * 0.25 + n.broad * 0.18
				local ring = math.exp(-(((r - 0.56) / 0.19) ^ 2))
				local breaks = smoothstep(0.28, 0.66, n.base + n.medium * 0.32)
				return 0.14 + smoothstep(0.55, 0.1, r) * 0.12 + ring * (0.28 + breaks * 0.44) + n.fine * 0.025, ring
			end,
			surface = function(c)
				if c.slope > 0.95 then return M.Limestone end
				if c.water and c.h < c.sea + 6 then return c.moisture < -0.15 and M.Salt or M.Sand end
				return c.moisture > 0.05 and M.LeafyGrass or M.Grass
			end,
		},
		Desert = {
			desc = "Wind-sculpted dune fields, sandstone outcrops and salt flats.",
			notes = "Directional dune ridges ride over arid basins and salt pans.",
			materials = "Sand dunes · sandstone outcrops · salt flats", palette = {M.Sand, M.Sandstone, M.Salt, M.Ground},
			preset = {MaxHeight=86,Roughness=0.68,Detail=0.75,Warp=0.35,EdgeFalloff=0.06,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.05,MoistureShift=0,GrassSpread=0.1,CliffAngle=0.9,SnowLine=1.05,BeachWidth=4,SeaLevel=10},
			water = "Lagoon", sub = M.Sand, cliff = M.Sandstone, bedrock = M.Sandstone, trailMat = M.Sandstone, treeAffinity = 0.12,
			shape = function(n)
				local dune = (1 - math.abs(math.sin((n.px * 0.8 + n.pz * 0.45) * 26 + n.medium * 6))) ^ 2
				return 0.26 + n.base * 0.26 + dune * 0.12 * (0.4 + n.detail * 0.6) + n.fine * 0.03
			end,
			surface = function(c)
				if c.slope > 0.95 then return M.Sandstone end
				if c.moisture < -0.38 and c.slope < 0.2 and c.rel < 0.4 then return M.Salt end
				return M.Sand
			end,
		},
		Badlands = {
			desc = "Fluted clay hoodoos, eroded gullies and dry cobblestone washes.",
			notes = "Dissected arid spires with polychrome sandstone-limestone-clay banding.",
			materials = "Sandstone spires · banded clay strata · cobble washes · salt", palette = {M.Sandstone, M.Limestone, M.Cobblestone, M.Ground},
			preset = {MaxHeight=164,Roughness=1.35,Detail=1.2,Warp=0.55,EdgeFalloff=0.07,CaveDensity=0.08,TerraceSteps=4,RidgeSharpness=1.25,FlatFloor=0.14,Erosion=0.55,MoistureShift=-0.25,GrassSpread=0.15,CliffAngle=0.75,SnowLine=1.05,BeachWidth=3,SeaLevel=12},
			water = "Lagoon", ridge = true, sub = M.Sandstone, cliff = M.Sandstone, bedrock = M.Sandstone, beach = M.Cobblestone, trailMat = M.Cobblestone, treeAffinity = 0.18,
			strata = {M.Sandstone, M.Ground, M.Limestone, M.Sandstone, M.Mud}, strataBand = 5,
			shape = function(n)
				local hoodoo = clamp((n.ridge - 0.28) / 0.64, 0, 1) ^ 1.35
				local wash = smoothstep(0.03, 0.22, math.abs(n.broad * 0.6 + n.medium * 0.5))
				return (0.1 + n.base * 0.28 + hoodoo * 0.56) * (0.25 + 0.75 * wash) + n.fine * 0.03, 1 - wash
			end,
			surface = function(c)
				if c.slope > 0.68 then return c.strataAt(c.h) end
				if c.feature > 0.55 then return c.moisture < -0.25 and M.Salt or M.Cobblestone end
				return c.moisture > 0.2 and M.Ground or M.Sand
			end,
		},
		Canyon = {
			desc = "Terraced plateaus split by deep, winding canyons.",
			notes = "Canyon walls expose banded sandstone/limestone strata.",
			materials = "Ground plateaus · banded strata walls · muddy floors", palette = {M.Ground, M.Sandstone, M.Limestone, M.Mud},
			preset = {MaxHeight=172,Roughness=1.2,Detail=1.0,Warp=0.55,EdgeFalloff=0.05,CaveDensity=0.12,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.22,MoistureShift=0,GrassSpread=0.45,CliffAngle=0.85,SnowLine=1.05,BeachWidth=3,SeaLevel=30},
			water = "Lagoon", sub = M.Sandstone, cliff = M.Sandstone, bedrock = M.Rock, trailMat = M.Cobblestone, treeAffinity = 0.42,
			strata = {M.Sandstone, M.Sandstone, M.Limestone, M.Rock}, strataBand = 6,
			shape = function(n)
				local channel = smoothstep(0.02, 0.17, math.abs(n.medium + n.fine * 0.03))
				return terrace(0.12 + (0.44 + n.broad * 0.35) * channel, 7, 0.3) + n.fine * 0.015, 1 - channel
			end,
			surface = function(c)
				if c.feature > 0.8 and c.slope < 0.6 then return c.moisture > 0.1 and M.Mud or M.Ground end
				if c.slope > 0.75 then return c.strataAt(c.h) end
				return c.moisture > 0.28 and M.Grass or M.Ground
			end,
		},
		Mesa = {
			desc = "Flat-topped mesas and buttes with layered cliff walls.",
			notes = "Isolated terraced plateaus with sandstone and limestone bands.",
			materials = "Scrub-topped mesas · banded cliffs · sandy floors", palette = {M.Ground, M.Sandstone, M.Limestone, M.Sand},
			preset = {MaxHeight=154,Roughness=0.85,Detail=0.8,Warp=0.5,EdgeFalloff=0.06,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0.1,Erosion=0.18,MoistureShift=0,GrassSpread=0.4,CliffAngle=0.85,SnowLine=1.05,BeachWidth=4,SeaLevel=12},
			water = "Lagoon", sub = M.Sandstone, cliff = M.Sandstone, bedrock = M.Sandstone, trailMat = M.Sandstone, treeAffinity = 0.35,
			strata = {M.Sandstone, M.Limestone}, strataBand = 8,
			shape = function(n)
				local plateau = smoothstep(0.5, 0.6, n.base + n.fine * 0.04)
				return terrace(0.16 + n.base * 0.14 + plateau * 0.42, 6, 0.22), plateau
			end,
			surface = function(c)
				if c.slope > 0.85 then return c.strataAt(c.h) end
				if c.feature > 0.5 then return c.moisture > 0.15 and M.Grass or M.Ground end
				return c.moisture > 0.3 and M.Ground or M.Sand
			end,
		},
		Karst = {
			desc = "Towering limestone spires, sinkhole basins and lush valleys.",
			notes = "Abrupt stone towers rising from jungle valleys over cave networks.",
			materials = "Leafy jungle floors · pale limestone spires · rock · mud", palette = {M.LeafyGrass, M.Limestone, M.Rock, M.Mud},
			preset = {MaxHeight=192,Roughness=1.35,Detail=1.1,Warp=0.65,EdgeFalloff=0.08,CaveDensity=0.35,TerraceSteps=0,RidgeSharpness=1.35,FlatFloor=0.18,Erosion=0.2,MoistureShift=0.25,GrassSpread=0.4,CliffAngle=0.85,SnowLine=1.05,BeachWidth=4,SeaLevel=26},
			water = "Lagoon", ridge = true, sub = M.Limestone, cliff = M.Limestone, bedrock = M.Rock, trailMat = M.Limestone, treeAffinity = 1.25,
			strata = {M.Limestone, M.Limestone, M.Rock}, strataBand = 7,
			shape = function(n)
				local spire = clamp((n.ridge - 0.32) / 0.62, 0, 1) ^ 1.8
				return 0.14 + n.base * 0.22 + spire * 0.68 - smoothstep(0.28, 0.12, n.base) * 0.1 + n.fine * 0.03, spire
			end,
			surface = function(c)
				if c.slope > 0.9 then return c.strataAt(c.h) end
				if c.feature > 0.55 then return M.Limestone end
				if c.rel < 0.18 and c.moisture > 0.3 then return M.Mud end
				return c.moisture > -0.1 and M.LeafyGrass or M.Grass
			end,
		},
		Steppe = {
			desc = "Sweeping continental highland plains, river valleys and stone tors.",
			notes = "Broad buildable grasslands with incised river valleys and granite tors.",
			materials = "Broad grasslands · ground trails · cobblestone banks · rock tors", palette = {M.Grass, M.Ground, M.Cobblestone, M.Rock},
			preset = {MaxHeight=128,Roughness=0.58,Detail=0.75,Warp=0.55,EdgeFalloff=0.07,CaveDensity=0.05,TerraceSteps=2,RidgeSharpness=0.9,FlatFloor=0.2,Erosion=0.16,MoistureShift=0.05,GrassSpread=0.82,CliffAngle=1.05,SnowLine=1.05,BeachWidth=4,SeaLevel=20},
			water = "Ocean", ridge = true, sub = M.Ground, cliff = M.Rock, beach = M.Cobblestone, trailMat = M.Cobblestone, treeAffinity = 0.65,
			shape = function(n)
				local river = smoothstep(0.012, 0.12, math.abs(n.broad * 0.8 + n.medium * 0.25))
				local tor = clamp((n.ridge - 0.68) / 0.3, 0, 1) ^ 1.7
				return 0.08 + (0.28 + n.base * 0.34) * (0.28 + 0.72 * river) + tor * 0.28 + n.fine * 0.025, tor
			end,
			surface = function(c)
				if c.feature > 0.22 or c.slope > 1.05 then return M.Rock end
				if c.moisture < -0.26 then return M.Ground end
				return c.moisture > 0.22 and M.LeafyGrass or M.Grass
			end,
		},
		Volcanic = {
			desc = "A warped volcanic cone with a lava-cracked crater and basalt flanks.",
			notes = "Anchored on Center X/Z with a glowing cracked-lava caldera.",
			materials = "Cracked-lava crater · basalt · slate · sparse grass", palette = {M.CrackedLava, M.Basalt, M.Slate, M.Grass},
			preset = {MaxHeight=220,Roughness=1.0,Detail=1.2,Warp=0.5,EdgeFalloff=0.05,CaveDensity=0.2,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.28,MoistureShift=0,GrassSpread=0.35,CliffAngle=0.95,SnowLine=1.05,BeachWidth=4,SeaLevel=28},
			water = "Abyss", sub = M.Basalt, cliff = M.Basalt, bedrock = M.Basalt, beach = M.Basalt, trailMat = M.Asphalt, treeAffinity = 0.22,
			shape = function(n)
				local r = n.radial0 + (n.radial - n.radial0) * 0.35 + n.fine * 0.04
				local crater = smoothstep(0.17, 0.08, r)
				return 0.14 + n.base * 0.2 + ((1 - clamp(r, 0, 1)) ^ 1.7) * 0.66 + math.exp(-(((r - 0.15) / 0.06) ^ 2)) * 0.06 - crater * 0.38, crater
			end,
			surface = function(c)
				if c.feature > 0.5 then return M.CrackedLava end
				if c.slope > 1.0 or c.rel > 0.6 then return M.Basalt end
				if c.rel < 0.24 and c.moisture > 0.22 then return M.Grass end
				return c.moisture > 0 and M.Basalt or M.Slate
			end,
		},
		Shattered = {
			desc = "Tectonic rifts, sheer stone monoliths, natural arches and magma fissures.",
			notes = "Fractured plateaus cleaved by fault trenches and undercut stone arches.",
			materials = "Basalt monoliths · lush cliff-tops · slate · cracked lava rifts", palette = {M.Basalt, M.Grass, M.CrackedLava, M.Slate},
			preset = {MaxHeight=216,Roughness=1.22,Detail=1.15,Warp=0.72,EdgeFalloff=0.06,CaveDensity=0.42,TerraceSteps=5,RidgeSharpness=1.2,FlatFloor=0,Erosion=0.2,MoistureShift=0,GrassSpread=0.6,CliffAngle=0.8,SnowLine=1.05,BeachWidth=2,SeaLevel=22},
			water = "Abyss", ridge = true, arches = true, sub = M.Slate, cliff = M.Basalt, bedrock = M.Basalt, beach = M.Basalt, trailMat = M.Asphalt, treeAffinity = 0.55,
			shape = function(n)
				local riftMask = smoothstep(0.03, 0.11, math.abs(n.medium)) * (0.35 + 0.65 * smoothstep(0.02, 0.09, math.abs(n.broad * 0.9 - n.medium * 0.35)))
				return 0.05 + (0.52 + clamp(n.ridge - 0.3, 0, 1) * 0.38) * riftMask + n.fine * 0.025, 1 - riftMask
			end,
			surface = function(c)
				if c.feature > 0.68 and not c.water then return M.CrackedLava end
				if c.slope > 0.85 then return M.Basalt end
				if c.rel > 0.52 then return c.moisture > 0.05 and M.Grass or M.Slate end
				return c.moisture > 0.15 and M.LeafyGrass or M.Slate
			end,
		},
		Fjords = {
			desc = "Deep glacially-carved sea inlets flanked by towering cliffs.",
			notes = "U-shaped coastal troughs below alpine benches and snowfields.",
			materials = "Slate sea-cliffs · alpine turf · snow · glacier ice", palette = {M.Slate, M.Grass, M.Snow, M.Glacier},
			preset = {MaxHeight=224,Roughness=1.05,Detail=1.1,Warp=0.75,EdgeFalloff=0.04,CaveDensity=0.08,TerraceSteps=0,RidgeSharpness=1.15,FlatFloor=0,Erosion=0.25,MoistureShift=0.1,GrassSpread=0.6,CliffAngle=0.9,SnowLine=0.74,BeachWidth=2,SeaLevel=52},
			water = "Glacier", ridge = true, sub = M.Rock, cliff = M.Slate, bedrock = M.Slate, beach = M.Slate, trailMat = M.Cobblestone, treeAffinity = 0.8,
			shape = function(n)
				local trough = smoothstep(0.03, 0.28, math.abs(n.broad * 0.7 + n.medium * 0.45))
				return 0.04 + (0.48 + n.base * 0.34 + clamp(n.ridge - 0.4, 0, 1) * 0.22) * (trough ^ 0.85) + n.fine * 0.03, 1 - trough
			end,
			surface = function(c)
				if c.slope > 1.05 then return M.Slate end
				if c.rel > 0.78 then return c.slope < 0.32 and M.Glacier or M.Snow end
				if c.rel > 0.6 then return c.moisture > 0.05 and M.Snow or M.Rock end
				return c.moisture > 0.15 and M.LeafyGrass or M.Grass
			end,
		},
		Tundra = {
			desc = "Frozen rolling plains, icy shores and wind-scoured ridges.",
			notes = "Subarctic plains with permafrost soil and frozen shorelines.",
			materials = "Snowfields · frozen ground · glacier ice · rock ridges", palette = {M.Snow, M.Ground, M.Glacier, M.Rock},
			preset = {MaxHeight=112,Roughness=0.9,Detail=0.9,Warp=0.5,EdgeFalloff=0.08,CaveDensity=0,TerraceSteps=0,RidgeSharpness=1,FlatFloor=0,Erosion=0.12,MoistureShift=0,GrassSpread=0.25,CliffAngle=1,SnowLine=0.55,BeachWidth=5,SeaLevel=26},
			water = "Glacier", ridge = true, sub = M.Ground, cliff = M.Rock, beach = M.Ice, trailMat = M.Cobblestone, treeAffinity = 0.38,
			shape = function(n) return 0.14 + n.base * 0.38 + clamp(n.ridge - 0.45, 0, 1) * 0.35 + n.fine * 0.03 end,
			surface = function(c)
				if c.slope > 1.1 then return M.Rock end
				if c.moisture < -0.2 then return M.Ground end
				if c.moisture < -0.06 and c.slope > 0.5 then return M.Rock end
				if c.rel > 0.5 and c.slope < 0.35 then return M.Glacier end
				return M.Snow
			end,
		},
		Wetlands = {
			desc = "Flooded marshland, braided mud channels and mossy hummocks.",
			notes = "Winding bayou waterways, mudflats and vegetated islands.",
			materials = "Leafy hummocks · mudflats · grass banks · dark stone", palette = {M.LeafyGrass, M.Mud, M.Grass, M.Ground},
			preset = {MaxHeight=68,Roughness=1.15,Detail=0.9,Warp=0.85,EdgeFalloff=0.06,CaveDensity=0,TerraceSteps=0,RidgeSharpness=0.85,FlatFloor=0.12,Erosion=0,MoistureShift=0.3,GrassSpread=0.5,CliffAngle=1,SnowLine=1.05,BeachWidth=5,SeaLevel=24},
			water = "Swamp", sub = M.Mud, cliff = M.Rock, beach = M.Mud, seabed = M.Mud, trailMat = M.Cobblestone, treeAffinity = 1.3,
			shape = function(n)
				local channel = smoothstep(0.015, 0.15, math.abs(n.medium + n.broad * 0.35))
				return 0.12 + (0.22 + n.base * 0.36) * channel + n.fine * 0.025, 1 - channel
			end,
			surface = function(c)
				if c.slope > 1.0 then return M.Rock end
				if c.feature > 0.55 or (c.water and c.h < c.sea + 4) then return M.Mud end
				if c.moisture < -0.15 then return M.Ground end
				return c.moisture > 0.08 and M.LeafyGrass or M.Grass
			end,
		},
	}
	for _, style in pairs(STYLES) do if style.strata then style.strataAt = makeStrataSampler(style.strata, style.strataBand) end end

	local WATER_ORDER = {"Ocean", "Lagoon", "Tropical", "Glacier", "Swamp", "Abyss"}
	local WATER_PRESETS = {
		Ocean = {color = Color3.fromRGB(28, 100, 132), desc = "Deep blue water with balanced wave motion.", WaterTransparency = 0.25, WaterWaveSize = 0.12, WaterWaveSpeed = 10, WaterReflectance = 0.2},
		Lagoon = {color = Color3.fromRGB(48, 157, 155), desc = "Shallow turquoise water with soft contrast.", WaterTransparency = 0.5, WaterWaveSize = 0.06, WaterWaveSpeed = 6, WaterReflectance = 0.3},
		Tropical = {color = Color3.fromRGB(20, 178, 196), desc = "Crystal-clear tropical shallows.", WaterTransparency = 0.75, WaterWaveSize = 0.08, WaterWaveSpeed = 8, WaterReflectance = 0.25},
		Glacier = {color = Color3.fromRGB(155, 205, 218), desc = "Pale, cold, highly reflective meltwater.", WaterTransparency = 0.35, WaterWaveSize = 0.03, WaterWaveSpeed = 3, WaterReflectance = 0.55},
		Swamp = {color = Color3.fromRGB(70, 84, 52), desc = "Murky, still green bayou water.", WaterTransparency = 0.12, WaterWaveSize = 0.02, WaterWaveSpeed = 2, WaterReflectance = 0.06},
		Abyss = {color = Color3.fromRGB(20, 32, 48), desc = "Dark volcanic mirror water with slow swells.", WaterTransparency = 0.18, WaterWaveSize = 0.09, WaterWaveSpeed = 6, WaterReflectance = 0.42},
	}

	local SYNTH_DOMAINS = {
		{name="Desert",tag="Arid sand, sandstone & salt flats",water="Lagoon",waterOn=false,top=M.Sand,alt=M.Salt,sub=M.Sand,cliff=M.Sandstone,bedrock=M.Sandstone,beach=M.Sand,height=96,sea=12,moisture=-0.25,treeAff=0.15},
		{name="Arctic",tag="Deep snowpack, permafrost & glacier ice",water="Glacier",waterOn=true,top=M.Snow,alt=M.Glacier,sub=M.Snow,cliff=M.Slate,bedrock=M.Rock,beach=M.Ice,height=152,sea=28,moisture=0.15,treeAff=0.35},
		{name="Volcanic",tag="Basalt crust, ash slate & glowing fissures",water="Abyss",waterOn=true,top=M.Slate,alt=M.CrackedLava,sub=M.Basalt,cliff=M.Basalt,bedrock=M.Basalt,beach=M.Basalt,height=188,sea=24,moisture=-0.15,treeAff=0.2},
		{name="Verdant",tag="Lush meadows, leafy canopy turf & stone",water="Tropical",waterOn=true,top=M.Grass,alt=M.LeafyGrass,sub=M.Ground,cliff=M.Rock,bedrock=M.Rock,beach=M.Sand,height=132,sea=26,moisture=0.25,treeAff=1.25},
		{name="Redrock",tag="Banded sandstone, dry scrub & canyon clay",water="Lagoon",waterOn=true,top=M.Ground,alt=M.Sand,sub=M.Sandstone,cliff=M.Sandstone,bedrock=M.Rock,beach=M.Sand,strata={M.Sandstone,M.Sandstone,M.Limestone,M.Ground},height=164,sea=20,moisture=-0.1,treeAff=0.4},
		{name="Coastal",tag="Sunlit sandbars, palms & limestone bluffs",water="Tropical",waterOn=true,top=M.LeafyGrass,alt=M.Sand,sub=M.Sand,cliff=M.Limestone,bedrock=M.Limestone,beach=M.Sand,height=118,sea=44,moisture=0.2,treeAff=1.05},
		{name="Highland",tag="Windswept moorland, cobble & dark slate",water="Ocean",waterOn=true,top=M.Grass,alt=M.Ground,sub=M.Ground,cliff=M.Slate,bedrock=M.Slate,beach=M.Cobblestone,height=176,sea=24,moisture=0.05,treeAff=0.8},
		{name="Mire",tag="Peat mudflats, moss banks & murky pools",water="Swamp",waterOn=true,top=M.LeafyGrass,alt=M.Mud,sub=M.Mud,cliff=M.Rock,bedrock=M.Rock,beach=M.Mud,height=82,sea=26,moisture=0.35,treeAff=1.2},
		{name="Limestone",tag="Pale mineral stone, karst cliffs & springs",water="Lagoon",waterOn=true,top=M.Grass,alt=M.Limestone,sub=M.Limestone,cliff=M.Limestone,bedrock=M.Rock,beach=M.Sand,strata={M.Limestone,M.Rock,M.Limestone},height=168,sea=28,moisture=0.1,treeAff=0.95},
		{name="Ashen",tag="Charred asphalt wasteland, cobble & basalt",water="Abyss",waterOn=false,top=M.Asphalt,alt=M.Cobblestone,sub=M.Basalt,cliff=M.Basalt,bedrock=M.Basalt,beach=M.Basalt,height=136,sea=16,moisture=-0.3,treeAff=0.15},
		{name="Savanna",tag="Sun-baked scrub grass, red earth & kopjes",water="Lagoon",waterOn=true,top=M.Grass,alt=M.Sand,sub=M.Ground,cliff=M.Sandstone,bedrock=M.Sandstone,beach=M.Sand,height=112,sea=18,moisture=-0.15,treeAff=0.55},
		{name="Glacial",tag="Pure blue ice sheets, snowdrifts & slate",water="Glacier",waterOn=true,top=M.Glacier,alt=M.Snow,sub=M.Ice,cliff=M.Ice,bedrock=M.Slate,beach=M.Ice,height=170,sea=32,moisture=0.2,treeAff=0.2},
		{name="Obsidian",tag="Black basalt glass, dark asphalt & magma",water="Abyss",waterOn=false,top=M.Basalt,alt=M.CrackedLava,sub=M.Basalt,cliff=M.Asphalt,bedrock=M.Basalt,beach=M.Basalt,height=196,sea=18,moisture=-0.25,treeAff=0.1},
		{name="Coral",tag="White salt-sand, reef shelves & clear lagoons",water="Tropical",waterOn=true,top=M.Salt,alt=M.LeafyGrass,sub=M.Sand,cliff=M.Limestone,bedrock=M.Limestone,beach=M.Sand,height=98,sea=40,moisture=0.18,treeAff=0.85},
		{name="Badland",tag="Layered claystone, dry mud & cobble beds",water="Lagoon",waterOn=false,top=M.Sandstone,alt=M.Cobblestone,sub=M.Sandstone,cliff=M.Limestone,bedrock=M.Sandstone,beach=M.Cobblestone,strata={M.Sandstone,M.Mud,M.Limestone,M.Ground},height=158,sea=14,moisture=-0.22,treeAff=0.2},
		{name="Mossland",tag="Thick mossy turf, ancient cobble & mist",water="Swamp",waterOn=true,top=M.LeafyGrass,alt=M.Cobblestone,sub=M.Ground,cliff=M.Slate,bedrock=M.Rock,beach=M.Cobblestone,height=140,sea=28,moisture=0.3,treeAff=1.3},
		{name="Fungal",tag="Bioluminescent fungal turf & mushroom cliffs",water="Tropical",waterOn=true,top=M.LeafyGrass,alt=M.Ground,sub=M.Mud,cliff=M.Slate,bedrock=M.Basalt,beach=M.Sand,height=128,sea=28,moisture=0.38,treeAff=1.4},
		{name="Crystal",tag="Crystalline salt terraces & ice spires",water="Glacier",waterOn=true,top=M.Salt,alt=M.Glacier,sub=M.Ice,cliff=M.Ice,bedrock=M.Slate,beach=M.Salt,height=162,sea=24,moisture=0.12,treeAff=0.1},
		{name="Tundra",tag="Lichen permafrost, peat bogs & boulders",water="Ocean",waterOn=true,top=M.Grass,alt=M.Snow,sub=M.Ground,cliff=M.Rock,bedrock=M.Rock,beach=M.Cobblestone,height=148,sea=22,moisture=0.1,treeAff=0.45},
		{name="Canyon",tag="Banded terracotta clay & dry arroyos",water="Lagoon",waterOn=false,top=M.Sandstone,alt=M.Ground,sub=M.Sandstone,cliff=M.Sandstone,bedrock=M.Rock,beach=M.Sand,strata={M.Sandstone,M.Ground,M.Sandstone,M.Limestone},height=182,sea=16,moisture=-0.18,treeAff=0.25},
		{name="Taiga",tag="Pine needle loam, mossy roots & dark granite",water="Ocean",waterOn=true,top=M.Ground,alt=M.LeafyGrass,sub=M.Ground,cliff=M.Rock,bedrock=M.Slate,beach=M.Cobblestone,height=156,sea=26,moisture=0.22,treeAff=1.35},
		{name="Sulfur",tag="Yellow sulfur pans & steaming basalt vents",water="Abyss",waterOn=true,top=M.Sandstone,alt=M.CrackedLava,sub=M.Basalt,cliff=M.Basalt,bedrock=M.Basalt,beach=M.Basalt,height=174,sea=20,moisture=-0.28,treeAff=0.05},
		{name="Jungle",tag="Emerald canopy, thick creepers & karst pools",water="Tropical",waterOn=true,top=M.Grass,alt=M.LeafyGrass,sub=M.Mud,cliff=M.Limestone,bedrock=M.Limestone,beach=M.Sand,height=144,sea=32,moisture=0.42,treeAff=1.5},
		{name="Abyssal",tag="Black oceanic basalt & coral sand bars",water="Abyss",waterOn=true,top=M.Sand,alt=M.Basalt,sub=M.Basalt,cliff=M.Basalt,bedrock=M.Basalt,beach=M.Sand,height=110,sea=48,moisture=0.25,treeAff=0.6},
	}

	local SYNTH_FEATURES = {
		{name="Stones",tag="Scattered boulder outcrops & rocky crags",rough=1.18,detail=1.22,warp=0.5,caves=0.08,terraces=0,sharp=1.1,flat=0.08,erosion=0.15,hMul=0.95},
		{name="Spires",tag="Jagged ridged needles & dramatic relief",rough=1.28,detail=1.15,warp=0.65,caves=0.15,terraces=0,sharp=1.45,flat=0,erosion=0.3,hMul=1.3},
		{name="Terraces",tag="Stepped plateau benches & cliff risers",rough=0.88,detail=0.85,warp=0.55,caves=0.05,terraces=6,sharp=1.0,flat=0.06,erosion=0.12,hMul=1.08},
		{name="Hollows",tag="Collapsed sinkholes & dense cave tunnels",rough=1.05,detail=1.05,warp=0.6,caves=0.58,terraces=0,sharp=1.15,flat=0.12,erosion=0.18,hMul=1.05},
		{name="Dunes",tag="Wind-rippled waves & sweeping drifts",rough=0.72,detail=0.8,warp=0.4,caves=0,terraces=0,sharp=0.85,flat=0,erosion=0.04,hMul=0.78},
		{name="Ravines",tag="Deep winding gorges slicing the terrain",rough=1.15,detail=1.0,warp=0.75,caves=0.2,terraces=3,sharp=1.05,flat=0,erosion=0.28,hMul=1.18},
		{name="Caldera",tag="Central crater ring & raised outer flanks",rough=0.95,detail=1.1,warp=0.48,caves=0.18,terraces=0,sharp=1.1,flat=0,erosion=0.25,hMul=1.25},
		{name="Buttes",tag="Isolated flat-topped pillars over wide basins",rough=0.92,detail=0.9,warp=0.52,caves=0.06,terraces=4,sharp=1.2,flat=0.26,erosion=0.2,hMul=1.12},
		{name="Islets",tag="Broken island clusters & flooded channels",rough=1.22,detail=0.95,warp=0.92,caves=0,terraces=0,sharp=1.15,flat=0,erosion=0.1,hMul=0.92,forceWater=true},
		{name="Plains",tag="Broad buildable basins & gentle swells",rough=0.62,detail=0.55,warp=0.38,caves=0,terraces=0,sharp=0.72,flat=0.34,erosion=0.05,hMul=0.68},
		{name="Atolls",tag="Ring-lagoon reef formation & inner bay",rough=1.02,detail=0.9,warp=0.68,caves=0,terraces=0,sharp=1.0,flat=0,erosion=0.05,hMul=0.82,forceWater=true},
		{name="Arches",tag="Undercut stone fins & natural 3D cave bridges",rough=1.2,detail=1.12,warp=0.62,caves=0.52,terraces=2,sharp=1.3,flat=0.14,erosion=0.22,hMul=1.22,arches=true},
		{name="Crags",tag="Heavily fluted escarpments & broken cliffs",rough=1.32,detail=1.28,warp=0.58,caves=0.14,terraces=2,sharp=1.35,flat=0,erosion=0.62,hMul=1.24},
		{name="Basins",tag="Sunken amphitheater bowls & highland rims",rough=0.84,detail=0.85,warp=0.52,caves=0.1,terraces=3,sharp=0.95,flat=0.24,erosion=0.15,hMul=1.05},
		{name="Rifts",tag="Parallel tectonic fault trenches & monoliths",rough=1.18,detail=1.1,warp=0.7,caves=0.32,terraces=4,sharp=1.22,flat=0,erosion=0.2,hMul=1.28,arches=true},
		{name="Ridges",tag="Long sinuous hogback mountain chains",rough=0.94,detail=1.05,warp=0.82,caves=0.1,terraces=0,sharp=1.28,flat=0.08,erosion=0.36,hMul=1.2},
		{name="Monoliths",tag="Sheer vertical monolith towers rising from plains",rough=1.24,detail=1.1,warp=0.64,caves=0.12,terraces=0,sharp=1.42,flat=0.22,erosion=0.25,hMul=1.28},
		{name="StepKarst",tag="Stepped limestone amphitheaters & sinkhole wells",rough=0.96,detail=0.92,warp=0.58,caves=0.42,terraces=5,sharp=1.12,flat=0.14,erosion=0.16,hMul=1.14},
		{name="Fjords",tag="Glacial canyon troughs meeting ocean waterline",rough=1.12,detail=1.05,warp=0.72,caves=0.08,terraces=0,sharp=1.38,flat=0,erosion=0.34,hMul=1.32,forceWater=true},
		{name="CraterField",tag="Cluster of overlapping circular impact craters",rough=0.88,detail=1.12,warp=0.44,caves=0.15,terraces=0,sharp=1.08,flat=0.18,erosion=0.18,hMul=1.15},
		{name="WarpFolds",tag="Twisted chevron fault folds & strata shearing",rough=1.35,detail=1.25,warp=0.92,caves=0.22,terraces=3,sharp=1.30,flat=0,erosion=0.42,hMul=1.26},
		{name="MushroomRocks",tag="Overhanging pedestal capstones & undercut fins",rough=1.18,detail=1.18,warp=0.68,caves=0.48,terraces=2,sharp=1.34,flat=0.12,erosion=0.38,hMul=1.22,arches=true},
		{name="Mesas",tag="Expansive flat-topped tablelands & sheer dry bluffs",rough=0.86,detail=0.78,warp=0.48,caves=0.05,terraces=3,sharp=1.25,flat=0.38,erosion=0.14,hMul=1.18},
		{name="Pillows",tag="Undulating convex pillow-lava dome mounds",rough=0.78,detail=0.82,warp=0.42,caves=0.06,terraces=0,sharp=0.82,flat=0.12,erosion=0.08,hMul=0.88},
	}

	local function compileSynthesizedStyle(domIdx, featIdx)
		local dom = SYNTH_DOMAINS[domIdx] or SYNTH_DOMAINS[1]
		local feat = SYNTH_FEATURES[featIdx] or SYNTH_FEATURES[1]
		local mode = feat.name
		local strataFn = dom.strata and makeStrataSampler(dom.strata, 7) or nil
		local stoneRock = (dom.cliff == M.Sandstone or dom.cliff == M.Limestone or dom.cliff == M.Basalt or dom.cliff == M.Slate) and dom.cliff or M.Rock

		STYLES.Synthesized = {
			desc = string.format("%s + %s — %s; %s.", dom.name, feat.name, string.lower(dom.tag), string.lower(feat.tag)),
			notes = string.format("Synthesized by pairing Primary Domain [%s] with Feature [%s] (1 of %d combinations).", dom.name, feat.name, #SYNTH_DOMAINS * #SYNTH_FEATURES),
			materials = string.format("%s · %s · %s cliffs", dom.top.Name, dom.alt.Name, dom.cliff.Name),
			palette = {dom.top, dom.alt, dom.cliff, stoneRock},
			preset = {}, water = dom.water, ridge = true, arches = feat.arches == true, treeAffinity = dom.treeAff or 0.8,
			sub = dom.sub, cliff = dom.cliff, bedrock = dom.bedrock, beach = dom.beach, trailMat = M.Cobblestone, strataAt = strataFn,
			shape = function(n)
				local b = n.base
				if mode == "Stones" then
					local boulders = clamp(n.ridge - 0.48, 0, 1) * 0.34 + math.max(0, n.fine) * 0.08
					return 0.16 + b * 0.46 + boulders, boulders * 2.2
				elseif mode == "Spires" or mode == "Crags" then
					local r = clamp((n.ridge - 0.22) / 0.68, 0, 1)
					return 0.08 + b * 0.26 + (r ^ 1.55) * 0.68 + n.fine * 0.035, r
				elseif mode == "Terraces" then return terrace(0.14 + b * 0.68, 6, 0.26) + n.fine * 0.02, b
				elseif mode == "Hollows" then
					local pit = smoothstep(0.32, 0.1, b + n.medium * 0.25)
					return clamp(0.24 + b * 0.56 - pit * 0.24 + n.fine * 0.03, 0.04, 0.98), pit
				elseif mode == "Dunes" then
					local wave = 1 - math.abs(math.sin((n.px * 0.82 + n.pz * 0.48) * 24 + n.medium * 5.5))
					return 0.2 + b * 0.34 + (wave * wave) * 0.18 + n.fine * 0.025, wave
				elseif mode == "Ravines" then
					local cut = smoothstep(0.02, 0.19, math.abs(n.medium + n.fine * 0.03))
					return 0.08 + (0.28 + b * 0.54) * cut + n.fine * 0.02, 1 - cut
				elseif mode == "Caldera" then
					local r = n.radial0 + (n.radial - n.radial0) * 0.35 + n.fine * 0.04
					local crater = smoothstep(0.18, 0.07, r)
					return 0.12 + b * 0.22 + ((1 - clamp(r, 0, 1)) ^ 1.65) * 0.64 - crater * 0.36, crater
				elseif mode == "Buttes" then
					local cap = smoothstep(0.52, 0.62, b + n.fine * 0.04)
					return 0.14 + b * 0.16 + cap * 0.48, cap
				elseif mode == "Islets" then
					local isle = smoothstep(0.38, 0.76, b + n.medium * 0.3)
					return 0.03 + smoothstep(1.15, 0.4, n.radial0) * isle * (0.44 + clamp(n.ridge - 0.4, 0, 1) * 0.35), isle
				elseif mode == "Atolls" then
					local r = n.radial * 0.75 + n.radial0 * 0.25 + n.broad * 0.18
					local ring = math.exp(-(((r - 0.56) / 0.19) ^ 2))
					return 0.12 + ring * (0.3 + smoothstep(0.28, 0.66, b + n.medium * 0.32) * 0.46) + n.fine * 0.025, ring
				elseif mode == "Arches" then
					local fin = clamp((n.ridge - 0.28) / 0.62, 0, 1) ^ 1.35
					return 0.12 + b * 0.24 + fin * 0.64 + n.fine * 0.03, fin
				elseif mode == "Basins" then
					local bowl = smoothstep(0.45, 0.14, math.abs(n.broad * 1.35))
					return clamp(0.38 + b * 0.36 - bowl * 0.32 + n.fine * 0.025, 0.06, 0.96), bowl
				elseif mode == "Rifts" then
					local rift = smoothstep(0.025, 0.11, math.abs(n.medium))
					return 0.05 + (0.46 + clamp(n.ridge - 0.35, 0, 1) * 0.4) * rift + n.fine * 0.025, 1 - rift
				elseif mode == "Ridges" then
					local chain = clamp(1 - math.abs(n.broad * 0.65 + n.medium * 0.55), 0, 1) ^ 2.2
					return 0.1 + b * 0.24 + chain * 0.64 + n.fine * 0.03, chain
				elseif mode == "Monoliths" then
					local pillar = smoothstep(0.48, 0.68, n.radial * 0.4 + math.abs(n.ridge) * 0.6)
					return 0.12 + b * 0.22 + pillar * 0.72 + n.fine * 0.02, pillar
				elseif mode == "StepKarst" then
					local karst = terrace(0.12 + b * 0.62 + n.medium * 0.2, 5, 0.28)
					local sinkhole = smoothstep(0.24, 0.08, n.radial0 + n.fine * 0.1)
					return clamp(karst - sinkhole * 0.28 + n.fine * 0.02, 0.05, 0.98), sinkhole
				elseif mode == "Fjords" then
					local valley = math.abs(n.broad * 0.8 + n.medium * 0.35)
					local trough = smoothstep(0.04, 0.28, valley)
					return 0.04 + (0.32 + b * 0.52) * trough + n.fine * 0.025, 1 - trough
				elseif mode == "CraterField" then
					local c1 = smoothstep(0.22, 0.08, ((n.px * 3.5) % 1 - 0.5) ^ 2 + ((n.pz * 3.5) % 1 - 0.5) ^ 2)
					return clamp(0.22 + b * 0.42 - c1 * 0.24 + n.fine * 0.03, 0.05, 0.96), c1
				elseif mode == "WarpFolds" then
					local fold = math.sin((n.px + n.pz) * 16 + n.medium * 8) * 0.22
					return 0.15 + b * 0.42 + math.abs(fold) + n.fine * 0.03, math.abs(fold) * 3
				elseif mode == "MushroomRocks" then
					local cap = smoothstep(0.42, 0.58, b + n.medium * 0.3)
					return 0.14 + b * 0.18 + cap * 0.58 + n.fine * 0.025, cap
				elseif mode == "Mesas" then
					local tableland = smoothstep(0.38, 0.52, b + n.broad * 0.25)
					return 0.16 + b * 0.14 + tableland * 0.62, tableland
				elseif mode == "Pillows" then
					local dome = math.cos(n.px * 28 + n.fine * 4) * math.cos(n.pz * 28 + n.fine * 4) * 0.18
					return 0.18 + b * 0.42 + math.max(0, dome) + n.fine * 0.02, math.max(0, dome) * 4
				else
					return 0.18 + (b * b * (3 - 2 * b)) * 0.42 + n.fine * 0.02, 0
				end
			end,
			surface = function(c)
				if c.slope > 1.05 then return strataFn and strataFn(c.h) or dom.cliff end
				if mode == "Stones" and (c.feature > 0.32 or (c.slope > 0.58 and c.moisture < 0.15)) then
					return c.feature > 0.52 and M.Cobblestone or stoneRock
				end
				if (mode == "Caldera" or mode == "Rifts") and c.feature > 0.52 then return dom.alt end
				if mode == "Ravines" and c.feature > 0.75 and c.slope < 0.55 then return dom.beach or dom.alt end
				if c.rel > 0.78 and c.slope > 0.5 then return stoneRock end
				if c.moisture > 0.22 or (c.moisture < -0.32 and c.slope < 0.25) then return dom.alt end
				return dom.top
			end,
		}
		return dom, feat
	end
	compileSynthesizedStyle(1, 1)

	-- 8 Planetary Archetypes for the Enhanced 3D Planetarium
	local PLANET_ARCHETYPES = {
		{
			id = "Gaia", name = "Gaia Terran", badge = "CLASS-M HABITABLE",
			desc = "Sapphire oceans, emerald continents, trade-wind cumulus bands, and nitrogen-oxygen Rayleigh scatter.",
			crustCol = Color3.fromRGB(58, 138, 72), ridgeCol = Color3.fromRGB(122, 118, 108),
			oceanCol = Color3.fromRGB(22, 114, 198), atmoCol = Color3.fromRGB(92, 184, 255),
			nebulaCol = Color3.fromRGB(36, 98, 168), coreCol = Color3.fromRGB(255, 148, 58),
			crustMat = M.Grass, plateMat = M.Rock,
			hydro = 0.64, atmo = 0.46, haze = 0.22, volcanic = 0.06, cryo = 0.26, relief = 0.52, flora = 0.82,
			gravityG = 1.00, windSpeed = 14, rings = false, moons = 1, spinRpm = 2.2, tilt = 23.5, solarTime = 13.5,
			mapStyle = "Archipelago", matTheme = "Lush", waterPreset = "Tropical",
			skyType = "Earthly", audioType = "Earthly",
		},
		{
			id = "Ashen", name = "Ashen Cinder", badge = "CLASS-D ASH WORLD",
			desc = "Charcoal-gray basaltic ash plains, soot-choked slate sky, dormant calderas, and dark sulfur basins.",
			crustCol = Color3.fromRGB(92, 94, 100), ridgeCol = Color3.fromRGB(58, 60, 66),
			oceanCol = Color3.fromRGB(56, 62, 68), atmoCol = Color3.fromRGB(158, 154, 150),
			nebulaCol = Color3.fromRGB(82, 78, 86), coreCol = Color3.fromRGB(238, 112, 52),
			crustMat = M.Slate, plateMat = M.Basalt,
			hydro = 0.12, atmo = 0.68, haze = 0.76, volcanic = 0.34, cryo = 0.04, relief = 0.48, flora = 0.04,
			gravityG = 0.88, windSpeed = 28, rings = true, moons = 2, spinRpm = 1.6, tilt = 14.0, solarTime = 16.8,
			mapStyle = "Shattered", matTheme = "Scorched", waterPreset = "Abyss",
			skyType = "Ashen", audioType = "Remnant",
		},
		{
			id = "Volcanic", name = "Volcanic Inferno", badge = "CLASS-Y MAGMA CORE",
			desc = "Obsidian tectonic plates split by incandescent magma seas, glowing rim calderas, and ember haze.",
			crustCol = Color3.fromRGB(44, 34, 38), ridgeCol = Color3.fromRGB(255, 96, 32),
			oceanCol = Color3.fromRGB(255, 84, 22), atmoCol = Color3.fromRGB(255, 108, 48),
			nebulaCol = Color3.fromRGB(168, 48, 32), coreCol = Color3.fromRGB(255, 178, 48),
			crustMat = M.Basalt, plateMat = M.CrackedLava,
			hydro = 0.32, atmo = 0.74, haze = 0.86, volcanic = 0.94, cryo = 0.00, relief = 0.80, flora = 0.00,
			gravityG = 1.30, windSpeed = 42, rings = false, moons = 1, spinRpm = 3.0, tilt = 8.5, solarTime = 18.2,
			mapStyle = "Volcanic", matTheme = "Scorched", waterPreset = "Abyss",
			skyType = "VolcanicMagma", audioType = "Volcanic",
		},
		{
			id = "Cryo", name = "Cryo Permafrost", badge = "CLASS-P ICE GLOBE",
			desc = "Sub-zero nitrogen ice sheets, sapphire subsurface brine oceans, diamond dust rings, and polar glaciers.",
			crustCol = Color3.fromRGB(192, 230, 250), ridgeCol = Color3.fromRGB(236, 248, 255),
			oceanCol = Color3.fromRGB(54, 158, 218), atmoCol = Color3.fromRGB(152, 226, 255),
			nebulaCol = Color3.fromRGB(48, 128, 188), coreCol = Color3.fromRGB(110, 205, 255),
			crustMat = M.Glacier, plateMat = M.Ice,
			hydro = 0.48, atmo = 0.38, haze = 0.36, volcanic = 0.02, cryo = 0.94, relief = 0.66, flora = 0.12,
			gravityG = 0.76, windSpeed = 32, rings = true, moons = 2, spinRpm = 2.0, tilt = 31.0, solarTime = 10.4,
			mapStyle = "Fjords", matTheme = "Frost", waterPreset = "Glacier",
			skyType = "Ice", audioType = "Snowy",
		},
		{
			id = "Dune", name = "Dune Terracotta", badge = "CLASS-H ARID GLOBE",
			desc = "Sun-baked redrock ergs, canyon mesas, amber dust-storm scattering, and oasis salt basins.",
			crustCol = Color3.fromRGB(212, 152, 92), ridgeCol = Color3.fromRGB(174, 98, 60),
			oceanCol = Color3.fromRGB(48, 152, 156), atmoCol = Color3.fromRGB(246, 184, 114),
			nebulaCol = Color3.fromRGB(156, 92, 46), coreCol = Color3.fromRGB(255, 162, 72),
			crustMat = M.Sandstone, plateMat = M.Limestone,
			hydro = 0.08, atmo = 0.56, haze = 0.66, volcanic = 0.12, cryo = 0.04, relief = 0.58, flora = 0.08,
			gravityG = 0.94, windSpeed = 36, rings = false, moons = 1, spinRpm = 2.1, tilt = 19.5, solarTime = 15.8,
			mapStyle = "Mesa", matTheme = "Autumn", waterPreset = "Lagoon",
			skyType = "Venusian", audioType = "Desert",
		},
		{
			id = "Pelagic", name = "Pelagic Thalassa", badge = "CLASS-O AQUA WORLD",
			desc = "Global deep-trench hydrosphere dotted with ring atolls, limestone sea stacks, and cyclone cloud belts.",
			crustCol = Color3.fromRGB(74, 168, 118), ridgeCol = Color3.fromRGB(216, 202, 164),
			oceanCol = Color3.fromRGB(14, 108, 192), atmoCol = Color3.fromRGB(84, 202, 248),
			nebulaCol = Color3.fromRGB(24, 112, 172), coreCol = Color3.fromRGB(68, 196, 255),
			crustMat = M.Limestone, plateMat = M.Sand,
			hydro = 0.88, atmo = 0.54, haze = 0.30, volcanic = 0.06, cryo = 0.14, relief = 0.42, flora = 0.68,
			gravityG = 0.92, windSpeed = 22, rings = false, moons = 1, spinRpm = 2.7, tilt = 15.0, solarTime = 12.6,
			mapStyle = "Atoll", matTheme = "Lush", waterPreset = "Tropical",
			skyType = "Earthly", audioType = "Watery",
		},
		{
			id = "Xeno", name = "Xeno Biolume", badge = "CLASS-X EXOTIC BIO",
			desc = "Violet-cyan magnetosphere, bioluminescent fungal continents, Cassini ice rings, and low-G spore mist.",
			crustCol = Color3.fromRGB(52, 168, 154), ridgeCol = Color3.fromRGB(152, 94, 228),
			oceanCol = Color3.fromRGB(28, 184, 178), atmoCol = Color3.fromRGB(172, 112, 255),
			nebulaCol = Color3.fromRGB(98, 52, 168), coreCol = Color3.fromRGB(88, 248, 220),
			crustMat = M.LeafyGrass, plateMat = M.Slate,
			hydro = 0.56, atmo = 0.62, haze = 0.48, volcanic = 0.24, cryo = 0.18, relief = 0.66, flora = 0.96,
			gravityG = 0.62, windSpeed = 18, rings = true, moons = 2, spinRpm = 3.4, tilt = 28.5, solarTime = 19.2,
			mapStyle = "Karst", matTheme = "Alien", waterPreset = "Tropical",
			skyType = "Biolume", audioType = "Biolume",
		},
		{
			id = "Fractured", name = "Fractured Remnant", badge = "CLASS-Z SHATTERED",
			desc = "Low-gravity airless moon-world scarred by ringed impact craters, exposed core rifts, and debris rings.",
			crustCol = Color3.fromRGB(116, 118, 128), ridgeCol = Color3.fromRGB(78, 80, 92),
			oceanCol = Color3.fromRGB(186, 88, 255), atmoCol = Color3.fromRGB(132, 148, 192),
			nebulaCol = Color3.fromRGB(64, 72, 118), coreCol = Color3.fromRGB(255, 118, 208),
			crustMat = M.Rock, plateMat = M.Cobblestone,
			hydro = 0.00, atmo = 0.10, haze = 0.08, volcanic = 0.68, cryo = 0.30, relief = 0.88, flora = 0.00,
			gravityG = 0.34, windSpeed = 4, rings = true, moons = 2, spinRpm = 4.0, tilt = 41.0, solarTime = 6.6,
			mapStyle = "Badlands", matTheme = "Frost", waterPreset = "Abyss",
			skyType = "Remnant", audioType = "Remnant",
		},
		{
			id = "Tartarus", name = "Tartarus Caldera", badge = "CLASS-Y HYPERTHERMAL",
			desc = "Incandescent superheated basalt mantle split by violent magma trenches, brimstone haze, and active calderas.",
			crustCol = Color3.fromRGB(36, 26, 30), ridgeCol = Color3.fromRGB(255, 68, 18),
			oceanCol = Color3.fromRGB(255, 118, 22), atmoCol = Color3.fromRGB(255, 84, 36),
			nebulaCol = Color3.fromRGB(182, 38, 24), coreCol = Color3.fromRGB(255, 210, 48),
			crustMat = M.Basalt, plateMat = M.CrackedLava,
			hydro = 0.28, atmo = 0.82, haze = 0.88, volcanic = 0.98, cryo = 0.00, relief = 0.85, flora = 0.00,
			gravityG = 1.45, windSpeed = 48, rings = true, moons = 1, spinRpm = 3.6, tilt = 12.0, solarTime = 17.5,
			mapStyle = "Volcanic", matTheme = "Scorched", waterPreset = "Abyss",
			skyType = "HeavyVolcanic", audioType = "HeavyVolcanic",
		},
		{
			id = "Boreas", name = "Boreas Glacial", badge = "CLASS-P DEEP CRYO",
			desc = "Sub-zero methane permafrost plains, sapphire glacier scarps, diamond-dust halo rings, and howling polar gales.",
			crustCol = Color3.fromRGB(214, 242, 255), ridgeCol = Color3.fromRGB(172, 224, 252),
			oceanCol = Color3.fromRGB(28, 96, 188), atmoCol = Color3.fromRGB(178, 234, 255),
			nebulaCol = Color3.fromRGB(38, 118, 198), coreCol = Color3.fromRGB(130, 226, 255),
			crustMat = M.Glacier, plateMat = M.Ice,
			hydro = 0.52, atmo = 0.44, haze = 0.40, volcanic = 0.01, cryo = 0.98, relief = 0.72, flora = 0.06,
			gravityG = 0.82, windSpeed = 38, rings = true, moons = 2, spinRpm = 1.8, tilt = 34.0, solarTime = 9.2,
			mapStyle = "Fjords", matTheme = "Frost", waterPreset = "Glacier",
			skyType = "Ice", audioType = "HeavySnow",
		},
		{
			id = "Oceanus", name = "Oceanus Abyss", badge = "CLASS-O ABYSSAL WORLD",
			desc = "Global abyssal ocean exceeding 20km depth, bioluminescent shallows, cyclonic rainbands, and limestone sea spires.",
			crustCol = Color3.fromRGB(26, 142, 168), ridgeCol = Color3.fromRGB(78, 204, 194),
			oceanCol = Color3.fromRGB(12, 74, 168), atmoCol = Color3.fromRGB(74, 184, 244),
			nebulaCol = Color3.fromRGB(18, 104, 182), coreCol = Color3.fromRGB(46, 224, 255),
			crustMat = M.Sand, plateMat = M.Limestone,
			hydro = 0.94, atmo = 0.58, haze = 0.28, volcanic = 0.04, cryo = 0.10, relief = 0.38, flora = 0.74,
			gravityG = 0.95, windSpeed = 24, rings = false, moons = 1, spinRpm = 2.4, tilt = 14.2, solarTime = 12.0,
			mapStyle = "Atoll", matTheme = "Lush", waterPreset = "Tropical",
			skyType = "AlienEarthly", audioType = "Watery",
		},
		{
			id = "Ares", name = "Ares Rustlands", badge = "CLASS-H RED WASTES",
			desc = "Towering iron-oxide shield volcanoes, ancient dry river canyons, howling sandstorms, and thin amber haze.",
			crustCol = Color3.fromRGB(192, 86, 56), ridgeCol = Color3.fromRGB(138, 56, 36),
			oceanCol = Color3.fromRGB(88, 48, 42), atmoCol = Color3.fromRGB(236, 138, 98),
			nebulaCol = Color3.fromRGB(168, 76, 42), coreCol = Color3.fromRGB(255, 142, 58),
			crustMat = M.Sandstone, plateMat = M.Rock,
			hydro = 0.04, atmo = 0.32, haze = 0.58, volcanic = 0.16, cryo = 0.08, relief = 0.68, flora = 0.02,
			gravityG = 0.38, windSpeed = 44, rings = false, moons = 2, spinRpm = 2.0, tilt = 25.2, solarTime = 14.8,
			mapStyle = "Mesa", matTheme = "Autumn", waterPreset = "Lagoon",
			skyType = "Desert", audioType = "Desert",
		},
		{
			id = "Sylva", name = "Sylva Canopy", badge = "CLASS-M SUPER-HABITABLE",
			desc = "Colossal mega-flora root spires, cascading waterfall valleys, oxygen-saturated cyan atmosphere, and dense jungle canopy.",
			crustCol = Color3.fromRGB(38, 168, 88), ridgeCol = Color3.fromRGB(16, 102, 52),
			oceanCol = Color3.fromRGB(28, 148, 224), atmoCol = Color3.fromRGB(118, 218, 255),
			nebulaCol = Color3.fromRGB(28, 124, 186), coreCol = Color3.fromRGB(88, 255, 154),
			crustMat = M.Grass, plateMat = M.LeafyGrass,
			hydro = 0.72, atmo = 0.52, haze = 0.24, volcanic = 0.04, cryo = 0.18, relief = 0.56, flora = 0.95,
			gravityG = 1.05, windSpeed = 16, rings = false, moons = 1, spinRpm = 2.3, tilt = 21.0, solarTime = 13.0,
			mapStyle = "Terraces", matTheme = "Lush", waterPreset = "Tropical",
			skyType = "AlienEarthly", audioType = "BiolumeEarthly",
		},
		{
			id = "Erebus", name = "Erebus Eclipse", badge = "CLASS-K OBSIDIAN TOMB",
			desc = "Post-stellar obsidian cinder world shrouded in charcoal dust rings, pitch-black slate crags, and faint violet aurora bands.",
			crustCol = Color3.fromRGB(44, 46, 54), ridgeCol = Color3.fromRGB(24, 26, 32),
			oceanCol = Color3.fromRGB(74, 38, 94), atmoCol = Color3.fromRGB(114, 88, 144),
			nebulaCol = Color3.fromRGB(68, 48, 98), coreCol = Color3.fromRGB(192, 88, 255),
			crustMat = M.Basalt, plateMat = M.Slate,
			hydro = 0.08, atmo = 0.24, haze = 0.45, volcanic = 0.42, cryo = 0.22, relief = 0.78, flora = 0.01,
			gravityG = 0.72, windSpeed = 12, rings = true, moons = 2, spinRpm = 3.2, tilt = 38.0, solarTime = 21.4,
			mapStyle = "Badlands", matTheme = "Scorched", waterPreset = "Abyss",
			skyType = "Ashen", audioType = "Remnant",
		},
	}

	-- Authentic Planetary Skybox Cubemaps & Environmental Audio Suites
	local PLANET_SKYBOXES = {
		Volcanic = {
			name = "Volcanic / Lava 1",
			SkyboxBk = "rbxassetid://123450674043674",
			SkyboxDn = "rbxassetid://84892181423810",
			SkyboxFt = "rbxassetid://96057940895723",
			SkyboxLf = "rbxassetid://115474632610950",
			SkyboxRt = "rbxassetid://96985335287535",
			SkyboxUp = "rbxassetid://87015174865972",
		},
		VolcanicMagma = {
			name = "Volcanic 2 / Magma 2",
			SkyboxBk = "rbxassetid://9701866137",
			SkyboxDn = "rbxassetid://9701873352",
			SkyboxFt = "rbxassetid://9701856260",
			SkyboxLf = "rbxassetid://9701862744",
			SkyboxRt = "rbxassetid://9701870276",
			SkyboxUp = "rbxassetid://9701852487",
		},
		HeavyVolcanic = {
			name = "Heavy Volcanic 3 / Magma 3",
			SkyboxBk = "rbxassetid://11730840088",
			SkyboxDn = "rbxassetid://11730842997",
			SkyboxFt = "rbxassetid://11730849615",
			SkyboxLf = "rbxassetid://11730852920",
			SkyboxRt = "rbxassetid://11730855491",
			SkyboxUp = "rbxassetid://11730857150",
		},
		Venusian = {
			name = "Venusian Yellowish",
			SkyboxBk = "rbxassetid://83819020062581",
			SkyboxDn = "rbxassetid://127478764151479",
			SkyboxFt = "rbxassetid://134341176119465",
			SkyboxLf = "rbxassetid://75860781528753",
			SkyboxRt = "rbxassetid://120579571549952",
			SkyboxUp = "rbxassetid://137128137492980",
		},
		Ashen = {
			name = "Ashen / Gray",
			SkyboxBk = "rbxassetid://10368956403",
			SkyboxDn = "rbxassetid://10368977332",
			SkyboxFt = "rbxassetid://10368932800",
			SkyboxLf = "rbxassetid://10368945501",
			SkyboxRt = "rbxassetid://10368965543",
			SkyboxUp = "rbxassetid://10368926442",
		},
		Biolume = {
			name = "Biolume / Purple Alien",
			SkyboxBk = "rbxassetid://85659192210345",
			SkyboxDn = "rbxassetid://125800208970549",
			SkyboxFt = "rbxassetid://122865239695599",
			SkyboxLf = "rbxassetid://84079751210910",
			SkyboxRt = "rbxassetid://91605229162923",
			SkyboxUp = "rbxassetid://93040478228924",
		},
		AlienEarthly = {
			name = "Alien Earthly / Earthly 2",
			SkyboxBk = "rbxassetid://70745689",
			SkyboxDn = "rbxassetid://70745650",
			SkyboxFt = "rbxassetid://70745654",
			SkyboxLf = "rbxassetid://70745673",
			SkyboxRt = "rbxassetid://70745661",
			SkyboxUp = "rbxassetid://70745685",
		},
		Ice = {
			name = "Ice / Cryo",
			SkyboxBk = "rbxassetid://18971368068",
			SkyboxDn = "rbxassetid://18971365073",
			SkyboxFt = "rbxassetid://18971357616",
			SkyboxLf = "rbxassetid://18971376424",
			SkyboxRt = "rbxassetid://18971378277",
			SkyboxUp = "rbxassetid://18971370215",
		},
		Remnant = {
			name = "Remnant / Ash",
			SkyboxBk = "rbxassetid://155444384",
			SkyboxDn = "rbxassetid://149677032",
			SkyboxFt = "rbxassetid://155444397",
			SkyboxLf = "rbxassetid://155444368",
			SkyboxRt = "rbxassetid://155444372",
			SkyboxUp = "rbxassetid://155444404",
		},
		Earthly = {
			name = "Gaia Terran / Earthly",
			SkyboxBk = "rbxassetid://654808887",
			SkyboxDn = "rbxassetid://654809167",
			SkyboxFt = "rbxassetid://654808760",
			SkyboxLf = "rbxassetid://654809248",
			SkyboxRt = "rbxassetid://654809043",
			SkyboxUp = "rbxassetid://654808635",
		},
		Gaia = {
			name = "Gaia Terran",
			SkyboxBk = "rbxassetid://654808887",
			SkyboxDn = "rbxassetid://654809167",
			SkyboxFt = "rbxassetid://654808760",
			SkyboxLf = "rbxassetid://654809248",
			SkyboxRt = "rbxassetid://654809043",
			SkyboxUp = "rbxassetid://654808635",
		},
		Desert = {
			name = "Desert-like / Mars",
			SkyboxBk = "rbxassetid://14362084333",
			SkyboxDn = "rbxassetid://14362053475",
			SkyboxFt = "rbxassetid://14362090310",
			SkyboxLf = "rbxassetid://14362098512",
			SkyboxRt = "rbxassetid://14362105403",
			SkyboxUp = "rbxassetid://14362064903",
		},
		DeepSpace = {
			name = "Deep Space Cosmos",
			SkyboxBk = "rbxassetid://243002141",
			SkyboxDn = "rbxassetid://243002345",
			SkyboxFt = "rbxassetid://243002245",
			SkyboxLf = "rbxassetid://243002198",
			SkyboxRt = "rbxassetid://243002287",
			SkyboxUp = "rbxassetid://243002395",
		},
	}

	local PLANET_AUDIO = {
		Earthly = {
			ambient = {
				{id = "rbxassetid://9112801967", vol = 0.55, pitch = 1.0, loop = true, name = "EarthlyAtmosphere"},
			},
		},
		BiolumeEarthly = {
			ambient = {
				{id = "rbxassetid://139786277679262", vol = 0.56, pitch = 1.0, loop = true, name = "BiolumeEarthlyAmbience"},
				{id = "rbxassetid://9112801967", vol = 0.28, pitch = 1.0, loop = true, name = "EarthlySubtone"},
			},
		},
		Biolume = {
			ambient = {
				{id = "rbxassetid://139668444963836", vol = 0.55, pitch = 1.0, loop = true, name = "BiolumeAlienAmbience"},
			},
		},
		Watery = {
			ambient = {
				{id = "rbxassetid://137086424700822", vol = 0.52, pitch = 1.0, loop = true, name = "WateryAtmosphere"},
			},
		},
		Desert = {
			ambient = {
				{id = "rbxassetid://143501865", vol = 0.50, pitch = 0.95, loop = true, name = "DesertAtmosphere"},
			},
		},
		Snowy = {
			ambient = {
				{id = "rbxassetid://139725280625973", vol = 0.48, pitch = 1.0, loop = true, name = "SnowyBlizzard"},
				{id = "rbxassetid://143501865", vol = 0.32, pitch = 1.12, loop = true, name = "SnowyWind"},
			},
		},
		HeavySnow = {
			ambient = {
				{id = "rbxassetid://123731555496199", vol = 0.54, pitch = 1.0, loop = true, name = "HeavySnowGale"},
				{id = "rbxassetid://139725280625973", vol = 0.30, pitch = 0.95, loop = true, name = "FrostUndercurrent"},
			},
		},
		Volcanic = {
			ambient = {
				{id = "rbxassetid://74613804928235", vol = 0.52, pitch = 1.0, loop = true, name = "VolcanicLavaAmbience"},
				{id = "rbxassetid://213203829", vol = 0.45, pitch = 0.98, loop = true, name = "VolcanicInfernoLoop"},
			},
			quake = {id = "rbxassetid://5870958093", vol = 0.72, minSec = 5, maxSec = 10, shake = true, shakeDur = 1.35, shakeInt = 0.65},
			burst = {id = "rbxassetid://95838414628747", vol = 0.58, minSec = 3, maxSec = 6, shake = false},
		},
		HeavyVolcanic = {
			ambient = {
				{id = "rbxassetid://9085909202", vol = 0.55, pitch = 1.0, loop = true, name = "MagmaChamberLoop"},
				{id = "rbxassetid://213203829", vol = 0.48, pitch = 1.02, loop = true, name = "VolcanicDeepLoop"},
			},
			quake = {id = "rbxassetid://5870958093", vol = 0.78, minSec = 5, maxSec = 10, shake = true, shakeDur = 1.45, shakeInt = 0.75},
			burst = {id = "rbxassetid://95838414628747", vol = 0.62, minSec = 3, maxSec = 6, shake = false},
		},
		Remnant = {
			ambient = {
				{id = "rbxassetid://143501865", vol = 0.28, pitch = 0.62, loop = true, name = "RemnantDeepWind"},
			},
		},
	}

	----------------------------------------------------------------------------------------------------
	-- 6. UNIFIED ENGINE STATE, PERFORMANCE, PLANET, ATLAS, BRUSH & LABS REGISTRIES
	----------------------------------------------------------------------------------------------------
	local alive = true
	local connections = {}
	local function bind(conn) table.insert(connections, conn); return conn end

	local writeMode = hasMethod(Terrain, "WriteVoxelChannels") and "Channels" or (hasMethod(Terrain, "WriteVoxels") and "Legacy" or "Unavailable")
	local readMode = hasMethod(Terrain, "ReadVoxelChannels") and "Channels" or (hasMethod(Terrain, "ReadVoxels") and "Legacy" or "Unavailable")
	local CAN_SNAPSHOT = hasMethod(Terrain, "CopyRegion") and hasMethod(Terrain, "PasteRegion")

	local state = {
		style = "Rolling", waterPreset = "Ocean", materialTheme = "Default", waterEnabled = true,
		activePage = "Terrain", busy = false, rolling = false, job = nil,
		generateArmed = false, clearArmed = false, armToken = nil, clearToken = nil,
		toggleToken = nil, pageToken = nil, windowOpen = true, showBounds = false,
		replacePrevious = true, confirmGenerate = true, squareLock = true, autoTeleport = false,
		soundEnabled = true, soundVolume = 0.45, synthDomain = 1, synthFeature = 1,
		lockDomain = false, lockFeature = false,
		minimized = false, taskbarDocked = false,
		-- Expanded World QoL
		worldClockTime = Lighting.ClockTime, worldBrightness = Lighting.Brightness,
		worldCameraFov = 70, worldExplorerBoost = false, worldWalkSpeed = 38, worldJumpPower = 85,
		worldLowGravity = false,
	}

	local perf = {
		profile = "Balanced", lowLagChunks = false, previewOnRelease = false,
		ecoAnimations = false, decoration = true, globalShadows = Lighting.GlobalShadows,
		distanceFogLod = true, frameBudgetMs = 10, voxelBudgetK = 220, previewMs = 80, brushHz = 45,
		tileCols = 96, -- Sector edge in voxels (decoupled from profile name so manual tuning never resets it)
		hist = {}, histMax = 128, dtRing = table.create(128, 1 / 60), dtIdx = 0, lastSample = 0, benchmarking = false,
	}

	local planet = {
		archetype = "Gaia", seed = 4082,
		hydro = 0.64, atmo = 0.46, haze = 0.22, volcanic = 0.06, cryo = 0.26,
		relief = 0.52, flora = 0.82, gravityG = 1.00, windSpeed = 14,
		rings = false, ringTilt = 14, moons = 1, spinRpm = 2.2, tilt = 23.5, solarTime = 13.5,
		atmoDrag = 1.0, orbitalDrift = false, tideSwell = 0.0, spaceFloat = false, solarSpeed = 0.0, auroraActive = false,
		liveSkySync = false, liveGravitySync = false, autoSpin = true,
		autoSkySync = true, audioEnabled = false,
		activeSkyKey = nil, activeAudioKey = nil,
		hiddenOldSky = nil, soundFolder = nil, activeSounds = {},
		nextQuakeTick = 0, nextBurstTick = 0,
		shakeActive = false, shakeIntensity = 0, shakeStartTime = 0, shakeDuration = 1.0,
		yaw = 0.4, pitch = 0.16, zoom = 16.8, moonAngle = 0.8,
		dragging = false, lastMouse = Vector2.zero,
	}

	local atlas = {
		zoom = 1.0, targetZoom = 1.0, centerU = 0.5, centerV = 0.5, showGrid = true, showMarkers = true,
		panning = false, panStartMouse = nil, panStartU = 0.5, panStartV = 0.5,
		dirty = true, lastClickTime = 0,
		relief = true, followPlayer = false, gridG = 4, hoverU = nil, hoverV = nil,
		cacheSampler = nil, cacheCfg = nil, cacheStyle = nil, cacheBounds = nil,
	}

	local brush = {
		armed = false, tool = "Raise", falloff = "Smooth", material = M.Grass,
		radius = 24, strength = 0.55, flattenY = 32, lockFlattenY = false, preserveWater = true,
		activeStroke = nil, strokeDown = false, lastHitPos = nil, lastTrailY = nil,
		hoverPos = nil, hoverNormal = Vector3.yAxis, displayPos = nil, displayRadius = 24,
		pickMode = nil, waypointA = nil,
	}

	local labs = {
		treesEnabled = false, treesAdaptive = true, speciesIndex = 1,
		spreadIntensity = 1.0, baseScale = 0.85, sizeVariance = 0.30, maxSlope = 0.68,
		spawnedCount = 0, cachedPoints = {}, treeTemplates = {},
		cloudsEnabled = false, cloudsAdaptive = true, cloudScale = 1.0,
		cloudAltitude = 280, cloudTransparency = 0.60, cloudSpeed = 0.001,
		cloudTint = Color3.fromRGB(255, 255, 255), activeCloudModel = nil,
		im_a_placeholder = false,
		-- Atmospheric Simulation & Space Vacuum Engine
		atmoSimEnabled = false,
		spaceAlt = 10000,
		transDepth = 5000,
		zeroG = true,
		reentryPlasma = true,
		cosmicAudio = true,
		airBraking = 1.0,
		rcsThrust = 1.0,
		spaceFactor = 0,
		reentryIntensity = 0,
		surfaceClockTime = 14,
		surfaceGravity = 196.2,
		baseAtmoDensity = 0.35,
		baseAtmoHaze = 0.25,
		baseAtmoGlare = 0.20,
		baseOutdoorAmbient = nil,
		baseFogEnd = 4000,
		orbitEarth = nil,
		orbitEarthParts = nil,
		orbitEarthSpin = 0,
		inDeepSpace = false,
		previousSkyboxKey = "Earthly",
		audioMuted = false,
		spaceCeiling = 14000,
		spaceCamPitch = 0.42,
		spaceCamYaw = 0.35,
		spaceCamDist = 28,
		spaceCamMode = "Orbit",
		spaceInclination = 28.5,
		spaceAudioMode = "Mute",
		spaceStarCount = 4500,
		spaceProbes = {},
		spaceEvaActive = false,
		reentryActive = false,
		reentrySound = nil,
		reentrySoundTime = 0,
		reentryEmitter = nil,
		reentryLight = nil,
	}

	local values = {}
	for _, key in ipairs(FIELD_ORDER) do values[key] = FIELDS[key].default end

	if not session.synthDeck then
		local seedRng = Random.new(os.clock() * 1000)
		session.synthDeck = {{domain = 1, feature = 1, seed = 4082}}
		for i = 2, K.SYNTH_DECK_SIZE do
			session.synthDeck[i] = {domain = seedRng:NextInteger(1, #SYNTH_DOMAINS), feature = seedRng:NextInteger(1, #SYNTH_FEATURES), seed = seedRng:NextInteger(1000, 99999)}
		end
	end

	local fn = {} -- Consolidated cross-module function dispatch table (saves 35+ top-level Luau registers!)
	local ui = {} -- Forward-declared UI table (ensures early functions never encounter nil)

	local function activeTileCols()
		if perf.lowLagChunks then return 48 end
		return clamp(math.floor(tonumber(perf.tileCols) or 96), 32, 160)
	end
	local function activeClearStuds() return perf.lowLagChunks and 192 or 384 end
	local function activeVoxelBudget() return perf.lowLagChunks and math.min(perf.voxelBudgetK * 1000, 68000) or (perf.voxelBudgetK * 1000) end
	local function activeFrameBudget() return clamp(perf.frameBudgetMs / 1000, 0.002, 0.030) end

	local function activeStyleLabel()
		if state.style == "Synthesized" then
			local d = SYNTH_DOMAINS[state.synthDomain] or SYNTH_DOMAINS[1]
			local f = SYNTH_FEATURES[state.synthFeature] or SYNTH_FEATURES[1]
			return d.name .. " " .. f.name
		end
		return state.style
	end

	local function normalizeConfig(raw)
		local cfg = {}
		for _, key in ipairs(FIELD_ORDER) do cfg[key] = quantize(key, raw[key]) end
		cfg.Style = STYLES[raw.Style] and raw.Style or "Rolling"
		cfg.WaterPreset = WATER_PRESETS[raw.WaterPreset] and raw.WaterPreset or "Ocean"
		cfg.WaterEnabled = raw.WaterEnabled ~= false
		return cfg
	end

	local function currentConfig()
		local raw = table.clone(values)
		raw.Style, raw.WaterPreset, raw.WaterEnabled = state.style, state.waterPreset, state.waterEnabled
		return normalizeConfig(raw)
	end

	local function computeBounds(cfg)
		local minX, minZ = snapVoxel(cfg.CenterX - cfg.Width / 2), snapVoxel(cfg.CenterZ - cfg.Depth / 2)
		local top = ceilVoxel(K.SURFACE_BASE + cfg.MaxHeight + 16)
		if cfg.WaterEnabled then top = math.max(top, ceilVoxel(cfg.SeaLevel + 8)) end
		return {minX = minX, minY = K.MIN_Y, minZ = minZ, maxX = minX + cfg.Width, maxY = top, maxZ = minZ + cfg.Depth}
	end

	local function boundsVoxelCount(b)
		return ((b.maxX - b.minX) / K.VOXEL) * ((b.maxY - b.minY) / K.VOXEL) * ((b.maxZ - b.minZ) / K.VOXEL)
	end

	----------------------------------------------------------------------------------------------------
	-- 7. PROCEDURAL RIVERS, A* TRAILS & MEGA-SCALE VOXEL STREAMING ENGINE
	----------------------------------------------------------------------------------------------------
	local function computeAStarGridPath(gridH, G, minX, minZ, stepX, stepZ, seaLevel, waterOn, sIx, sIz, gIx, gIz)
		local total = G * G
		local gScore, fScore = table.create(total, math.huge), table.create(total, math.huge)
		local cameFrom, closed = table.create(total, 0), table.create(total, false)
		local startIdx, goalIdx = (sIx - 1) * G + sIz, (gIx - 1) * G + gIz
		gScore[startIdx] = 0
		fScore[startIdx] = math.sqrt((gIx - sIx) ^ 2 + (gIz - sIz) ^ 2)
		local open = {startIdx}
		local dirs = {{-1,0,1},{1,0,1},{0,-1,1},{0,1,1},{-1,-1,1.414},{-1,1,1.414},{1,-1,1.414},{1,1,1.414}}

		while #open > 0 do
			local bestPos, bestF = 1, fScore[open[1]]
			for i = 2, #open do if fScore[open[i]] < bestF then bestF, bestPos = fScore[open[i]], i end end
			local cur = table.remove(open, bestPos)
			if cur == goalIdx then break end
			if not closed[cur] then
				closed[cur] = true
				local cx, cz = math.floor((cur - 1) / G) + 1, (cur - 1) % G + 1
				local ch = gridH[cur]
				for _, d in ipairs(dirs) do
					local nx, nz = cx + d[1], cz + d[2]
					if nx >= 1 and nx <= G and nz >= 1 and nz <= G then
						local nb = (nx - 1) * G + nz
						if not closed[nb] then
							local nh = gridH[nb]
							local worldDist = math.sqrt((d[1] * stepX) ^ 2 + (d[2] * stepZ) ^ 2)
							local slope = math.abs(nh - ch) / math.max(4, worldDist)
							local wetPenalty = (waterOn and nh < seaLevel + 1) and 14 or 0
							local tentative = gScore[cur] + d[3] * (1 + (slope * 5.2) ^ 2 + wetPenalty)
							if tentative < gScore[nb] then
								cameFrom[nb], gScore[nb] = cur, tentative
								fScore[nb] = tentative + math.sqrt((gIx - nx) ^ 2 + (gIz - nz) ^ 2) * 1.05
								table.insert(open, nb)
							end
						end
					end
				end
			end
		end

		local nodes = {}
		local walk = goalIdx
		if cameFrom[walk] == 0 and walk ~= startIdx then return nil end
		while walk ~= 0 do
			local ix, iz = math.floor((walk - 1) / G) + 1, (walk - 1) % G + 1
			local wh = gridH[walk]
			if waterOn and wh < seaLevel + 2.5 then wh = seaLevel + 2.5 end
			table.insert(nodes, 1, {x = minX + (ix - 0.5) * stepX, z = minZ + (iz - 0.5) * stepZ, h = wh})
			if walk == startIdx then break end
			walk = cameFrom[walk]
		end
		for _ = 1, 3 do
			for i = 2, #nodes - 1 do nodes[i].h = nodes[i - 1].h * 0.25 + nodes[i].h * 0.5 + nodes[i + 1].h * 0.25 end
		end
		return smoothPolyline(nodes, 2)
	end

	local function traceMeanderingRiver(sampleHeightFn, startX, startZ, minX, minZ, maxX, maxZ, seaLevel, waterOn, baseWidth, seedOffset)
		local stepLen = clamp(math.min(maxX - minX, maxZ - minZ) / 38, 8, 96)
		local pts = {}
		local px, pz, vx, vz = startX, startZ, 0, 0
		local probe = math.max(8, stepLen * 0.65)

		for step = 1, 88 do
			local h = sampleHeightFn(px, pz)
			table.insert(pts, {x = px, z = pz, h = h, w = baseWidth})
			if step > 8 and waterOn and h < seaLevel - 7 then break end
			if px <= minX + K.VOXEL or px >= maxX - K.VOXEL or pz <= minZ + K.VOXEL or pz >= maxZ - K.VOXEL then break end
			local gx = (sampleHeightFn(px + probe, pz) - sampleHeightFn(px - probe, pz)) / (2 * probe)
			local gz = (sampleHeightFn(px, pz + probe) - sampleHeightFn(px, pz - probe)) / (2 * probe)
			local gLen = math.sqrt(gx * gx + gz * gz)
			local dx, dz
			if gLen > 1e-4 then dx, dz = -gx / gLen, -gz / gLen
			else
				local ex, ez = px - (minX + maxX) * 0.5, pz - (minZ + maxZ) * 0.5
				local eLen = math.max(1e-3, math.sqrt(ex * ex + ez * ez))
				dx, dz = ex / eLen, ez / eLen
			end
			local meander = math.noise(step * 0.14 + seedOffset, seedOffset * 0.37, 1.9) * 0.78
			vx = vx * 0.5 + (dx - dz * meander) * 0.5
			vz = vz * 0.5 + (dz + dx * meander) * 0.5
			local vLen = math.sqrt(vx * vx + vz * vz)
			if vLen < 1e-4 then break end
			vx, vz = vx / vLen, vz / vLen
			px += vx * stepLen; pz += vz * stepLen
		end
		if #pts < 4 then return nil end
		local refined = smoothPolyline(pts, 2)
		for i, p in ipairs(refined) do
			local t = (i - 1) / math.max(1, #refined - 1)
			p.t, p.w = t, baseWidth * lerp(0.55, 1.32, t)
		end
		return refined
	end

	local function buildSampler(cfg)
		local style = STYLES[cfg.Style] or STYLES.Rolling
		local rng = Random.new(cfg.Seed)
		local o = table.create(21)
		for i = 1, 21 do o[i] = rng:NextNumber(-2048, 2048) end

		local noise, abs, sqrt = math.noise, math.abs, math.sqrt
		local freq = K.BASE_FREQ * cfg.Roughness
		local detail, warp = cfg.Detail, cfg.Warp * K.WARP_STUDS
		local octaves = 3 + math.floor(detail * 2 + 0.5)
		local cx, cz, halfW, halfD = cfg.CenterX, cfg.CenterZ, cfg.Width * 0.5, cfg.Depth * 0.5
		local falloff, maxH = cfg.EdgeFalloff, cfg.MaxHeight
		local terraceSteps, sharpness, flatFloor, erosion = cfg.TerraceSteps, cfg.RidgeSharpness, cfg.FlatFloor, cfg.Erosion
		local moistureBias = cfg.MoistureShift + (cfg.GrassLength - 0.5) * 0.08
		local edgeBase = cfg.WaterEnabled and math.max(K.SURFACE_BASE, cfg.SeaLevel - 10) or K.SURFACE_BASE + 2
		local useRidge, shape = style.ridge == true, style.shape
		local n = {detail = detail, ridge = 0}

		local function fbm(x, z, count, ox, oz, oy)
			local sum, amp, f, norm = 0, 1, 1, 0
			for i = 1, count do sum += noise(x * f + ox, z * f + oz, oy + i * 0.731) * amp; norm += amp; amp *= 0.5; f *= 2.03 end
			return sum / norm
		end
		local function ridged(x, z, count, ox, oz, oy)
			local sum, amp, f, norm, weight = 0, 1, 1, 0, 1
			for i = 1, count do
				local r = 1 - abs(noise(x * f + ox, z * f + oz, oy + i * 0.577)); r *= r
				sum += r * amp * weight; weight = clamp(r * 1.6, 0, 1); norm += amp; amp *= 0.5; f *= 2.1
			end
			return sum / norm
		end

		local function rawSample(x0, z0)
			local x, z = x0, z0
			if warp > 0 then
				local wx, wz = x0 * freq * 0.55, z0 * freq * 0.55
				x += noise(wx + o[1], wz + o[2], o[3]) * warp
				z += noise(wx + o[4], wz + o[5], o[6]) * warp
			end
			local px, pz = x * freq, z * freq
			local broad = fbm(px * 0.38, pz * 0.38, 3, o[7], o[8], o[9])
			local medium = fbm(px, pz, octaves, o[10], o[11], o[12])
			local fine = noise(px * 3.1 + o[13], pz * 3.1 + o[14], o[15]) * detail
			n.px, n.pz, n.broad, n.medium, n.fine = px, pz, broad, medium, fine
			n.base = clamp(0.5 + (broad * 0.55 + medium * 0.45) * 1.6 + fine * 0.08, 0, 1)
			local dx, dz = (x - cx) / halfW, (z - cz) / halfD
			n.radial = sqrt(dx * dx + dz * dz)
			local ux, uz = (x0 - cx) / halfW, (z0 - cz) / halfD
			n.radial0 = sqrt(ux * ux + uz * uz)
			if useRidge then n.ridge = ridged(px * 0.8, pz * 0.8, octaves, o[16], o[17], o[18]) end

			local factor, feature = shape(n)
			factor = clamp(factor, 0, 1)
			if sharpness ~= 1 then factor = factor ^ sharpness end
			if erosion > 0 then
				local g1 = 1 - abs(noise(px * 2.35 + o[19], pz * 2.35 + o[20], o[21]))
				local g2 = 1 - abs(noise(px * 4.9 - o[20], pz * 4.9 + o[19], o[21] + 1.7))
				local slopeMask = clamp(factor * (1.28 - factor), 0, 0.42) * 2.3
				factor = clamp(factor - (g1 * g1 * 0.68 + g2 * g2 * 0.32) * erosion * 0.24 * slopeMask, 0, 1)
			end
			if flatFloor > 0 then
				local floorLvl = flatFloor * 0.65
				if factor < floorLvl + 0.08 then
					local t = smoothstep(floorLvl - 0.06, floorLvl + 0.08, factor)
					factor = floorLvl * 0.55 + (factor - floorLvl * 0.55) * t
				end
			end
			if terraceSteps > 0 then factor = terrace(factor, terraceSteps + 2, 0.28) end
			local h = K.SURFACE_BASE + clamp(factor, 0, 1) * maxH
			if falloff > 0 then
				h = edgeBase + (h - edgeBase) * smoothstep(0, falloff * 2, math.min(1 - abs(ux), 1 - abs(uz)))
			end
			local moisture = noise(x0 * 0.0061 + o[3], z0 * 0.0061 + o[6], o[12] + 0.5) * 1.2 + fine * 0.12 + moistureBias
			return h, moisture, feature or 0, 0
		end

		local rCount, tCount = cfg.RiverCount or 0, cfg.TrailCount or 0
		if rCount <= 0 and tCount <= 0 then return rawSample end

		-- Build O(1) 2D Spatial Hash for Rivers & A* Switchback Trails
		local minX, minZ = snapVoxel(cfg.CenterX - cfg.Width / 2), snapVoxel(cfg.CenterZ - cfg.Depth / 2)
		local maxX, maxZ = minX + cfg.Width, minZ + cfg.Depth
		local G = 38
		local stepX, stepZ = cfg.Width / G, cfg.Depth / G
		local gridH, candidates = table.create(G * G, 0), {}
		for ix = 1, G do
			local wx = minX + (ix - 0.5) * stepX
			for iz = 1, G do
				local wz = minZ + (iz - 0.5) * stepZ
				local h = rawSample(wx, wz)
				gridH[(ix - 1) * G + iz] = h
				if ix >= 4 and ix <= G - 3 and iz >= 4 and iz <= G - 3 then
					table.insert(candidates, {ix = ix, iz = iz, x = wx, z = wz, h = h})
				end
			end
		end
		table.sort(candidates, function(a, b) return a.h > b.h end)

		local BN = 32
		local invCX, invCZ = BN / cfg.Width, BN / cfg.Depth
		local buckets = {}
		local function insertSegment(seg, reach)
			local bx0 = clamp(math.floor((math.min(seg.ax, seg.bx) - reach - minX) * invCX), 0, BN - 1)
			local bx1 = clamp(math.floor((math.max(seg.ax, seg.bx) + reach - minX) * invCX), 0, BN - 1)
			local bz0 = clamp(math.floor((math.min(seg.az, seg.bz) - reach - minZ) * invCZ), 0, BN - 1)
			local bz1 = clamp(math.floor((math.max(seg.az, seg.bz) + reach - minZ) * invCZ), 0, BN - 1)
			for bx = bx0, bx1 do
				local row = bx * BN
				for bz = bz0, bz1 do
					local k = row + bz + 1
					local list = buckets[k]
					if not list then list = {}; buckets[k] = list end
					table.insert(list, seg)
				end
			end
		end

		if rCount > 0 then
			local chosen, minSep2 = {}, (math.min(cfg.Width, cfg.Depth) * 0.24) ^ 2
			for _, cand in ipairs(candidates) do
				if #chosen >= rCount then break end
				local ok = true
				for _, prev in ipairs(chosen) do
					if (cand.x - prev.x) ^ 2 + (cand.z - prev.z) ^ 2 < minSep2 then ok = false; break end
				end
				if ok then table.insert(chosen, cand) end
			end
			for idx, sp in ipairs(chosen) do
				local poly = traceMeanderingRiver(function(x, z) local h = rawSample(x, z); return h end,
				sp.x, sp.z, minX, minZ, maxX, maxZ, cfg.SeaLevel, cfg.WaterEnabled, cfg.RiverWidth, idx * 17.3 + cfg.Seed * 0.001)
				if poly then
					for i = 1, #poly - 1 do
						local a, b = poly[i], poly[i + 1]
						local dx, dz = b.x - a.x, b.z - a.z
						local len2 = dx * dx + dz * dz
						if len2 > 0.25 then
							local hw = math.max(a.w, b.w) * 0.5
							insertSegment({kind=1,ax=a.x,az=a.z,bx=b.x,bz=b.z,dx=dx,dz=dz,invLen2=1/len2,wa=a.w*0.5,wb=b.w*0.5,ta=a.t or 0,tb=b.t or 1}, hw * 2.8)
						end
					end
				end
			end
		end

		if tCount > 0 then
			local tRng = Random.new(cfg.Seed + 27751)
			for _ = 1, tCount do
				local sIx, sIz, gIx, gIz
				for _ = 1, 18 do
					sIx, sIz = tRng:NextInteger(3, G - 2), tRng:NextInteger(3, G - 2)
					gIx, gIz = tRng:NextInteger(3, G - 2), tRng:NextInteger(3, G - 2)
					local sh, gh = gridH[(sIx - 1) * G + sIz], gridH[(gIx - 1) * G + gIz]
					if (gIx - sIx) ^ 2 + (gIz - sIz) ^ 2 >= (G * 0.42) ^ 2 and (not cfg.WaterEnabled or (sh > cfg.SeaLevel and gh > cfg.SeaLevel)) then break end
				end
				local poly = computeAStarGridPath(gridH, G, minX, minZ, stepX, stepZ, cfg.SeaLevel, cfg.WaterEnabled, sIx, sIz, gIx, gIz)
				if poly and #poly >= 3 then
					local hw = cfg.TrailWidth * 0.5
					for i = 1, #poly - 1 do
						local a, b = poly[i], poly[i + 1]
						local dx, dz = b.x - a.x, b.z - a.z
						local len2 = dx * dx + dz * dz
						if len2 > 0.25 then
							insertSegment({kind=2,ax=a.x,az=a.z,bx=b.x,bz=b.z,dx=dx,dz=dz,invLen2=1/len2,ha=a.h,hb=b.h,hw=hw}, hw * 2.6)
						end
					end
				end
			end
		end

		local sea, water = cfg.SeaLevel, cfg.WaterEnabled
		return function(x0, z0)
			local h, moisture, feature = rawSample(x0, z0)
			local bx, bz = math.floor((x0 - minX) * invCX), math.floor((z0 - minZ) * invCZ)
			if bx < 0 or bx >= BN or bz < 0 or bz >= BN then return h, moisture, feature, 0 end
			local list = buckets[bx * BN + bz + 1]
			if not list then return h, moisture, feature, 0 end
			local bestRBlend, bestRTarget, riverBank = 0, h, false
			local bestTBlend, bestTTarget, onTrail = 0, h, false
			for i = 1, #list do
				local seg = list[i]
				local proj = clamp(((x0 - seg.ax) * seg.dx + (z0 - seg.az) * seg.dz) * seg.invLen2, 0, 1)
				local dist = sqrt((x0 - (seg.ax + seg.dx * proj)) ^ 2 + (z0 - (seg.az + seg.dz * proj)) ^ 2)
				if seg.kind == 1 then
					local hw = lerp(seg.wa, seg.wb, proj)
					local outer = hw * 2.65
					if dist < outer then
						local flowT = lerp(seg.ta, seg.tb, proj)
						local blend = 1 - smoothstep(hw * 0.35, outer, dist)
						local bed = water and lerp(h - 5, sea - lerp(4.5, 9.5, flowT), smoothstep(0, 0.24, flowT)) or (h - lerp(6, 15, flowT))
						if blend > bestRBlend then bestRBlend, bestRTarget = blend, bed end
						if dist < hw * 1.45 then riverBank = true end
					end
				else
					local hw = seg.hw
					local outer = hw * 2.45
					if dist < outer then
						local blend = 1 - smoothstep(hw * 0.82, outer, dist)
						if blend > bestTBlend then bestTBlend, bestTTarget = blend, lerp(seg.ha, seg.hb, proj) end
						if dist <= hw * 1.05 then onTrail = true end
					end
				end
			end
			local pathTag = 0
			if bestRBlend > 0 then
				h = lerp(h, math.min(h, bestRTarget), bestRBlend)
				moisture += bestRBlend * 0.25
				if riverBank then pathTag = 1 end
			end
			if bestTBlend > 0 and bestRBlend < 0.45 then
				h = lerp(h, bestTTarget, bestTBlend)
				if onTrail then pathTag = 2 end
			end
			return h, moisture, feature, pathTag
		end
	end

	local function pickSurface(style, c)
		if c.pathTag == 2 and (not c.water or c.h >= c.sea + 0.5) then return style.trailMat or M.Cobblestone end
		local rawSlope = c.slope
		c.slope = rawSlope / c.cliffMul
		if c.water then
			local below = c.sea - c.h
			if below > 1.5 then
				if c.slope > 1.2 then c.slope = rawSlope; return style.cliff end
				c.slope = rawSlope
				return below > 18 and M.Mud or (style.seabed or M.Sand)
			elseif c.beachW > 0 and below > -(c.beachW + c.moisture * 2.5) and c.slope < 0.92 then
				c.slope = rawSlope; return style.beach or M.Sand
			end
		end
		if c.pathTag == 1 and rawSlope < 0.95 then
			c.slope = rawSlope; return c.water and (style.beach or M.Cobblestone) or M.Cobblestone
		end
		if c.snowLine < 1.02 and c.rel + c.moisture * 0.06 > c.snowLine and c.slope < 1.22 then
			c.slope = rawSlope
			return (c.rel > c.snowLine + 0.12 and rawSlope < 0.35) and M.Glacier or M.Snow
		end
		local mat = style.surface(c)
		c.slope = rawSlope
		if mat == M.Grass or mat == M.LeafyGrass then
			local spread = c.grassSpread
			if spread <= 0.02 then return M.LeafyGrass
			elseif spread >= 0.98 then return M.Grass
			else return (c.moisture > (0.65 - spread) * 1.35) and M.Grass or M.LeafyGrass end
		end
		return mat
	end

	local function subsurfaceFor(style, surface)
		if ROCKY[surface] then return surface end
		return SUB_OVERRIDE[surface] or style.sub
	end

	local function cellCorner(b) return Vector3int16.new(b.minX / K.VOXEL, b.minY / K.VOXEL, b.minZ / K.VOXEL) end

	local function takeSnapshot(b)
		if not CAN_SNAPSHOT or boundsVoxelCount(b) > K.MAX_SNAP_VOXELS then return nil end
		local ok, region = pcall(function()
			return Terrain:CopyRegion(Region3int16.new(cellCorner(b), Vector3int16.new(b.maxX / K.VOXEL - 1, b.maxY / K.VOXEL - 1, b.maxZ / K.VOXEL - 1)))
		end)
		return ok and region or nil
	end

	local function clearRegion(b, onProgress)
		local slice = os.clock()
		local stepStuds = activeClearStuds()
		local totalBlocks = math.max(1, math.ceil((b.maxX - b.minX) / stepStuds) * math.ceil((b.maxZ - b.minZ) / stepStuds))
		local done, x = 0, b.minX
		while x < b.maxX do
			local x2, z = math.min(x + stepStuds, b.maxX), b.minZ
			while z < b.maxZ do
				local z2 = math.min(z + stepStuds, b.maxZ)
				Terrain:FillRegion(Region3.new(Vector3.new(x, b.minY, z), Vector3.new(x2, b.maxY, z2)), K.VOXEL, M.Air)
				done += 1; z = z2
				if os.clock() - slice > activeFrameBudget() then
					if onProgress then onProgress(done / totalBlocks) end
					task.wait(); slice = os.clock()
				end
			end
			x = x2
		end
	end

	local function restoreEntry(entry)
		if entry.snapshot then
			Terrain:PasteRegion(entry.snapshot, cellCorner(entry.bounds), true)
		elseif entry.writtenTiles and #entry.writtenTiles > 0 then
			local slice = os.clock()
			for _, t in ipairs(entry.writtenTiles) do
				Terrain:FillRegion(Region3.new(Vector3.new(t.minX, entry.bounds.minY, t.minZ), Vector3.new(t.maxX, entry.bounds.maxY, t.maxZ)), K.VOXEL, M.Air)
				if os.clock() - slice > activeFrameBudget() then task.wait(); slice = os.clock() end
			end
		else
			clearRegion(entry.bounds)
		end
	end

	local function disposeEntry(entry)
		if entry and entry.snapshot then pcall(function() entry.snapshot:Destroy() end); entry.snapshot = nil end
	end
	local function pushHistory(entry)
		table.insert(session.history, entry)
		while #session.history > K.HISTORY_LIMIT do disposeEntry(table.remove(session.history, 1)) end
	end

	local function writeChunk(region, mats, solids, liquids)
		if writeMode == "Channels" then
			local ok, err = pcall(function()
				Terrain:WriteVoxelChannels(region, K.VOXEL, {SolidMaterial = mats, SolidOccupancy = solids, LiquidOccupancy = liquids})
			end)
			if ok then return end
			warn("[Sirius Terraform] WriteVoxelChannels failed, falling back to WriteVoxels: " .. tostring(err))
			writeMode = "Legacy"
		end
		if writeMode == "Legacy" then
			local outMats, outOcc = table.create(#mats), table.create(#mats)
			for x = 1, #mats do
				local mX, sX, lX = mats[x], solids[x], liquids[x]
				local omX, ooX = table.create(#mX), table.create(#mX)
				for y = 1, #mX do
					local mY, sY, lY = mX[y], sX[y], lX[y]
					local omY, ooY = table.create(#mY), table.create(#mY)
					for z = 1, #mY do
						local s, l = sY[z], lY[z]
						if s > 0 then omY[z], ooY[z] = (mY[z] == M.Water and M.Rock or mY[z]), s
						elseif l > 0 then omY[z], ooY[z] = M.Water, l
						else omY[z], ooY[z] = M.Air, 0 end
					end
					omX[y], ooX[y] = omY, ooY
				end
				outMats[x], outOcc[x] = omX, ooX
			end
			Terrain:WriteVoxels(region, K.VOXEL, outMats, outOcc)
			return
		end
		error("This environment does not expose a Terrain voxel write API.", 0)
	end

	local function writeTerrain(cfg, bounds, job, writtenTilesOut)
		local started = os.clock()
		local style = STYLES[cfg.Style] or STYLES.Rolling
		local sampler = buildSampler(cfg)
		local report = job.report or function() end
		local abs, noise = math.abs, math.noise
		local tileCols = activeTileCols()
		pcall(function() Terrain.GrassLength = cfg.GrassLength end)

		job.sliceStart = os.clock()
		local function checkpoint(force)
			if job.cancelled then error(K.CANCELLED, 0) end
			if force or os.clock() - job.sliceStart > activeFrameBudget() then
				task.wait()
				if job.cancelled then error(K.CANCELLED, 0) end
				job.sliceStart = os.clock()
			end
		end

		local minX, minZ = bounds.minX, bounds.minZ
		local totalNX, totalNZ = (bounds.maxX - minX) / K.VOXEL, (bounds.maxZ - minZ) / K.VOXEL
		local sea, water = cfg.SeaLevel, cfg.WaterEnabled

		local tiles = {}
		local tilesX, tilesZ = math.ceil(totalNX / tileCols), math.ceil(totalNZ / tileCols)
		local midX, midZ = (tilesX + 1) * 0.5, (tilesZ + 1) * 0.5
		for txIdx = 1, tilesX do
			local c0x = (txIdx - 1) * tileCols + 1
			local nx = math.min(tileCols, totalNX - c0x + 1)
			for tzIdx = 1, tilesZ do
				local c0z = (tzIdx - 1) * tileCols + 1
				local nz = math.min(tileCols, totalNZ - c0z + 1)
				local dx, dz = txIdx - midX, tzIdx - midZ
				table.insert(tiles, {c0x = c0x, c0z = c0z, nx = nx, nz = nz, dist2 = dx * dx + dz * dz})
			end
		end
		table.sort(tiles, function(a, b) return a.dist2 < b.dist2 end)
		local tileCount = #tiles

		local maxApron, maxInterior = (tileCols + 2) * (tileCols + 2), tileCols * tileCols
		local H = table.create(maxApron, 0)
		local MOIST, FEAT, PTAG = table.create(maxInterior, 0), table.create(maxInterior, 0), table.create(maxInterior, 0)
		local SURF, SUB, EXPO = table.create(maxInterior), table.create(maxInterior), table.create(maxInterior, 0)

		local ctx = {
			sea = sea, water = water, maxH = cfg.MaxHeight, strataAt = style.strataAt,
			grassSpread = cfg.GrassSpread, cliffMul = cfg.CliffAngle, snowLine = cfg.SnowLine, beachW = cfg.BeachWidth, pathTag = 0,
		}
		local inv, invMax, AIR = 1 / (2 * K.VOXEL), 1 / cfg.MaxHeight, M.Air
		local cliff, strataAt, bedrock = style.cliff, style.strataAt, style.bedrock or M.Rock
		local caves = cfg.CaveDensity > 0 or style.arches == true
		local archMode = style.arches == true
		local caveThreshold = 0.08 + math.max(cfg.CaveDensity, archMode and 0.35 or 0) * 0.16
		local caveFreq, minCaveDepth = archMode and 0.014 or 0.018, archMode and 6 or 10
		local caveRng = Random.new(cfg.Seed + 7919)
		local c1, c2, c3 = caveRng:NextNumber(-1024, 1024), caveRng:NextNumber(-1024, 1024), caveRng:NextNumber(-1024, 1024)
		local c4, c5, c6 = caveRng:NextNumber(-1024, 1024), caveRng:NextNumber(-1024, 1024), caveRng:NextNumber(-1024, 1024)

		local totalVoxelsWritten, globalPeak = 0, -math.huge
		for tIndex, tile in ipairs(tiles) do
			local nx, nz = tile.nx, tile.nz
			local tMinX, tMinZ = minX + (tile.c0x - 1) * K.VOXEL, minZ + (tile.c0z - 1) * K.VOXEL
			local tMaxX, tMaxZ = tMinX + nx * K.VOXEL, tMinZ + nz * K.VOXEL
			local stride = nz + 2
			local tileMaxSurface = -math.huge

			for ix = 0, nx + 1 do
				local wx = tMinX + (ix - 0.5) * K.VOXEL
				local interiorX = ix >= 1 and ix <= nx
				for iz = 0, nz + 1 do
					local h, m, f, pTag = sampler(wx, tMinZ + (iz - 0.5) * K.VOXEL)
					H[ix * stride + iz + 1] = h
					if interiorX and iz >= 1 and iz <= nz then
						local ci = (ix - 1) * nz + iz
						MOIST[ci], FEAT[ci], PTAG[ci] = m, f, pTag or 0
						if h > tileMaxSurface then tileMaxSurface = h end
					end
				end
				checkpoint()
			end
			if tileMaxSurface > globalPeak then globalPeak = tileMaxSurface end

			for ix = 1, nx do
				for iz = 1, nz do
					local k = ix * stride + iz + 1
					local h = H[k]
					local l, r, b, f = H[k - stride], H[k + stride], H[k - 1], H[k + 1]
					local gx, gz = (r - l) * inv, (f - b) * inv
					local ci = (ix - 1) * nz + iz
					ctx.h, ctx.slope, ctx.rel = h, math.sqrt(gx * gx + gz * gz), (h - K.SURFACE_BASE) * invMax
					ctx.moisture, ctx.feature, ctx.pathTag = MOIST[ci], FEAT[ci], PTAG[ci]
					local surface = pickSurface(style, ctx)
					SURF[ci], SUB[ci], EXPO[ci] = surface, subsurfaceFor(style, surface), math.min(l, r, b, f)
				end
				checkpoint()
			end

			local writeTop = ceilVoxel(tileMaxSurface + K.VOXEL)
			if water then writeTop = math.max(writeTop, ceilVoxel(sea + K.VOXEL)) end
			writeTop = clamp(writeTop, K.MIN_Y + K.VOXEL, bounds.maxY)
			local ny = (writeTop - K.MIN_Y) / K.VOXEL
			local slabDepth = clamp(math.floor(activeVoxelBudget() / (nx * ny)), 1, nz)
			local slabCount, slabDone = math.ceil(nz / slabDepth), 0
			if writtenTilesOut then table.insert(writtenTilesOut, {minX = tMinX, maxX = tMaxX, minZ = tMinZ, maxZ = tMaxZ}) end

			for startZ = 1, nz, slabDepth do
				local countZ = math.min(slabDepth, nz - startZ + 1)
				local mats, solids, liquids = table.create(nx), table.create(nx), table.create(nx)
				for ix = 1, nx do
					local wx = tMinX + (ix - 0.5) * K.VOXEL
					local colBase, hBase = (ix - 1) * nz, ix * stride + 1
					local mX, sX, lX = table.create(ny), table.create(ny), table.create(ny)
					for iy = 1, ny do
						local y0 = K.MIN_Y + (iy - 1) * K.VOXEL
						local yc = y0 + K.VOXEL * 0.5
						local mY, sY, lY = table.create(countZ), table.create(countZ), table.create(countZ)
						for lz = 1, countZ do
							local gz = startZ + lz - 1
							local ci = colBase + gz
							local depth = H[hBase + gz] - y0
							local mat, solid, liquid = AIR, 0, 0
							if depth > 0 then
								solid = depth >= K.VOXEL and 1 or depth / K.VOXEL
								if depth <= K.VOXEL then mat = SURF[ci]
								elseif yc > EXPO[ci] then mat = strataAt and strataAt(yc) or cliff
								elseif depth <= K.SUBSOIL_DEPTH then mat = SUB[ci]
								else mat = bedrock end
								if caves and depth > minCaveDepth and y0 > K.MIN_Y + 8 then
									local ramp = depth >= (minCaveDepth + 12) and 1 or (depth - minCaveDepth) / 12
									local threshold = caveThreshold * ramp
									local wz = tMinZ + (gz - 0.5) * K.VOXEL
									local v = abs(noise(wx * caveFreq + c1, yc * caveFreq * 1.65 + c2, wz * caveFreq + c3))
									if v < threshold then
										local v2 = abs(noise(wx * caveFreq + c4, yc * caveFreq * 1.65 + c5, wz * caveFreq + c6))
										if v2 > v then v = v2 end
										if v < threshold then
											solid *= clamp((v / threshold - 0.55) / 0.45, 0, 1)
											if solid <= 0.01 then mat, solid = AIR, 0 end
										end
									end
								end
							end
							if water and depth <= K.VOXEL and y0 < sea then
								liquid = (sea - y0) >= K.VOXEL and 1 or (sea - y0) / K.VOXEL
							end
							mY[lz], sY[lz], lY[lz] = mat, solid, liquid
						end
						mX[iy], sX[iy], lX[iy] = mY, sY, lY
					end
					mats[ix], solids[ix], liquids[ix] = mX, sX, lX
					checkpoint()
				end

				local chunkMinZ = tMinZ + (startZ - 1) * K.VOXEL
				writeChunk(Region3.new(Vector3.new(tMinX, K.MIN_Y, chunkMinZ), Vector3.new(tMaxX, writeTop, chunkMinZ + countZ * K.VOXEL)), mats, solids, liquids)
				totalVoxelsWritten += nx * ny * countZ
				slabDone += 1
				local overallFrac = ((tIndex - 1) + slabDone / slabCount) / tileCount
				local elapsed = os.clock() - started
				local eta = overallFrac > 0.02 and (elapsed / overallFrac * (1 - overallFrac)) or nil
				report(2 + 96 * overallFrac,
					tileCount > 1 and string.format("Streaming sector %d / %d (%dst)  ·  %s voxels", tIndex, tileCount, tileCols * K.VOXEL, formatCompact(totalVoxelsWritten))
						or string.format("Writing voxels  ·  slab %d / %d", slabDone, slabCount), eta)
				checkpoint(true)
				if perf.lowLagChunks then task.wait() end
			end
			if writeTop < bounds.maxY then
				Terrain:FillRegion(Region3.new(Vector3.new(tMinX, writeTop, tMinZ), Vector3.new(tMaxX, bounds.maxY, tMaxZ)), K.VOXEL, AIR)
				checkpoint()
			end
		end
		return {voxels = totalVoxelsWritten, seconds = os.clock() - started, peak = globalPeak, tiles = tileCount}
	end

	local function applyWaterLook(cfg)
		local preset = WATER_PRESETS[cfg.WaterPreset] or WATER_PRESETS.Ocean
		Terrain.WaterColor = preset.color
		Terrain.WaterTransparency, Terrain.WaterWaveSize = cfg.WaterTransparency, cfg.WaterWaveSize
		Terrain.WaterWaveSpeed, Terrain.WaterReflectance = cfg.WaterWaveSpeed, cfg.WaterReflectance
	end

	local function applyMaterialTheme(themeName)
		local theme = MATERIAL_THEMES[themeName] or MATERIAL_THEMES.Default
		for _, mat in ipairs(THEMEABLE_MATERIALS) do
			local col = theme.overrides[mat] or session.originalMaterialColors[mat] or DEFAULT_MATERIAL_COLORS[mat]
			MATERIAL_COLORS[mat] = col
			pcall(function() Terrain:SetMaterialColor(mat, col) end)
		end
	end

	----------------------------------------------------------------------------------------------------
	-- 8. EXPERIMENTAL MODULAR SYSTEMS (SYLVAN CANOPY #1 TREES & 14-LAYER VOLUMETRIC CLOUDS)
	--    + PLANET LIGHTING / SKY / GRAVITY SYNCHRONIZER
	----------------------------------------------------------------------------------------------------
	for _, fname in ipairs({K.TREES_FOLDER, K.CLOUDS_FOLDER}) do
		local old = workspace:FindFirstChild(fname)
		if old then old:Destroy() end
	end

	local TREE_SPECIES = {
		{
			id = "SylvanCanopy1", name = "Sylvan Canopy #1",
			bbox = Vector3.new(22.56, 37.361, 17.533), pivotRotDeg = Vector3.new(0, 90, 0),
			trunk = {
				meshId = "rbxassetid://743209096", size = Vector3.new(22.56, 37.361, 17.533),
				color = Color3.fromRGB(108, 93, 70), material = M.Slate,
				textures = {{id = "rbxassetid://1352046477", transparency = 0.3}, {id = "rbxassetid://1352046744", transparency = 0.85}},
			},
			leaves = {
				size = Vector3.new(3.851, 3.851, 3.851), relPos = Vector3.new(1.009, 8.389, 1.29),
				color = Color3.fromRGB(163, 162, 165), material = M.Fabric, transparency = 0.1,
				meshId = "rbxassetid://743209371", textureId = "rbxassetid://1354364345",
				meshScale = Vector3.new(3.332, 3.332, 3.332), meshOffset = Vector3.new(0, 0, 0), vertexColor = Vector3.new(1, 1, 1),
			},
		},
	}
	local CLOUD_LAYER_REL_Y = {-112, -96, -80, -64, -48, -32, -16, 0, 16, 32, 48, 64, 80, 112}

	fn.clearGeneratedTrees = function()
		local f = workspace:FindFirstChild(K.TREES_FOLDER)
		if f then f:Destroy() end
		labs.spawnedCount = 0
		table.clear(labs.cachedPoints)
		atlas.dirty = true
	end

	fn.scatterExperimentalTrees = function(cfg, matTheme, onProgress)
		fn.clearGeneratedTrees()
		if not labs.treesEnabled then return 0 end
		local style = STYLES[cfg.Style] or STYLES.Rolling
		local areaRatio = (cfg.Width * cfg.Depth) / (512 * 512)
		local affinity = labs.treesAdaptive and (style.treeAffinity or 0.85) or 1.0
		local moistBoost = labs.treesAdaptive and clamp(1 + cfg.MoistureShift * 0.45, 0.35, 1.45) or 1.0
		local targetCount = clamp(round(58 * (areaRatio ^ 0.78) * labs.spreadIntensity * affinity * moistBoost), 0, 900)
		if targetCount <= 0 then return 0 end

		local scaleMul = labs.baseScale * (labs.treesAdaptive and clamp(0.78 + (cfg.MaxHeight / 220) * 0.32, 0.68, 1.28) or 1)
		local minS, maxS = math.max(0.2, scaleMul * (1 - labs.sizeVariance)), scaleMul * (1 + labs.sizeVariance)
		local slopeCap = labs.treesAdaptive and clamp(labs.maxSlope * cfg.CliffAngle, 0.25, 1.15) or labs.maxSlope
		local snowCap = labs.treesAdaptive and math.min(cfg.SnowLine - 0.04, 0.84) or 0.96
		local vertexTint = Vector3.new(1, 1, 1)
		if labs.treesAdaptive then
			if matTheme == "Autumn" then vertexTint = Vector3.new(1.12, 0.88, 0.62)
			elseif matTheme == "Scorched" then vertexTint = Vector3.new(0.76, 0.72, 0.64)
			elseif matTheme == "Alien" then vertexTint = Vector3.new(0.72, 1.08, 1.05)
			elseif matTheme == "Frost" then vertexTint = Vector3.new(0.92, 1.02, 1.08)
			elseif matTheme == "Lush" then vertexTint = Vector3.new(0.88, 1.08, 0.86) end
		end

		local specIdx = labs.speciesIndex
		local spec = TREE_SPECIES[specIdx] or TREE_SPECIES[1]
		if not labs.treeTemplates[specIdx] then
			local model = Instance.new("Model")
			model.Name = spec.id
			local part = nil
			pcall(function()
				local uri = (type(Content) == "table" and Content.fromUri) and Content.fromUri(spec.trunk.meshId) or spec.trunk.meshId
				part = AssetService:CreateMeshPartAsync(uri, {CollisionFidelity = Enum.CollisionFidelity.Box, RenderFidelity = Enum.RenderFidelity.Automatic})
			end)
			if not part then pcall(function() part = InsertService:CreateMeshPartAsync(spec.trunk.meshId, Enum.CollisionFidelity.Box, Enum.RenderFidelity.Automatic) end) end
			if not part then
				pcall(function()
					local mp = Instance.new("MeshPart")
					if type(sethiddenproperty) == "function" then pcall(sethiddenproperty, mp, "MeshId", spec.trunk.meshId) else mp.MeshId = spec.trunk.meshId end
					if mp.MeshId ~= "" then part = mp end
				end)
			end
			if not part then
				part = Instance.new("Part")
				local sm = Instance.new("SpecialMesh")
				sm.MeshType = Enum.MeshType.FileMesh; sm.MeshId = spec.trunk.meshId
				sm.TextureId = spec.trunk.textures[1] and spec.trunk.textures[1].id or ""
				sm.Parent = part
			end
			part.Name = "Trunk"; part.Size = spec.trunk.size; part.Color = spec.trunk.color
			part.Material = spec.trunk.material; part.Anchored = true; part.CanCollide = true; part.CFrame = CFrame.new(0, 0, 0)
			for tIdx, texSpec in ipairs(spec.trunk.textures or {}) do
				for _, face in ipairs(Enum.NormalId:GetEnumItems()) do
					local tex = Instance.new("Texture")
					tex.Name = (tIdx == 1 and "BarkTexture_" or "DetailTexture_") .. face.Name
					tex.Texture = texSpec.id; tex.Transparency = texSpec.transparency; tex.Face = face; tex.Parent = part
				end
			end
			part.Parent = model

			local lv = spec.leaves
			local leaves = Instance.new("Part")
			leaves.Name = "Leaves"; leaves.Size = lv.size; leaves.Color = lv.color; leaves.Material = lv.material
			leaves.Transparency = lv.transparency; leaves.CanCollide = false; leaves.CanTouch = false; leaves.CanQuery = false
			leaves.Anchored = true; leaves.CFrame = CFrame.new(lv.relPos); leaves.Parent = model
			local sm = Instance.new("SpecialMesh")
			sm.MeshType = Enum.MeshType.FileMesh; sm.MeshId = lv.meshId; sm.TextureId = lv.textureId
			sm.Scale = lv.meshScale; sm.Offset = lv.meshOffset; sm.VertexColor = lv.vertexColor; sm.Parent = leaves
			model.PrimaryPart = part
			model.WorldPivot = CFrame.Angles(math.rad(spec.pivotRotDeg.X), math.rad(spec.pivotRotDeg.Y), math.rad(spec.pivotRotDeg.Z))
			labs.treeTemplates[specIdx] = model
		end

		local template = labs.treeTemplates[specIdx]
		local folder = Instance.new("Folder"); folder.Name = K.TREES_FOLDER; folder.Parent = workspace
		local sampler = buildSampler(cfg)
		local bounds = computeBounds(cfg)
		local rng = Random.new(cfg.Seed + 51439)
		local placed, attempts = 0, targetCount * 5
		local minSep2 = (math.max(10, spec.bbox.X * scaleMul * 0.58)) ^ 2
		local placedCoords, slice, halfH = {}, os.clock(), spec.bbox.Y * 0.5

		for _ = 1, attempts do
			if not alive or placed >= targetCount then break end
			local wx = rng:NextNumber(bounds.minX + 12, bounds.maxX - 12)
			local wz = rng:NextNumber(bounds.minZ + 12, bounds.maxZ - 12)
			local h, m, f, pTag = sampler(wx, wz)
			local grove = 0.5 + math.noise(wx * 0.0085 + 31.7, wz * 0.0085 - 19.3, cfg.Seed * 0.001)
			if pTag == 0 and grove > 0.22 and (not cfg.WaterEnabled or h > cfg.SeaLevel + math.max(2.5, cfg.BeachWidth * 0.7)) then
				local rel = (h - K.SURFACE_BASE) / cfg.MaxHeight
				if rel < snowCap then
					local gx = (sampler(wx + K.VOXEL, wz) - h) / K.VOXEL
					local gz = (sampler(wx, wz + K.VOXEL) - h) / K.VOXEL
					local slope = math.sqrt(gx * gx + gz * gz)
					if slope <= slopeCap then
						local mat = pickSurface(style, {
							h = h, slope = slope, rel = rel, moisture = m, feature = f, pathTag = 0,
							sea = cfg.SeaLevel, water = cfg.WaterEnabled, maxH = cfg.MaxHeight, strataAt = style.strataAt,
							grassSpread = cfg.GrassSpread, cliffMul = cfg.CliffAngle, snowLine = cfg.SnowLine, beachW = cfg.BeachWidth,
						})
						local valid = (not labs.treesAdaptive) or (mat == M.Grass or mat == M.LeafyGrass or mat == M.Ground or mat == M.Mud or mat == M.Sand or mat == M.Snow)
						if valid and mat ~= M.CrackedLava then
							local spaced = true
							for i = #placedCoords, math.max(1, #placedCoords - 45), -1 do
								local pc = placedCoords[i]
								if (pc.x - wx) ^ 2 + (pc.z - wz) ^ 2 < minSep2 then spaced = false; break end
							end
							if spaced then
								local s = rng:NextNumber(minS, maxS)
								local clone = template:Clone()
								local scaledOk = pcall(function() clone:ScaleTo(s) end)
								if not scaledOk then
									local tr, lv = clone:FindFirstChild("Trunk"), clone:FindFirstChild("Leaves")
									if tr then tr.Size = spec.trunk.size * s end
									if lv then
										lv.Size = spec.leaves.size * s; lv.CFrame = CFrame.new(spec.leaves.relPos * s)
										local lsm = lv:FindFirstChildOfClass("SpecialMesh")
										if lsm then lsm.Scale = spec.leaves.meshScale * s end
									end
								end
								local lv = clone:FindFirstChild("Leaves")
								if lv then
									local lsm = lv:FindFirstChildOfClass("SpecialMesh")
									if lsm then lsm.VertexColor = vertexTint end
								end
								local yaw = rng:NextNumber(0, math.pi * 2)
								local tiltX, tiltZ = math.rad(rng:NextNumber(-3.5, 3.5)), math.rad(rng:NextNumber(-3.5, 3.5))
								clone:PivotTo(CFrame.new(wx, h + (halfH - 1.5) * s, wz) * CFrame.Angles(tiltX, yaw, tiltZ))
								clone.Parent = folder
								placed += 1
								table.insert(placedCoords, {x = wx, z = wz})
								table.insert(labs.cachedPoints, {u = (wx - bounds.minX) / cfg.Width, v = (wz - bounds.minZ) / cfg.Depth})
							end
						end
					end
				end
			end
			if os.clock() - slice > activeFrameBudget() then
				if onProgress then onProgress(placed / math.max(1, targetCount)) end
				task.wait(); slice = os.clock()
			end
		end
		labs.spawnedCount = placed
		atlas.dirty = true
		return placed
	end

	fn.clearVolumetricClouds = function()
		local f = workspace:FindFirstChild(K.CLOUDS_FOLDER)
		if f then f:Destroy() end
		labs.activeCloudModel = nil
	end

	fn.syncVolumetricClouds = function(cfg)
		if not labs.cloudsEnabled then fn.clearVolumetricClouds(); return end
		cfg = cfg or currentConfig()
		local scale = clamp(labs.cloudScale, 0.08, 3.0)
		local topRef = math.max(K.SURFACE_BASE + cfg.MaxHeight, cfg.WaterEnabled and cfg.SeaLevel or 0)
		local pivotCF = CFrame.new(cfg.CenterX, topRef + labs.cloudAltitude + 112 * scale, cfg.CenterZ) * CFrame.Angles(0, math.rad(180), 0)
		local cSeq = ColorSequence.new(labs.cloudTint, labs.cloudTint)
		local tSeq = NumberSequence.new(labs.cloudTransparency, labs.cloudTransparency)

		local folder = workspace:FindFirstChild(K.CLOUDS_FOLDER)
		if not folder then folder = Instance.new("Folder"); folder.Name = K.CLOUDS_FOLDER; folder.Parent = workspace end

		if not labs.activeCloudModel or not labs.activeCloudModel.Parent then
			folder:ClearAllChildren()
			local model = Instance.new("Model"); model.Name = "Model"; model.WorldPivot = pivotCF
			for idx, relY in ipairs(CLOUD_LAYER_REL_Y) do
				local part = Instance.new("Part")
				part.Name = "Cloud layer 1"; part.Shape = Enum.PartType.Block
				part.Size = Vector3.new(50 * scale, 16 * scale, 50 * scale)
				part.Material = M.Neon; part.Color = Color3.fromRGB(255, 252, 252); part.Transparency = 1
				part.CanCollide = false; part.CanTouch = false; part.CanQuery = false; part.Anchored = true
				part.CFrame = pivotCF * CFrame.new(0, relY * scale, 0) * CFrame.Angles(0, math.rad(180), 0)
				part:SetAttribute("LayerIndex", idx); part.Parent = model

				local att0 = Instance.new("Attachment")
				att0.Name = "Attachment0"; att0.Position = Vector3.new(10024 * scale, 0, 0); att0.Orientation = Vector3.new(90, 0, 0); att0.Parent = part
				local att1 = Instance.new("Attachment")
				att1.Name = "Attachment1"; att1.Position = Vector3.new(-10024 * scale, 0, 0); att1.Orientation = Vector3.new(90, 0, 0); att1.Parent = part

				local beam = Instance.new("Beam")
				beam.Name = "Beam"; beam.Attachment0 = att0; beam.Attachment1 = att1; beam.Enabled = true
				beam.Texture = "rbxassetid://7215671178"; beam.TextureMode = Enum.TextureMode.Stretch
				beam.TextureLength = 1; beam.TextureSpeed = labs.cloudSpeed
				beam.Width0 = 20048 * scale; beam.Width1 = 20048 * scale; beam.Segments = 1; beam.FaceCamera = false
				beam.LightEmission = 0; beam.LightInfluence = 1; beam.Brightness = 1
				beam.Color = cSeq; beam.Transparency = tSeq; beam.Parent = part
			end
			model.Parent = folder
			labs.activeCloudModel = model
		else
			labs.activeCloudModel.WorldPivot = pivotCF
			for _, child in ipairs(labs.activeCloudModel:GetChildren()) do
				if child:IsA("BasePart") then
					local idx = child:GetAttribute("LayerIndex") or 8
					local relY = CLOUD_LAYER_REL_Y[idx] or 0
					child.Size = Vector3.new(50 * scale, 16 * scale, 50 * scale)
					child.CFrame = pivotCF * CFrame.new(0, relY * scale, 0) * CFrame.Angles(0, math.rad(180), 0)
					local a0, a1, bm = child:FindFirstChild("Attachment0"), child:FindFirstChild("Attachment1"), child:FindFirstChild("Beam")
					if a0 then a0.Position = Vector3.new(10024 * scale, 0, 0) end
					if a1 then a1.Position = Vector3.new(-10024 * scale, 0, 0) end
					if bm then bm.Width0 = 20048 * scale; bm.Width1 = 20048 * scale; bm.TextureSpeed = labs.cloudSpeed; bm.Color = cSeq; bm.Transparency = tSeq end
				end
			end
		end
	end

	fn.setAtmosphericSimulation = function(on)
		labs.atmoSimEnabled = on
		if on then
			labs.surfaceGravity = (workspace.Gravity > 0) and workspace.Gravity or 196.2
			labs.surfaceClockTime = Lighting.ClockTime
			local atmo = Lighting:FindFirstChild("SiriusPlanetAtmosphere") or Lighting:FindFirstChildOfClass("Atmosphere")
			if atmo then
				labs.baseAtmoDensity = atmo.Density
				labs.baseAtmoHaze = atmo.Haze
				labs.baseAtmoGlare = atmo.Glare
			end
			labs.baseOutdoorAmbient = Lighting.OutdoorAmbient
			labs.baseFogEnd = Lighting.FogEnd
			setPill("ATMO SIM", C.sky)
			setStatus("ATMOSPHERIC SIMULATION ACTIVE", "Simulating altitude lapse rates, Rayleigh scattering decay, zero-G & space re-entry.", C.skyPale)
		else
			fn.removeOrbitEarth()
			if fn.stopReentryVFX then fn.stopReentryVFX() end
			if fn.muteAllGameAudio then fn.muteAllGameAudio(false) end
			if labs.inDeepSpace then
				labs.inDeepSpace = false
				local ps = fn.getPlanetSpec(planet.selectedId)
				fn.applySkybox(labs.previousSkyboxKey or (ps and ps.skyboxKey) or "Earthly")
			end
			if LocalPlayer.Character then
				local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				if hrp then
					local bv = hrp:FindFirstChild("SiriusZeroGFloat")
					if bv then pcall(function() bv:Destroy() end) end
				end
			end
			if ui.plasmaOverlay then ui.plasmaOverlay.Visible = false end
			labs.spaceFactor = 0
			labs.reentryIntensity = 0
			pcall(function()
				if labs.surfaceGravity then workspace.Gravity = labs.surfaceGravity end
				if labs.surfaceClockTime then Lighting.ClockTime = labs.surfaceClockTime end
				local atmo = Lighting:FindFirstChild("SiriusPlanetAtmosphere") or Lighting:FindFirstChildOfClass("Atmosphere")
				if atmo then
					if labs.baseAtmoDensity then atmo.Density = labs.baseAtmoDensity end
					if labs.baseAtmoHaze then atmo.Haze = labs.baseAtmoHaze end
					if labs.baseAtmoGlare then atmo.Glare = labs.baseAtmoGlare end
				end
				if labs.baseOutdoorAmbient then Lighting.OutdoorAmbient = labs.baseOutdoorAmbient end
				if labs.baseFogEnd then Lighting.FogEnd = labs.baseFogEnd end
			end)
			setPill("READY", C.accent)
			setStatus("ATMOSPHERIC SIMULATION DISABLED", "Restored standard surface lighting, atmosphere density & gravity.", C.muted)
		end
	end

	fn.removeOrbitEarth = function()
		if labs.orbitEarth and labs.orbitEarth.Parent then
			pcall(function() labs.orbitEarth:Destroy() end)
		else
			local stale = workspace:FindFirstChild("earth")
			if stale then pcall(function() stale:Destroy() end) end
		end
		labs.orbitEarth = nil
		labs.orbitEarthParts = nil
	end

	fn.spawnOrbitEarth = function()
		if labs.orbitEarth and labs.orbitEarth.Parent then return labs.orbitEarth end
		local stale = workspace:FindFirstChild("earth")
		if stale then pcall(function() stale:Destroy() end) end

		local cx = (values and values.CenterX) or 0
		local cz = ((values and values.CenterZ) or 0) - 5000 -- 5000 studs forward from original position
		if LocalPlayer.Character then
			local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if hrp then
				if math.abs(hrp.Position.X - cx) > 4000 then cx = hrp.Position.X end
				if math.abs((hrp.Position.Z - 5000) - cz) > 4000 then cz = hrp.Position.Z - 5000 end
			end
		end

		local root = Instance.new("Part")
		root.Name = "earth"
		root.Archivable = true
		root.Size = Vector3.new(4, 1, 2)
		root.CFrame = CFrame.new(cx, 2000, cz)
		root.Color = Color3.fromRGB(163, 162, 165)
		root.BrickColor = BrickColor.new("Medium stone grey")
		root.Material = Enum.Material.Plastic
		root.Transparency = 0
		root.Reflectance = 0
		root.CastShadow = true
		root.Anchored = true
		root.CanCollide = false
		root.CanTouch = false
		root.CanQuery = false
		root.Shape = Enum.PartType.Block
		root.TopSurface = Enum.SurfaceType.Smooth
		root.BottomSurface = Enum.SurfaceType.Smooth

		local rootMesh = Instance.new("SpecialMesh")
		rootMesh.Name = "Mesh"
		rootMesh.MeshType = Enum.MeshType.FileMesh
		rootMesh.MeshId = "rbxassetid://6510695035"
		rootMesh.TextureId = "rbxassetid://5985984466"
		rootMesh.Scale = Vector3.new(22000, 240, 22000)
		rootMesh.Offset = Vector3.new(0, 0, 0)
		rootMesh.VertexColor = Vector3.new(1, 1, 1)
		rootMesh.Parent = root

		-- Child Part 1 (Cloud Cover Layer)
		local p1 = Instance.new("Part")
		p1.Name = "Part"
		p1.Archivable = true
		p1.Size = Vector3.new(4, 1, 2)
		p1.CFrame = CFrame.new(cx, 2000.0377, cz)
		p1.Color = Color3.fromRGB(17, 17, 17)
		p1.BrickColor = BrickColor.new("Really black")
		p1.Material = Enum.Material.Plastic
		p1.Transparency = 0.05
		p1.Reflectance = 0
		p1.CastShadow = true
		p1.Anchored = true
		p1.CanCollide = false
		p1.CanTouch = false
		p1.CanQuery = false
		p1.Shape = Enum.PartType.Block
		p1.TopSurface = Enum.SurfaceType.Smooth
		p1.BottomSurface = Enum.SurfaceType.Smooth

		local m1 = Instance.new("SpecialMesh")
		m1.Name = "Mesh"
		m1.MeshType = Enum.MeshType.FileMesh
		m1.MeshId = "rbxassetid://6510695035"
		m1.TextureId = "rbxassetid://8907842588"
		m1.Scale = Vector3.new(22000, 240, 22000)
		m1.Offset = Vector3.new(0, 0, 0)
		m1.VertexColor = Vector3.new(1, 1, 1)
		m1.Parent = p1
		p1.Parent = root

		-- Child Part 2 (Limb Atmosphere Neon Glow)
		local p2 = Instance.new("Part")
		p2.Name = "Part"
		p2.Archivable = true
		p2.Size = Vector3.new(4, 1, 2)
		p2.CFrame = CFrame.new(cx, 2000.0293, cz)
		p2.Color = Color3.fromRGB(128, 187, 219)
		p2.BrickColor = BrickColor.new("Pastel Blue")
		p2.Material = Enum.Material.Neon
		p2.Transparency = 0.85
		p2.Reflectance = 0
		p2.CastShadow = true
		p2.Anchored = true
		p2.CanCollide = false
		p2.CanTouch = false
		p2.CanQuery = false
		p2.Shape = Enum.PartType.Block
		p2.TopSurface = Enum.SurfaceType.Smooth
		p2.BottomSurface = Enum.SurfaceType.Smooth

		local m2 = Instance.new("SpecialMesh")
		m2.Name = "Mesh"
		m2.MeshType = Enum.MeshType.FileMesh
		m2.MeshId = "rbxassetid://6510695035"
		m2.TextureId = ""
		m2.Scale = Vector3.new(22000, 240, 22000)
		m2.Offset = Vector3.new(0, 0, 0)
		m2.VertexColor = Vector3.new(1, 1, 1)
		m2.Parent = p2
		p2.Parent = root

		root.Parent = workspace
		labs.orbitEarth = root
		labs.orbitEarthParts = {root = root, p1 = p1, p2 = p2, cx = cx, cz = cz}
		return root
	end

	fn.muteAllGameAudio = function(mute)
		if mute then
			if not labs.audioMuted then
				labs.audioMuted = true
				if planet.activeSounds then
					for _, s in ipairs(planet.activeSounds) do
						if not s:GetAttribute("SiriusOrigVol") then s:SetAttribute("SiriusOrigVol", s.Volume) end
						s.Volume = 0
					end
				end
				pcall(function()
					for _, obj in ipairs(workspace:GetDescendants()) do
						if obj:IsA("Sound") and not obj:GetAttribute("SiriusOrigVol") then
							obj:SetAttribute("SiriusOrigVol", obj.Volume)
							obj.Volume = 0
						end
					end
					for _, obj in ipairs(game:GetService("SoundService"):GetDescendants()) do
						if obj:IsA("Sound") and not obj:GetAttribute("SiriusOrigVol") then
							obj:SetAttribute("SiriusOrigVol", obj.Volume)
							obj.Volume = 0
						end
					end
				end)
			end
		else
			if labs.audioMuted then
				labs.audioMuted = false
				if planet.activeSounds then
					for _, s in ipairs(planet.activeSounds) do
						local ov = s:GetAttribute("SiriusOrigVol")
						if ov ~= nil then s.Volume = ov; s:SetAttribute("SiriusOrigVol", nil) end
					end
				end
				pcall(function()
					for _, obj in ipairs(workspace:GetDescendants()) do
						if obj:IsA("Sound") then
							local ov = obj:GetAttribute("SiriusOrigVol")
							if ov ~= nil then obj.Volume = ov; obj:SetAttribute("SiriusOrigVol", nil) end
						end
					end
					for _, obj in ipairs(game:GetService("SoundService"):GetDescendants()) do
						if obj:IsA("Sound") then
							local ov = obj:GetAttribute("SiriusOrigVol")
							if ov ~= nil then obj.Volume = ov; obj:SetAttribute("SiriusOrigVol", nil) end
						end
					end
				end)
			end
		end
	end

	fn.scanSurfaceBelow = function()
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not root then return "NO TELEMETRY" end
		local px, pz = root.Position.X, root.Position.Z
		local rayOrigin = Vector3.new(px, 14500, pz)
		local rayDir = Vector3.new(0, -16000, 0)
		local rayParams = RaycastParams.new()
		rayParams.FilterType = Enum.RaycastFilterType.Include
		rayParams.FilterDescendantsInstances = {Terrain}
		local hit = workspace:Raycast(rayOrigin, rayDir, rayParams)

		local elev = hit and round(hit.Position.Y) or 0
		local matName = hit and hit.Material.Name or "Terrain"
		local lapseTemp = 18.5 - (root.Position.Y * 0.0035)
		local lapseStr = string.format("%.1f°C", lapseTemp)
		local pressure = math.max(0.000, 1.013 * math.exp(-root.Position.Y / 3200))
		local pressStr = string.format("%.4f atm", pressure)

		local colName = "Highlands"
		if elev < 20 then colName = "Ocean Basin"
		elseif elev < 60 then colName = "Coastal Shelf"
		elseif elev > 220 then colName = "Alpine Ridge" end

		local res = string.format("GROUND EL: %d st · MAT: %s (%s) · T: %s · P: %s", elev, matName, colName, lapseStr, pressStr)
		if ui.spaceScannerReadout then
			ui.spaceScannerReadout.Text = res
			ui.spaceScannerReadout.TextColor3 = C.skyPale
		end
		playUISound("click", 1.15, 0.7)
		setStatus("SURFACE SCAN COMPLETE", res, C.skyPale)
		return res
	end

	fn.launchOrbitalProbe = function(probeType)
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local pPos = root.Position + Vector3.new(math.random(-25, 25), 8, math.random(-25, 25))
		local m = Instance.new("Model")
		m.Name = (probeType == "comms") and "OrbitalCommsRelay" or "OrbitalResearchProbe"
		
		local core = Instance.new("Part")
		core.Name = "Core"
		core.Size = Vector3.new(3, 3, 3)
		core.CFrame = CFrame.new(pPos)
		core.Color = Color3.fromRGB(215, 225, 235)
		core.Material = Enum.Material.Metal
		core.Anchored = true
		core.CanCollide = false
		core.Parent = m
		m.PrimaryPart = core
		
		local dish = Instance.new("Part")
		dish.Name = "Dish"
		dish.Shape = Enum.PartType.Cylinder
		dish.Size = Vector3.new(0.6, 3.8, 3.8)
		dish.CFrame = CFrame.new(pPos + Vector3.new(0, 2.2, 0)) * CFrame.Angles(0, 0, math.rad(90))
		dish.Color = Color3.fromRGB(240, 240, 245)
		dish.Material = Enum.Material.SmoothPlastic
		dish.Anchored = true
		dish.CanCollide = false
		dish.Parent = m

		local pL = Instance.new("PointLight")
		pL.Color = (probeType == "comms") and Color3.fromRGB(75, 185, 255) or Color3.fromRGB(255, 180, 50)
		pL.Range = 36
		pL.Brightness = 3.0
		pL.Parent = core

		-- Nadir holographic earth scan beam
		local scanBeam = Instance.new("Part")
		scanBeam.Name = "ScanBeam"
		scanBeam.Shape = Enum.PartType.Cylinder
		scanBeam.Size = Vector3.new(65, 0.22, 0.22)
		scanBeam.CFrame = CFrame.new(pPos + Vector3.new(0, -32.5, 0)) * CFrame.Angles(0, 0, math.rad(90))
		scanBeam.Color = (probeType == "comms") and Color3.fromRGB(75, 205, 255) or Color3.fromRGB(255, 175, 45)
		scanBeam.Material = Enum.Material.Neon
		scanBeam.Transparency = 0.45
		scanBeam.Anchored = true
		scanBeam.CanCollide = false
		scanBeam.Parent = m

		-- Telemetry HUD Signal Marker
		local bg = Instance.new("BillboardGui")
		bg.Name = "TelemetrySignal"
		bg.Size = UDim2.fromOffset(180, 32)
		bg.StudsOffset = Vector3.new(0, 3.6, 0)
		bg.AlwaysOnTop = true
		bg.MaxDistance = 500
		bg.Adornee = core
		bg.Parent = core
		local sigCol = (probeType == "comms") and Color3.fromRGB(130, 215, 255) or Color3.fromRGB(255, 215, 120)
		local sigText = (probeType == "comms") and "🛰 COMMS RELAY · TX ACTIVE\nCH-04 · 1420.4 MHz · ORBIT" or "🔬 SCIENTIFIC PROBE · SCANNING\nCH-01 · TELEMETRY BEACON"
		makeText(bg, sigText, 8, sigCol, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		-- 3D Spatial Radio Pulse Audio
		local snd = Instance.new("Sound")
		snd.Name = "ProbeAudio"
		snd.SoundId = "rbxassetid://9112801967"
		snd.Volume = 0.28
		snd.PlaybackSpeed = (probeType == "comms") and 1.75 or 1.35
		snd.Looped = true
		snd.RollOffMode = Enum.RollOffMode.InverseTapered
		snd.MaxDistance = 140
		snd.Parent = core
		snd:Play()

		for side = -1, 1, 2 do
			local wing = Instance.new("Part")
			wing.Name = "SolarWing"
			wing.Size = Vector3.new(5.5, 0.2, 2.2)
			wing.CFrame = CFrame.new(pPos + Vector3.new(side * 4.4, 0, 0))
			wing.Color = Color3.fromRGB(40, 110, 195)
			wing.Material = Enum.Material.Neon
			wing.Anchored = true
			wing.CanCollide = false
			wing.Parent = m
		end

		m.Parent = workspace
		table.insert(labs.spaceProbes, m)
		playUISound("teleport", 1.25, 0.75)
		setStatus("PROBE DEPLOYED", string.format("Launched %s into Keplerian orbit at alt %d studs.", m.Name, round(pPos.Y)), C.skyPale)
		return m
	end

	fn.clearOrbitalProbes = function()
		for _, p in ipairs(labs.spaceProbes) do
			if p and p.Parent then pcall(function() p:Destroy() end) end
		end
		table.clear(labs.spaceProbes)
		local staleProbes = {"OrbitalResearchProbe", "OrbitalCommsRelay"}
		for _, name in ipairs(staleProbes) do
			for _, obj in ipairs(workspace:GetChildren()) do
				if obj.Name == name then pcall(function() obj:Destroy() end) end
			end
		end
		setStatus("PROBES CLEARED", "All deployed orbital satellites and scientific beacons retrieved.", C.muted)
	end

	fn.stopReentryVFX = function(char)
		labs.reentryActive = false
		labs.reentryIntensity = 0
		labs.reentrySoundTime = 0
		planet.shakeActive = false
		planet.shakeIntensity = 0

		-- 1. Stop and destroy sound immediately (no lingering roar)
		if labs.reentrySound then
			pcall(function()
				labs.reentrySound:Stop()
				labs.reentrySound:Destroy()
			end)
			labs.reentrySound = nil
		end

		-- 2. Immediately turn off and destroy torso light (no lingering orange glow)
		if labs.reentryLight then
			pcall(function()
				labs.reentryLight.Enabled = false
				labs.reentryLight:Destroy()
			end)
			labs.reentryLight = nil
		end

		-- 3. Emitter: stop emitting new particles, allow existing particles to finish lifetime, then delete
		if labs.reentryEmitter and labs.reentryEmitter.Parent then
			pcall(function()
				labs.reentryEmitter.Enabled = false
				local pe = labs.reentryEmitter
				game:GetService("Debris"):AddItem(pe, 3.5)
			end)
			labs.reentryEmitter = nil
		end

		-- 4. Purge any orphaned lights, sounds or emitters on character
		local c = char or LocalPlayer.Character
		if c then
			for _, obj in ipairs(c:GetDescendants()) do
				if obj.Name == "SiriusReentryLight" then
					pcall(function()
						if obj:IsA("PointLight") then obj.Enabled = false end
						obj:Destroy()
					end)
				elseif obj.Name == "SiriusReentrySound" then
					pcall(function()
						if obj:IsA("Sound") then obj:Stop() end
						obj:Destroy()
					end)
				elseif obj.Name == "SiriusReentryPlasma" and obj:IsA("ParticleEmitter") then
					obj.Enabled = false
					pcall(function() game:GetService("Debris"):AddItem(obj, 3.5) end)
				end
			end
		end

		pcall(function()
			for _, s in ipairs(game:GetService("SoundService"):GetDescendants()) do
				if s.Name == "SiriusReentrySound" then
					s:Stop()
					s:Destroy()
				end
			end
		end)

		if ui and ui.plasmaOverlay then
			ui.plasmaOverlay.Visible = false
		end
	end

	fn.startReentryVFX = function(char)
		if labs.reentryActive then return end
		local c = char or LocalPlayer.Character
		if not c then return end
		local torso = c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso") or c:FindFirstChild("HumanoidRootPart")
		if not torso then return end

		-- Ensure any stale lights or sounds are completely removed before spawning new ones
		for _, obj in ipairs(c:GetDescendants()) do
			if obj.Name == "SiriusReentryLight" or obj.Name == "SiriusReentrySound" then
				pcall(function()
					if obj:IsA("PointLight") then obj.Enabled = false end
					if obj:IsA("Sound") then obj:Stop() end
					obj:Destroy()
				end)
			end
		end

		labs.reentryActive = true
		labs.reentrySoundTime = 0

		-- 1. Animated Flipbook Explosion Particle Emitter (Exact User Specifications)
		local pe = Instance.new("ParticleEmitter")
		pe.Name = "SiriusReentryPlasma"
		pe.Texture = "rbxassetid://15194500627"

		-- Flipbook Animation
		pcall(function()
			pe.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
			pe.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
			pe.FlipbookStartRandom = false
			pe.FlipbookFramerate = NumberRange.new(1, 1)
		end)

		-- Appearance
		pe.Color = ColorSequence.new(Color3.fromRGB(255, 142, 144))
		pe.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.266497, 0),
			NumberSequenceKeypoint.new(1, 1),
		})
		pe.Size = NumberSequence.new(20, 20)
		pcall(function() pe.Squash = NumberSequence.new(0, 0) end)
		pe.LightEmission = 0.2
		pe.LightInfluence = 0
		pcall(function() pe.Brightness = 5 end)
		pe.ZOffset = 1

		-- Emission Settings
		pe.Enabled = true
		pe.Rate = 500
		pe.Lifetime = NumberRange.new(3, 3)
		pe.Speed = NumberRange.new(0, 2)
		pe.TimeScale = 1
		pe.Drag = 1
		pe.VelocityInheritance = 0
		pe.Acceleration = Vector3.new(0, 0, 0)
		pe.EmissionDirection = Enum.NormalId.Top
		pe.SpreadAngle = Vector2.new(75, 75)

		-- Rotation Settings
		pe.Rotation = NumberRange.new(-180, 180)
		pe.RotSpeed = NumberRange.new(0, 0)
		pe.Orientation = Enum.ParticleOrientation.FacingCamera

		-- Emission Shape
		pcall(function()
			pe.Shape = Enum.ParticleEmitterShape.Sphere
			pe.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
			pe.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
		end)
		pe.LockedToPart = false
		pcall(function() pe.WindAffectsDrag = false end)
		pe.Parent = torso
		labs.reentryEmitter = pe

		-- 2. Really Bright Orange Torso Light
		local light = Instance.new("PointLight")
		light.Name = "SiriusReentryLight"
		light.Color = Color3.fromRGB(255, 135, 40)
		light.Brightness = 8
		light.Range = 36
		light.Shadows = false
		light.Parent = torso
		labs.reentryLight = light

		-- 3. Atmospheric Re-entry Acoustic Shockwave Sound (9104875504)
		local snd = Instance.new("Sound")
		snd.Name = "SiriusReentrySound"
		snd.SoundId = "rbxassetid://9104875504"
		snd.Volume = 0.05 -- starts fade in
		snd.PlaybackSpeed = 0.35 -- starts really low pitch
		snd.Looped = true
		snd.Parent = torso
		snd:Play()
		labs.reentrySound = snd
	end

	fn.setSpaceAudioMode = function(mode)
		labs.spaceAudioMode = mode or "Mute"
		local SoundService = game:GetService("SoundService")
		local sfx = SoundService:FindFirstChild("SiriusSpaceAudio")
		if labs.spaceAudioMode == "Mute" then
			if sfx then pcall(function() sfx:Stop(); sfx:Destroy() end) end
			if fn.muteAllGameAudio then fn.muteAllGameAudio(true) end
		elseif labs.spaceAudioMode == "Suit" then
			if not sfx then
				sfx = Instance.new("Sound")
				sfx.Name = "SiriusSpaceAudio"
				sfx.SoundId = "rbxassetid://9112801967"
				sfx.Volume = 0.22
				sfx.PlaybackSpeed = 0.45
				sfx.Looped = true
				sfx.Parent = SoundService
			end
			sfx:Play()
		elseif labs.spaceAudioMode == "Drone" then
			if not sfx then
				sfx = Instance.new("Sound")
				sfx.Name = "SiriusSpaceAudio"
				sfx.SoundId = "rbxassetid://139668444963836"
				sfx.Volume = 0.32
				sfx.PlaybackSpeed = 0.75
				sfx.Looped = true
				sfx.Parent = SoundService
			end
			sfx:Play()
		end
	end

	fn.setOrbitalInclination = function(incDeg)
		labs.spaceInclination = incDeg or 28.5
		if ui.spaceViewport and ui.spaceViewport.orbitNodes then
			local sv = ui.spaceViewport
			local incRad = math.rad(labs.spaceInclination)
			local orbR = 8.6
			for i = 1, 24 do
				local ang = (i / 24) * math.pi * 2
				local nextAng = ((i + 1) / 24) * math.pi * 2
				local np = sv.orbitNodes[i]
				if np and np.Parent then
					local pA = Vector3.new(math.cos(ang) * orbR, math.sin(ang) * orbR * math.sin(incRad) * 0.35, math.sin(ang) * orbR * math.cos(incRad))
					local pB = Vector3.new(math.cos(nextAng) * orbR, math.sin(nextAng) * orbR * math.sin(incRad) * 0.35, math.sin(nextAng) * orbR * math.cos(incRad))
					np.CFrame = CFrame.new((pA + pB) * 0.5, pB)
				end
			end
		end
	end

	fn.getPlanetSpec = function(id)
		for _, a in ipairs(PLANET_ARCHETYPES) do if a.id == id then return a end end
		return PLANET_ARCHETYPES[1]
	end

	fn.triggerScreenShake = function(intensity, duration)
		planet.shakeIntensity = intensity or 0.65
		planet.shakeDuration = duration or 1.35
		planet.shakeStartTime = os.clock()
		planet.shakeActive = true
	end

	fn.stopPlanetAudio = function()
		if planet.soundFolder then
			pcall(function() planet.soundFolder:ClearAllChildren() end)
		end
		table.clear(planet.activeSounds)
		planet.activeAudioKey = nil
	end

	fn.playOneShotPlanetSound = function(id, vol, pitch)
		if not state.soundEnabled then return end
		pcall(function()
			local SoundService = game:GetService("SoundService")
			local f = planet.soundFolder or SoundService:FindFirstChild("SiriusPlanetAudio")
			if not f then
				f = Instance.new("Folder")
				f.Name = "SiriusPlanetAudio"
				f.Parent = SoundService
				planet.soundFolder = f
			end
			local s = Instance.new("Sound")
			s.SoundId = id
			s.Volume = (vol or 0.6) * (state.soundVolume or 0.45)
			s.PlaybackSpeed = pitch or 1.0
			s.Looped = false
			s.Parent = f
			s:Play()
			game:GetService("Debris"):AddItem(s, 12)
		end)
	end

	fn.updatePlanetAudio = function()
		if not planet.audioEnabled or not state.soundEnabled then
			fn.stopPlanetAudio()
			return
		end
		local arch = fn.getPlanetSpec(planet.archetype)
		local aKey = arch.audioType or "Earthly"
		if planet.volcanic >= 0.85 then aKey = "HeavyVolcanic"
		elseif planet.volcanic >= 0.65 then aKey = "Volcanic"
		elseif planet.cryo >= 0.85 then aKey = "HeavySnow"
		elseif planet.cryo >= 0.65 then aKey = "Snowy"
		elseif planet.hydro >= 0.85 and (aKey == "Earthly" or aKey == "BiolumeEarthly") then aKey = "Watery" end

		if planet.activeAudioKey == aKey and #planet.activeSounds > 0 then return end
		fn.stopPlanetAudio()
		planet.activeAudioKey = aKey

		local audioData = PLANET_AUDIO[aKey]
		if not audioData then return end

		local SoundService = game:GetService("SoundService")
		local f = planet.soundFolder or SoundService:FindFirstChild("SiriusPlanetAudio")
		if not f then
			f = Instance.new("Folder")
			f.Name = "SiriusPlanetAudio"
			f.Parent = SoundService
			planet.soundFolder = f
		end

		for _, track in ipairs(audioData.ambient or {}) do
			pcall(function()
				local s = Instance.new("Sound")
				s.Name = track.name or "PlanetAmbient"
				s.SoundId = track.id
				s.Volume = (track.vol or 0.5) * (state.soundVolume or 0.45)
				s.PlaybackSpeed = track.pitch or 1.0
				s.Looped = track.loop == true
				s.Parent = f
				s:Play()
				table.insert(planet.activeSounds, s)
			end)
		end

		local now = os.clock()
		if audioData.quake then
			planet.nextQuakeTick = now + math.random(audioData.quake.minSec * 10, audioData.quake.maxSec * 10) / 10
		end
		if audioData.burst then
			planet.nextBurstTick = now + math.random(audioData.burst.minSec * 10, audioData.burst.maxSec * 10) / 10
		end
	end

	fn.applySkybox = function(skyKey)
		local data = PLANET_SKYBOXES[skyKey] or PLANET_SKYBOXES.Earthly
		if not data then return end
		pcall(function()
			local sky = Lighting:FindFirstChild("SiriusPlanetSky")
			if not sky then
				local existing = Lighting:FindFirstChildOfClass("Sky")
				if existing and existing.Name ~= "SiriusPlanetSky" then
					existing.Parent = nil
					planet.hiddenOldSky = existing
				end
				sky = Instance.new("Sky")
				sky.Name = "SiriusPlanetSky"
				sky.CelestialBodiesShown = true
				sky.StarCount = labs.spaceStarCount or 4500
				sky.Parent = Lighting
			end
			sky.SkyboxBk = data.SkyboxBk
			sky.SkyboxDn = data.SkyboxDn
			sky.SkyboxFt = data.SkyboxFt
			sky.SkyboxLf = data.SkyboxLf
			sky.SkyboxRt = data.SkyboxRt
			sky.SkyboxUp = data.SkyboxUp
			if skyKey == "DeepSpace" then
				sky.StarCount = labs.spaceStarCount or 4500
			end
		end)
	end

	fn.updatePlanetSkybox = function()
		if not planet.autoSkySync then return end
		if labs.inDeepSpace then return end
		local arch = fn.getPlanetSpec(planet.archetype)
		local skyKey = arch.skyType or "Earthly"
		if planet.volcanic >= 0.85 then skyKey = "HeavyVolcanic"
		elseif planet.volcanic >= 0.65 then skyKey = "VolcanicMagma"
		elseif planet.cryo >= 0.75 then skyKey = "Ice" end
		fn.applySkybox(skyKey)
	end

	fn.restoreOriginalEnvironment = function()
		fn.stopPlanetAudio()
		local orig = session.originalLighting
		if not orig then return end
		pcall(function()
			Lighting.Ambient, Lighting.OutdoorAmbient = orig.Ambient, orig.OutdoorAmbient
			Lighting.Brightness, Lighting.ClockTime = orig.Brightness, orig.ClockTime
			Lighting.ColorShift_Top, Lighting.ColorShift_Bottom = orig.ColorShift_Top, orig.ColorShift_Bottom
			Lighting.ExposureCompensation = orig.ExposureCompensation
			Lighting.FogColor, Lighting.FogEnd, Lighting.FogStart = orig.FogColor, orig.FogEnd, orig.FogStart
			Lighting.GlobalShadows = orig.GlobalShadows
			workspace.Gravity = orig.Gravity or 196.2
			workspace.GlobalWind = orig.GlobalWind or Vector3.zero
			local ca = Lighting:FindFirstChild("SiriusPlanetAtmosphere")
			if ca then ca:Destroy() end
			local cc = Lighting:FindFirstChild("SiriusPlanetColorCorrection")
			if cc then cc:Destroy() end
			local ps = Lighting:FindFirstChild("SiriusPlanetSky")
			if ps then ps:Destroy() end
			if planet.hiddenOldSky and planet.hiddenOldSky.Parent == nil then
				planet.hiddenOldSky.Parent = Lighting
				planet.hiddenOldSky = nil
			elseif orig.SkyboxBk then
				local sky = Lighting:FindFirstChildOfClass("Sky")
				if not sky then sky = Instance.new("Sky"); sky.Parent = Lighting end
				sky.SkyboxBk = orig.SkyboxBk; sky.SkyboxDn = orig.SkyboxDn
				sky.SkyboxFt = orig.SkyboxFt; sky.SkyboxLf = orig.SkyboxLf
				sky.SkyboxRt = orig.SkyboxRt; sky.SkyboxUp = orig.SkyboxUp
				if orig.CelestialBodiesShown ~= nil then sky.CelestialBodiesShown = orig.CelestialBodiesShown end
				if orig.StarCount then sky.StarCount = orig.StarCount end
			end
			local origAtmo = Lighting:FindFirstChildOfClass("Atmosphere")
			if origAtmo and orig.AtmoDensity then
				origAtmo.Density, origAtmo.Offset = orig.AtmoDensity, orig.AtmoOffset
				origAtmo.Color, origAtmo.Decay = orig.AtmoColor, orig.AtmoDecay
				origAtmo.Glare, origAtmo.Haze = orig.AtmoGlare, orig.AtmoHaze
			end
		end)
	end

	fn.syncPlanetToWorld = function()
		local arch = fn.getPlanetSpec(planet.archetype)
		if planet.liveGravitySync or state.worldLowGravity then
			local gMult = state.worldLowGravity and 0.28 or clamp(planet.gravityG, 0.10, 3.00)
			pcall(function()
				workspace.Gravity = 196.2 * gMult
				workspace.GlobalWind = Vector3.new(planet.windSpeed, 0, planet.windSpeed * 0.35)
				local char = LocalPlayer.Character
				local hum = char and char:FindFirstChildOfClass("Humanoid")
				if hum and planet.spaceFloat then
					hum.UseJumpPower = true
					hum.JumpPower = math.max(65, round(50 * math.sqrt(1 / math.max(0.15, gMult))))
				end
			end)
		end
		if planet.autoSkySync then fn.updatePlanetSkybox() end
		if planet.audioEnabled then fn.updatePlanetAudio() end
		if not planet.liveSkySync then return end
		pcall(function()
			Lighting.ClockTime = clamp(planet.solarTime, 0, 23.9)
			local atmoTint = arch.atmoCol:Lerp(Color3.fromRGB(255, 108, 48), clamp(planet.volcanic * 0.65, 0, 1))
			atmoTint = atmoTint:Lerp(Color3.fromRGB(205, 240, 255), clamp(planet.cryo * 0.52, 0, 1))
			Lighting.ColorShift_Top = atmoTint
			Lighting.ColorShift_Bottom = arch.crustCol
			Lighting.OutdoorAmbient = atmoTint:Lerp(Color3.fromRGB(88, 92, 106), 0.52)
			Lighting.Ambient = arch.crustCol:Lerp(Color3.fromRGB(44, 48, 58), 0.65)
			Lighting.FogColor = atmoTint

			if perf.distanceFogLod then
				local atmo = Lighting:FindFirstChild("SiriusPlanetAtmosphere") or Lighting:FindFirstChildOfClass("Atmosphere")
				if not atmo then
					atmo = Instance.new("Atmosphere"); atmo.Name = "SiriusPlanetAtmosphere"; atmo.Parent = Lighting
				end
				atmo.Density = clamp(planet.atmo * 0.72, 0.04, 0.88)
				atmo.Haze = clamp(planet.haze * 2.5, 0, 3.0)
				atmo.Glare = clamp(planet.volcanic * 0.8 + planet.haze * 0.4, 0, 1.5)
				atmo.Color = atmoTint
				atmo.Decay = arch.nebulaCol:Lerp(Color3.fromRGB(26, 22, 34), 0.35)
			end

			local cc = Lighting:FindFirstChild("SiriusPlanetColorCorrection")
			if not cc then
				cc = Instance.new("ColorCorrectionEffect"); cc.Name = "SiriusPlanetColorCorrection"; cc.Parent = Lighting
			end
			cc.TintColor = Color3.new(1, 1, 1):Lerp(atmoTint, 0.16)
			cc.Saturation = (planet.archetype == "Ashen" or planet.archetype == "Fractured") and -0.32 or (planet.archetype == "Xeno" and 0.24 or 0.06)
			cc.Contrast = 0.08 + planet.volcanic * 0.10
		end)
	end

	fn.applyExplorerQoL = function()
		pcall(function()
			if workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = clamp(state.worldCameraFov, 50, 115) end
			Lighting.GlobalShadows = perf.globalShadows == true
			if not planet.liveSkySync then
				Lighting.ClockTime = clamp(state.worldClockTime, 0, 23.9)
				Lighting.Brightness = clamp(state.worldBrightness, 0.2, 6.0)
			end
			local char = LocalPlayer.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if hum then
				if state.worldExplorerBoost then
					hum.WalkSpeed = clamp(state.worldWalkSpeed, 16, 160)
					hum.UseJumpPower = true; hum.JumpPower = clamp(state.worldJumpPower, 50, 220)
				else
					hum.WalkSpeed = 16; hum.JumpPower = 50
				end
			end
			if state.worldLowGravity then workspace.Gravity = 55
			elseif not planet.liveGravitySync and session.originalLighting then workspace.Gravity = session.originalLighting.Gravity or 196.2 end
		end)
	end

	----------------------------------------------------------------------------------------------------
	-- 9. IN-WORLD 3D TERRAIN BRUSH & LIVE 3D ALGORITHMIC RIVER / TRAIL ENGINE
	----------------------------------------------------------------------------------------------------
	local BRUSH_TOOLS = {
		{id = "Raise",   label = "RAISE",   color = C.accent, desc = "Lifts terrain smoothly along the radial falloff curve using the selected material."},
		{id = "Lower",   label = "LOWER",   color = C.danger, desc = "Carves basins, trenches, and caves smoothly downward."},
		{id = "Smooth",  label = "SMOOTH",  color = C.purple, desc = "3D 3×3×3 neighborhood occupancy blur that melts jagged voxel steps into silky slopes."},
		{id = "Flatten", label = "FLATTEN", color = C.amber,  desc = "Locks target Y on mouse-down (or custom Y) to grade level pads and terraces."},
		{id = "Erode",   label = "ERODE",   color = C.planet, desc = "Sculpts natural ridged rock gullies and exposes stone on steep faces."},
		{id = "Paint",   label = "PAINT",   color = C.cyan,   desc = "Repaints surface & topsoil materials (or fills Water / Air) without altering solid shape."},
		{id = "River",   label = "RIVER",   color = C.blue,   desc = "Carves a U-shaped riverbed along your drag path, lines banks, and fills with Water."},
		{id = "Trail",   label = "TRAIL",   color = Color3.fromRGB(224, 194, 122), desc = "Grades a slope-clamped walkable path along your stroke and surfaces the tread."},
	}
	local BRUSH_TOOL_MAP = {}
	for _, t in ipairs(BRUSH_TOOLS) do BRUSH_TOOL_MAP[t.id] = t end

	local terrainRayParams = RaycastParams.new()
	pcall(function() terrainRayParams.FilterType = Enum.RaycastFilterType.Include end)
	terrainRayParams.FilterDescendantsInstances = {Terrain}; terrainRayParams.IgnoreWater = false

	local terrainDryRayParams = RaycastParams.new()
	pcall(function() terrainDryRayParams.FilterType = Enum.RaycastFilterType.Include end)
	terrainDryRayParams.FilterDescendantsInstances = {Terrain}; terrainDryRayParams.IgnoreWater = true

	local function sampleLiveTerrainHeight(wx, wz, fallbackY)
		local hit = workspace:Raycast(Vector3.new(wx, 600, wz), Vector3.new(0, -900, 0), terrainDryRayParams)
		return hit and hit.Position.Y or (fallbackY or K.SURFACE_BASE)
	end

	local function readVoxelBox(region)
		if readMode == "Channels" then
			local ok, data = pcall(function() return Terrain:ReadVoxelChannels(region, K.VOXEL, {"SolidMaterial", "SolidOccupancy", "LiquidOccupancy"}) end)
			if ok and data then return data.SolidMaterial, data.SolidOccupancy, data.LiquidOccupancy, data.Size end
			readMode = hasMethod(Terrain, "ReadVoxels") and "Legacy" or "Unavailable"
		end
		if readMode == "Legacy" then
			local rawMats, rawOcc = Terrain:ReadVoxels(region, K.VOXEL)
			local sz = rawMats.Size
			local mats, solids, liquids = table.create(sz.X), table.create(sz.X), table.create(sz.X)
			for x = 1, sz.X do
				local mX, sX, lX = table.create(sz.Y), table.create(sz.Y), table.create(sz.Y)
				for y = 1, sz.Y do
					local mY, sY, lY = table.create(sz.Z), table.create(sz.Z), table.create(sz.Z)
					for z = 1, sz.Z do
						local m, o = rawMats[x][y][z], rawOcc[x][y][z]
						if m == M.Water then mY[z], sY[z], lY[z] = M.Air, 0, o
						elseif m == M.Air or o <= 0 then mY[z], sY[z], lY[z] = M.Air, 0, 0
						else mY[z], sY[z], lY[z] = m, o, 0 end
					end
					mX[y], sX[y], lX[y] = mY, sY, lY
				end
				mats[x], solids[x], liquids[x] = mX, sX, lX
			end
			return mats, solids, liquids, sz
		end
		return nil
	end

	local function disposeBrushStroke(strokeEntry)
		if not strokeEntry or not strokeEntry.blocks then return end
		for _, blk in pairs(strokeEntry.blocks) do if blk.region then pcall(function() blk.region:Destroy() end) end end
		strokeEntry.blocks = nil
	end
	local function beginBrushStroke(label) return {label = label or brush.tool, blocks = {}, count = 0} end
	local function commitBrushStroke(strokeEntry)
		if not strokeEntry or strokeEntry.count == 0 then disposeBrushStroke(strokeEntry); return false end
		table.insert(session.brushHistory, strokeEntry)
		while #session.brushHistory > K.BRUSH_HIST_LIMIT do disposeBrushStroke(table.remove(session.brushHistory, 1)) end
		return true
	end

	local function undoLastBrushStroke()
		local entry = table.remove(session.brushHistory)
		if not entry then return false end
		for _, blk in pairs(entry.blocks or {}) do
			if blk.region then pcall(function() Terrain:PasteRegion(blk.region, blk.corner, true) end)
			elseif blk.box and blk.mats then pcall(writeChunk, blk.box, blk.mats, blk.solids, blk.liquids) end
		end
		disposeBrushStroke(entry)
		return true, entry.label
	end

	local function applyBrushDab(centerPos, toolOverride, radiusOverride, strengthOverride, targetYOverride, strokeEntry)
		if writeMode == "Unavailable" or readMode == "Unavailable" then return false end
		local mode = toolOverride or brush.tool
		local r = clamp(radiusOverride or brush.radius, 4, 140)
		local strength = clamp(strengthOverride or brush.strength, 0.02, 1)
		local padStuds = (mode == "Smooth") and (K.VOXEL * 2) or K.VOXEL
		local vRadius = (mode == "Trail" or mode == "Flatten" or mode == "River") and math.max(r + 20, 28) or (r + padStuds)

		local minX, maxX = floorVoxel(centerPos.X - r - padStuds), ceilVoxel(centerPos.X + r + padStuds)
		local minY, maxY = math.max(-256, floorVoxel(centerPos.Y - vRadius)), math.min(512, ceilVoxel(centerPos.Y + vRadius))
		local minZ, maxZ = floorVoxel(centerPos.Z - r - padStuds), ceilVoxel(centerPos.Z + r + padStuds)
		if maxX <= minX or maxY <= minY or maxZ <= minZ then return false end

		local se = strokeEntry or brush.activeStroke
		if se then
			local bStuds = K.BRUSH_BLOCK_VOX * K.VOXEL
			for bx = math.floor(minX / bStuds), math.floor((maxX - 1) / bStuds) do
				for by = math.floor(minY / bStuds), math.floor((maxY - 1) / bStuds) do
					for bz = math.floor(minZ / bStuds), math.floor((maxZ - 1) / bStuds) do
						local key = bx .. ":" .. by .. ":" .. bz
						if not se.blocks[key] then
							local x0, y0, z0 = bx * bStuds, by * bStuds, bz * bStuds
							local c0 = Vector3int16.new(x0 / K.VOXEL, y0 / K.VOXEL, z0 / K.VOXEL)
							local c1 = Vector3int16.new((x0 + bStuds) / K.VOXEL - 1, (y0 + bStuds) / K.VOXEL - 1, (z0 + bStuds) / K.VOXEL - 1)
							if CAN_SNAPSHOT then
								local ok, reg = pcall(function() return Terrain:CopyRegion(Region3int16.new(c0, c1)) end)
								if ok and reg then se.blocks[key] = {corner = c0, region = reg}; se.count += 1 end
							else
								local box = Region3.new(Vector3.new(x0, y0, z0), Vector3.new(x0 + bStuds, y0 + bStuds, z0 + bStuds))
								local m, s, l = readVoxelBox(box)
								if m then se.blocks[key] = {box = box, mats = m, solids = s, liquids = l}; se.count += 1 end
							end
						end
					end
				end
			end
		end

		local region = Region3.new(Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ))
		local mats, solids, liquids, sz = readVoxelBox(region)
		if not mats then return false end

		local nx, ny, nz = sz.X, sz.Y, sz.Z
		local paintMat = brush.material
		local solidBrushMat = (paintMat == M.Water or paintMat == M.Air) and M.Grass or paintMat
		local trailSurfaceMat = (paintMat ~= M.Water and paintMat ~= M.Air) and paintMat or M.Cobblestone
		local falloffMode, targetY, invR = brush.falloff, targetYOverride or brush.flattenY, 1 / r
		local function evalF(dNorm)
			local t = clamp(1 - dNorm, 0, 1)
			if falloffMode == "Dome" then return math.sqrt(t)
			elseif falloffMode == "Linear" then return t
			elseif falloffMode == "Plateau" then return smoothstep(0, 0.38, t) end
			return t * t * (3 - 2 * t)
		end

		local origSolids = nil
		if mode == "Smooth" then
			origSolids = table.create(nx)
			for x = 1, nx do
				local ox = table.create(ny)
				for y = 1, ny do ox[y] = table.clone(solids[x][y]) end
				origSolids[x] = ox
			end
		end

		for x = 1, nx do
			local wx = minX + (x - 0.5) * K.VOXEL
			local dx = wx - centerPos.X
			local mX, sX, lX = mats[x], solids[x], liquids[x]
			for z = 1, nz do
				local wz = minZ + (z - 0.5) * K.VOXEL
				local dz = wz - centerPos.Z
				local dist2D = math.sqrt(dx * dx + dz * dz)
				if dist2D <= r then
					local w2D = evalF(dist2D * invR)
					if mode == "Flatten" or mode == "Trail" then
						local blend = (mode == "Trail")
							and ((dist2D <= r * 0.52 and 1 or (1 - smoothstep(r * 0.52, r, dist2D))) * clamp(strength * 1.35, 0.15, 1))
							or (w2D * strength * 0.85)
						local onTread = (mode == "Trail") and (dist2D <= r * 0.58)
						for y = 1, ny do
							local y0 = minY + (y - 1) * K.VOXEL
							local nextS = lerp(sX[y][z], clamp((targetY - y0) / K.VOXEL, 0, 1), blend)
							if nextS <= 0.01 then sX[y][z], mX[y][z] = 0, M.Air
							else
								sX[y][z] = nextS
								if mX[y][z] == M.Air then mX[y][z] = onTread and trailSurfaceMat or solidBrushMat end
								if onTread and y0 <= targetY and y0 + K.VOXEL >= targetY - 2 then mX[y][z] = trailSurfaceMat end
								if nextS > 0.25 and not brush.preserveWater then lX[y][z] = 0 end
							end
						end
					elseif mode == "River" then
						local channelDepth = math.max(6, r * 0.42) * strength * 1.35
						local prof = 1 - smoothstep(0, r * 0.78, dist2D)
						local bedY, waterTopY = centerPos.Y - channelDepth * prof, centerPos.Y - 1.5
						local isBank = dist2D <= r * 0.92 and dist2D >= r * 0.45
						local bankMat = (paintMat ~= M.Water and paintMat ~= M.Air and paintMat ~= M.Grass) and paintMat or M.Sand
						for y = 1, ny do
							local y0 = minY + (y - 1) * K.VOXEL
							local curS = sX[y][z]
							local nextS = lerp(curS, math.min(curS, clamp((bedY - y0) / K.VOXEL, 0, 1)), w2D * 0.92)
							if nextS <= 0.01 then sX[y][z], mX[y][z] = 0, M.Air
							else
								sX[y][z] = nextS
								if nextS < 0.98 or isBank or math.abs(y0 - bedY) <= K.VOXEL * 1.5 then
									mX[y][z] = (prof > 0.55) and M.Cobblestone or bankMat
								elseif mX[y][z] == M.Air then mX[y][z] = bankMat end
							end
							if dist2D < r * 0.76 and y0 < waterTopY and sX[y][z] < 0.95 then
								lX[y][z] = math.max(lX[y][z], clamp((waterTopY - y0) / K.VOXEL, 0, 1))
							end
						end
					else
						for y = 1, ny do
							local wy = minY + (y - 0.5) * K.VOXEL
							local dist3D = math.sqrt(dx * dx + (wy - centerPos.Y) ^ 2 + dz * dz)
							if dist3D <= r then
								local w3D = evalF(dist3D * invR)
								local curS, curM, curL = sX[y][z], mX[y][z], lX[y][z]
								if mode == "Raise" then
									if paintMat == M.Water then lX[y][z] = clamp(curL + w3D * strength * 0.55, 0, 1)
									else
										local nextS = clamp(curS + w3D * strength * 0.46, 0, 1)
										if nextS > 0.01 then
											if curM == M.Air or curS < 0.35 then mX[y][z] = solidBrushMat end
											sX[y][z] = nextS
											if nextS > 0.85 and not brush.preserveWater then lX[y][z] = 0 end
										end
									end
								elseif mode == "Lower" then
									local nextS = clamp(curS - w3D * strength * 0.50, 0, 1)
									sX[y][z], mX[y][z] = nextS <= 0.01 and 0 or nextS, nextS <= 0.01 and M.Air or curM
								elseif mode == "Smooth" and x > 1 and x < nx and y > 1 and y < ny and z > 1 and z < nz then
									local sum, count, neighborMat = 0, 0, curM
									for ox = -1, 1 do
										local plane = origSolids[x + ox]
										for oy = -1, 1 do
											local row = plane[y + oy]
											for oz = -1, 1 do
												local wt = (ox == 0 and oy == 0 and oz == 0) and 2 or 1
												local sv = row[z + oz]
												sum += sv * wt; count += wt
												if neighborMat == M.Air and sv > 0.25 then neighborMat = mats[x + ox][y + oy][z + oz] end
											end
										end
									end
									local nextS = lerp(curS, sum / count, w3D * strength * 0.82)
									if nextS <= 0.01 then sX[y][z], mX[y][z] = 0, M.Air
									else
										sX[y][z] = nextS
										if curM == M.Air then mX[y][z] = (neighborMat ~= M.Air and neighborMat ~= M.Water) and neighborMat or solidBrushMat end
									end
								elseif mode == "Erode" then
									local n1 = 1 - math.abs(math.noise(wx * 0.045, wy * 0.045, wz * 0.045))
									local gully = (n1 * n1) * w3D * strength * 0.42
									local nextS = clamp(curS - gully, 0, 1)
									if nextS <= 0.01 then sX[y][z], mX[y][z] = 0, M.Air
									else sX[y][z] = nextS; if gully > 0.08 and curS > 0.15 then mX[y][z] = M.Rock end end
								elseif mode == "Paint" and w3D > 0.18 then
									if paintMat == M.Water then
										if curS < 0.5 then lX[y][z] = clamp(curL + w3D * strength * 0.75, 0, 1) end
									elseif paintMat == M.Air then
										local nextS = clamp(curS - w3D * strength * 0.7, 0, 1)
										sX[y][z] = nextS <= 0.01 and 0 or nextS
										if sX[y][z] == 0 then mX[y][z] = M.Air end
										lX[y][z] = clamp(curL - w3D * strength * 0.8, 0, 1)
									elseif curS > 0.02 then mX[y][z] = solidBrushMat end
								end
							end
						end
					end
				end
			end
		end
		writeChunk(region, mats, solids, liquids)
		return true
	end

	fn.carveAlgorithmicPathIn3D = function(kind, pointA, pointB, cfg, onStatus)
		local minX, maxX, minZ, maxZ
		if pointA and pointB then
			local margin = math.max(96, Vector3.new(pointB.X - pointA.X, 0, pointB.Z - pointA.Z).Magnitude * 0.35)
			minX, maxX = math.min(pointA.X, pointB.X) - margin, math.max(pointA.X, pointB.X) + margin
			minZ, maxZ = math.min(pointA.Z, pointB.Z) - margin, math.max(pointA.Z, pointB.Z) + margin
		else
			local b = computeBounds(cfg)
			minX, maxX, minZ, maxZ = b.minX, b.maxX, b.minZ, b.maxZ
		end
		local strokeEntry = beginBrushStroke("3D Auto-" .. kind)
		local poly, widthStuds = nil, (kind == "River") and math.max(10, brush.radius * 0.75) or math.max(8, brush.radius * 0.55)

		if kind == "River" then
			if pointA and pointB then
				local startPt, endPt = pointA, pointB
				if pointB.Y > pointA.Y + 4 then startPt, endPt = pointB, pointA end
				local rawPts = {}
				local steps = math.clamp(math.ceil((endPt - startPt).Magnitude / math.max(6, widthStuds * 0.45)), 8, 96)
				local perp = Vector3.new(-(endPt.Z - startPt.Z), 0, endPt.X - startPt.X)
				if perp.Magnitude > 0.01 then perp = perp.Unit end
				local span = (endPt - startPt).Magnitude
				for i = 0, steps do
					local t = i / steps
					local sway = math.sin(t * math.pi) * math.noise(t * 3.4, startPt.X * 0.01, startPt.Z * 0.01) * span * 0.22
					local wx, wz = lerp(startPt.X, endPt.X, t) + perp.X * sway, lerp(startPt.Z, endPt.Z, t) + perp.Z * sway
					table.insert(rawPts, {x = wx, z = wz, h = sampleLiveTerrainHeight(wx, wz, lerp(startPt.Y, endPt.Y, t)), w = widthStuds * lerp(0.7, 1.25, t)})
				end
				for i = 2, #rawPts do rawPts[i].h = math.min(rawPts[i].h, rawPts[i - 1].h + 0.5) end
				poly = smoothPolyline(rawPts, 2)
			else
				local bestH, sx, sz = -math.huge, cfg.CenterX, cfg.CenterZ
				for ix = 1, 12 do
					for iz = 1, 12 do
						local wx, wz = lerp(minX + 24, maxX - 24, (ix - 0.5) / 12), lerp(minZ + 24, maxZ - 24, (iz - 0.5) / 12)
						local h = sampleLiveTerrainHeight(wx, wz, K.SURFACE_BASE)
						if h > bestH then bestH, sx, sz = h, wx, wz end
					end
				end
				poly = traceMeanderingRiver(function(x, z) return sampleLiveTerrainHeight(x, z, K.SURFACE_BASE) end,
				sx, sz, minX, minZ, maxX, maxZ, cfg.SeaLevel, cfg.WaterEnabled, widthStuds, os.clock())
			end
		else
			local G = 34
			local stepX, stepZ = (maxX - minX) / G, (maxZ - minZ) / G
			local gridH = table.create(G * G, K.SURFACE_BASE)
			local slice = os.clock()
			for ix = 1, G do
				local wx = minX + (ix - 0.5) * stepX
				for iz = 1, G do gridH[(ix - 1) * G + iz] = sampleLiveTerrainHeight(wx, minZ + (iz - 0.5) * stepZ, K.SURFACE_BASE) end
				if os.clock() - slice > activeFrameBudget() then task.wait(); slice = os.clock() end
			end
			local sIx, sIz, gIx, gIz
			if pointA and pointB then
				sIx, sIz = clamp(math.floor((pointA.X - minX) / stepX) + 1, 1, G), clamp(math.floor((pointA.Z - minZ) / stepZ) + 1, 1, G)
				gIx, gIz = clamp(math.floor((pointB.X - minX) / stepX) + 1, 1, G), clamp(math.floor((pointB.Z - minZ) / stepZ) + 1, 1, G)
			else
				sIx, sIz, gIx, gIz = math.random(3, 8), math.random(3, G - 3), math.random(G - 7, G - 2), math.random(3, G - 3)
			end
			poly = computeAStarGridPath(gridH, G, minX, minZ, stepX, stepZ, cfg.SeaLevel, cfg.WaterEnabled, sIx, sIz, gIx, gIz)
		end

		if not poly or #poly < 2 then disposeBrushStroke(strokeEntry); return false, "Could not find a valid terrain route." end
		local slice, total, dabSpacing = os.clock(), #poly, math.max(3, widthStuds * 0.30)
		for i = 1, total - 1 do
			local a, b = poly[i], poly[i + 1]
			local ay = a.h or sampleLiveTerrainHeight(a.x, a.z, K.SURFACE_BASE)
			local by = b.h or sampleLiveTerrainHeight(b.x, b.z, ay)
			local steps = math.max(1, math.ceil(Vector3.new(b.x - a.x, by - ay, b.z - a.z).Magnitude / dabSpacing))
			for s = 0, steps - 1 do
				local t = s / steps
				local pos = Vector3.new(lerp(a.x, b.x, t), lerp(ay, by, t), lerp(a.z, b.z, t))
				local rad = (a.w and b.w) and lerp(a.w, b.w, t) or widthStuds
				applyBrushDab(pos, kind, rad, clamp(brush.strength, 0.45, 0.9), pos.Y, strokeEntry)
				if os.clock() - slice > activeFrameBudget() then
					if onStatus then onStatus(math.floor(i / total * 100)) end
					task.wait(); slice = os.clock()
				end
			end
		end
		commitBrushStroke(strokeEntry)
		return true, total
	end

	----------------------------------------------------------------------------------------------------
	-- 10. ELEVATED SIRIUS UI PRIMITIVES, AUDIO ENGINE (CLICK + COMPLETE + SPECIAL) & WIDGETS
	----------------------------------------------------------------------------------------------------
	do
		local stale = PlayerGui:FindFirstChild(K.GUI_NAME)
		if stale then stale:Destroy() end
		local staleBounds = workspace:FindFirstChild(K.BOUNDS_PART_NAME)
		if staleBounds then staleBounds:Destroy() end
		for _, n in ipairs({K.WIREFRAME_NAME, K.BRUSH_WIRE_NAME, "earth"}) do
			local w = Terrain:FindFirstChild(n) or workspace:FindFirstChild(n)
			if w then w:Destroy() end
		end
	end

	for k, v in pairs({
		pages = {}, pagePads = {}, pageSections = {}, sheenGrads = {},
		fieldWidgets = {}, customKnobs = {}, sizeChipButtons = {},
		styleButtons = {}, biomeCards = {}, themeButtons = {}, waterButtons = {}, synthDeckCards = {},
		brushToolBtns = {}, brushFalloffBtns = {}, brushMatBtns = {}, perfProfileBtns = {},
		planetCards = {}, planetSliders = {}, planetSwitches = {}, planetCamBtns = {}, waypointLabels = {},
		mapCells = table.create(K.PREVIEW_GRID * K.PREVIEW_GRID),
		profileBars = table.create(K.PROFILE_BARS),
		atlasCells = table.create(K.ATLAS_GRID * K.ATLAS_GRID),
		atlasVLines = {}, atlasHLines = {}, atlasColLbls = {}, atlasRowLbls = {}, atlasTreeDots = {},
		atlasWpPins = {},
		perfSparkBars = {}, perfJitterLbl = nil, perfTileSlider = nil, perfBenchBtn = nil,
		metricValues = {}, perfMetricValues = {},
		metricAnim = {relief = {cur = 0, target = 0}, water = {cur = 0, target = 0, on = true}, voxels = {cur = 0, target = 0}},
		previewDirty = true, previewPendingRelease = false, activeSlider = nil, syncingSquare = false,
		lastPeakPos = nil, baseScale = 1,
		clickPool = {}, clickIdx = 1, lastClickAt = 0,
		sidebar = nil, footer = nil, header = nil, taskbar = nil,
		taskbarButton = nil, taskbarStroke = nil, taskbarStrokeGrad = nil,
		tbHairline = nil, tbLogoGrad = nil, tbClickArea = nil, tbTitle = nil, tbStatus = nil,
		tbRestoreBtn = nil, tbBrushBtn = nil, tbCloseBtn = nil,
	}) do ui[k] = v end

	local gui = Instance.new("ScreenGui")
	gui.Name = K.GUI_NAME; gui.ResetOnSpawn = false; gui.IgnoreGuiInset = false
	gui.DisplayOrder = 50; gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	for i = 1, 5 do
		local s = Instance.new("Sound"); s.Name = "UIClick" .. i; s.SoundId = K.SOUND_CLICK; s.Volume = 0.35; s.Parent = gui
		ui.clickPool[i] = s
	end
	ui.completeSound = Instance.new("Sound"); ui.completeSound.Name = "UIComplete"; ui.completeSound.SoundId = K.SOUND_COMPLETE; ui.completeSound.Volume = 0.55; ui.completeSound.Parent = gui
	ui.specialSound = Instance.new("Sound"); ui.specialSound.Name = "UISpecial"; ui.specialSound.SoundId = K.SOUND_SPECIAL; ui.specialSound.Volume = 0.60; ui.specialSound.Parent = gui

	local function playUISound(kind, pitch, volScale)
		if not alive or not state.soundEnabled or state.soundVolume <= 0.01 then return end
		if kind == "complete" and ui.completeSound then
			pcall(function()
				ui.completeSound.PlaybackSpeed = pitch or 1
				ui.completeSound.Volume = clamp(state.soundVolume * (volScale or 1.15), 0, 2)
				ui.completeSound.TimePosition = 0; ui.completeSound:Play()
			end)
			return
		elseif kind == "special" and ui.specialSound then
			pcall(function()
				ui.specialSound.PlaybackSpeed = pitch or 1
				ui.specialSound.Volume = clamp(state.soundVolume * (volScale or 1.05), 0, 2)
				ui.specialSound.TimePosition = 0; ui.specialSound:Play()
			end)
			return
		end
		local now = os.clock()
		if now - ui.lastClickAt < 0.030 then return end
		ui.lastClickAt = now
		local s = ui.clickPool[ui.clickIdx]
		ui.clickIdx = ui.clickIdx % #ui.clickPool + 1
		if s then
			pcall(function()
				s.PlaybackSpeed = pitch or (0.97 + math.random() * 0.06)
				s.Volume = clamp(state.soundVolume * (volScale or 0.75), 0, 2)
				s.TimePosition = 0; s:Play()
			end)
		end
	end

	local function new(className, parent, props)
		local object = Instance.new(className)
		if props then for k, v in pairs(props) do object[k] = v end end
		if parent then object.Parent = parent end
		return object
	end
	local function corner(object, radius) return new("UICorner", object, {CornerRadius = UDim.new(0, radius or 8)}) end
	local function stroke(object, color, transparency, thickness)
		return new("UIStroke", object, {Color = color or C.stroke, Transparency = transparency or 0.38, Thickness = thickness or 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border})
	end
	local function specularStroke(object, topColor, midColor, bottomColor, transparency, rotation)
		local st = stroke(object, Color3.new(1, 1, 1), transparency or 0.35, 1)
		local grad = new("UIGradient", st, {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, topColor or C.strokeHi),
				ColorSequenceKeypoint.new(0.48, midColor or C.stroke),
				ColorSequenceKeypoint.new(1, bottomColor or C.strokeLo),
			}),
			Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0.04), NumberSequenceKeypoint.new(0.55, 0.30), NumberSequenceKeypoint.new(1, 0.56),
			}),
			Rotation = rotation or 62,
		})
		return st, grad
	end
	local function pad(object, top, right, bottom, left)
		return new("UIPadding", object, {PaddingTop = UDim.new(0, top or 0), PaddingRight = UDim.new(0, right or 0), PaddingBottom = UDim.new(0, bottom or 0), PaddingLeft = UDim.new(0, left or 0)})
	end
	local function surfaceSheen(parent, rotation, topTint, bottomTint)
		return new("UIGradient", parent, {
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, topTint or Color3.fromRGB(255, 255, 255)),
				ColorSequenceKeypoint.new(0.42, Color3.fromRGB(236, 240, 248)),
				ColorSequenceKeypoint.new(1, bottomTint or Color3.fromRGB(196, 204, 216)),
			}),
			Rotation = rotation or 90,
		})
	end
	local function makeText(parent, content, size, color, font, props)
		local label = new("TextLabel", nil, {
			BackgroundTransparency = 1, BorderSizePixel = 0, Text = content or "", TextSize = size or 13,
			TextColor3 = color or C.text, Font = font or FONT,
			TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Center, TextWrapped = false,
		})
		if props then for k, v in pairs(props) do label[k] = v end end
		label.Parent = parent
		return label
	end
	local function tween(object, duration, props, style, direction)
		local t = TweenService:Create(object, TweenInfo.new(duration, style or Enum.EasingStyle.Quint, direction or Enum.EasingDirection.Out), props)
		t:Play()
		return t
	end

	local function tonePalette(tone)
		if tone == "planet" then return C.planet, C.planetSoft, C.planetPale
		elseif tone == "sky" then return C.sky, C.skySoft, C.skyPale
		elseif tone == "cyan" then return C.cyan, C.cyanSoft, C.cyanPale
		elseif tone == "blue" then return C.blue, C.blueSoft, C.bluePale
		elseif tone == "biome" then return C.biome, C.biomeSoft, C.biomePale
		elseif tone == "purple" then return C.purple, C.purpleSoft, C.purplePale
		elseif tone == "amber" then return C.amber, C.amberSoft, C.amberPale
		elseif tone == "rose" then return C.rose, C.roseSoft, C.rosePale
		elseif tone == "indigo" then return C.indigo, C.indigoSoft, C.indigoPale
		elseif tone == "danger" then return C.danger, Color3.fromRGB(72, 26, 30), Color3.fromRGB(255, 205, 208)
		elseif tone == "warn" then return C.warn, Color3.fromRGB(74, 54, 20), Color3.fromRGB(255, 232, 184) end
		return C.accent, C.accentSoft, C.accentPale
	end

	local function spawnRipple(button, screenPos, color)
		if not alive then return end
		local absPos, absSize = button.AbsolutePosition, button.AbsoluteSize
		local rx = screenPos and clamp(screenPos.X - absPos.X, 0, absSize.X) or absSize.X * 0.5
		local ry = screenPos and clamp(screenPos.Y - absPos.Y, 0, absSize.Y) or absSize.Y * 0.5
		local targetDiam = math.max(absSize.X, absSize.Y) * 2.1
		local ring = new("Frame", button, {
			AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(rx, ry), Size = UDim2.fromOffset(4, 4),
			BackgroundColor3 = color or C.accentPale, BackgroundTransparency = 0.70, BorderSizePixel = 0, ZIndex = button.ZIndex + 1,
		})
		corner(ring, 999)
		tween(ring, 0.42, {Size = UDim2.fromOffset(targetDiam, targetDiam), BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
		task.delay(0.44, function() if ring then pcall(function() ring:Destroy() end) end end)
	end

	local buttonMeta = setmetatable({}, {__mode = "k"})
	local function paintButton(button, instant)
		local m = buttonMeta[button]
		if not m then return end
		local mainCol, softCol, paleCol = tonePalette(m.tone)
		local bg, fg, sc, st, bt
		if m.disabled then bg, fg, sc, st, bt = C.card, C.dim, C.stroke, 0.78, 0.25
		elseif m.selected then
			bg, fg, sc, st, bt = m.hover and mainCol or softCol, m.hover and C.text or paleCol, mainCol, m.hover and 0.04 or 0.16, 0.02
		else
			local isAlert = (m.tone == "danger" or m.tone == "warn")
			bg, fg = m.hover and C.cardHover or C.card, isAlert and mainCol or (m.special and paleCol or C.text)
			sc, st, bt = (isAlert or m.special) and mainCol or (m.hover and C.strokeHi or C.stroke), m.hover and 0.10 or (m.special and 0.28 or 0.46), m.hover and 0.02 or 0.08
		end
		if instant then
			button.BackgroundColor3, button.TextColor3, button.BackgroundTransparency = bg, fg, bt
			m.stroke.Color, m.stroke.Transparency = sc, st
		else
			tween(button, 0.22, {BackgroundColor3 = bg, TextColor3 = fg, BackgroundTransparency = bt})
			tween(m.stroke, 0.22, {Color = sc, Transparency = st})
		end
	end

	local function makeButton(parent, label, props, opts)
		opts = opts or {}
		local button = new("TextButton", nil, {
			BackgroundColor3 = C.card, BackgroundTransparency = 0.08, BorderSizePixel = 0, AutoButtonColor = false,
			ClipsDescendants = true, Text = label, TextColor3 = C.text, TextSize = opts.textSize or 11,
			Font = FONT_BOLD, TextWrapped = true, Size = UDim2.fromOffset(140, 34),
		})
		if props then for k, v in pairs(props) do button[k] = v end end
		corner(button, opts.radius or 7)
		if opts.special then
			surfaceSheen(button, 18, Color3.fromRGB(255, 255, 255), Color3.fromRGB(205, 212, 232))
		else
			surfaceSheen(button, 90)
		end
		local st = stroke(button, C.stroke, 0.46)
		new("UIGradient", st, {Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(145, 152, 165)), Rotation = 68})
		local btnScale = new("UIScale", button, {Scale = 1})
		local lastInputPos = nil

		buttonMeta[button] = {
			stroke = st, scale = btnScale, selected = opts.selected == true, tone = opts.tone or "normal",
			hover = false, disabled = false, silent = opts.silent == true, special = opts.special == true,
		}
		button.MouseEnter:Connect(function()
			local m = buttonMeta[button]; m.hover = true; paintButton(button)
			if not m.disabled then tween(btnScale, 0.18, {Scale = 1.014}) end
		end)
		button.MouseLeave:Connect(function()
			local m = buttonMeta[button]; m.hover = false; paintButton(button)
			tween(btnScale, 0.18, {Scale = 1})
		end)
		button.InputBegan:Connect(function(input)
			local m = buttonMeta[button]
			if m and not m.disabled and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				lastInputPos = input.Position; tween(btnScale, 0.09, {Scale = 0.982})
			end
		end)
		button.InputEnded:Connect(function(input)
			local m = buttonMeta[button]
			if m and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				tween(btnScale, 0.2, {Scale = (m.hover and not m.disabled) and 1.014 or 1})
			end
		end)
		button.Activated:Connect(function()
			local m = buttonMeta[button]
			if not m or m.disabled then return end
			local mainCol = tonePalette(m.tone)
			spawnRipple(button, lastInputPos, mainCol)
			if not m.silent then
				if m.special then playUISound("special", 1.0, 1.0)
				else playUISound("click", m.selected and 1.04 or 0.99, 0.78) end
			end
		end)
		paintButton(button, true)
		button.Parent = parent
		return button
	end

	local function setButtonState(button, changes, instant)
		local m = buttonMeta[button]
		if not m then return end
		for k, v in pairs(changes) do m[k] = v end
		paintButton(button, instant)
	end
	local function onClick(button, callback)
		button.Activated:Connect(function()
			local m = buttonMeta[button]
			if m and m.disabled then return end
			callback()
		end)
	end

	local function makeModularSwitch(parent, title, subtitle, badgeText, initialOn, tone, order, onToggle)
		local mainCol, softCol, paleCol = tonePalette(tone or "normal")
		local stateOn = initialOn == true
		local card = new("TextButton", parent, {
			Size = UDim2.new(1, 0, 0, 56), BackgroundColor3 = stateOn and softCol or C.card,
			BackgroundTransparency = stateOn and 0.16 or 0.08, BorderSizePixel = 0, AutoButtonColor = false,
			ClipsDescendants = true, Text = "", LayoutOrder = order or 1,
		})
		corner(card, 9); surfaceSheen(card, 90)
		local cardStroke = stroke(card, stateOn and mainCol or C.stroke, stateOn and 0.22 or 0.48)
		pad(card, 8, 12, 8, 12)

		local accentBar = new("Frame", card, {
			AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.fromOffset(3, 34),
			BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = stateOn and 0 or 0.72, BorderSizePixel = 0,
		})
		corner(accentBar, 2); new("UIGradient", accentBar, {Color = ColorSequence.new(paleCol, mainCol), Rotation = 90})

		local titleLbl = makeText(card, title, 12, stateOn and paleCol or C.text, FONT_BOLD, {
			Position = UDim2.fromOffset(12, 2), Size = UDim2.new(1, -180, 0, 18), TextTruncate = Enum.TextTruncate.AtEnd,
		})
		local subLbl = makeText(card, subtitle or "", 9, C.muted, FONT, {
			Position = UDim2.fromOffset(12, 21), Size = UDim2.new(1, -78, 0, 20), TextWrapped = true,
		})

		local badge = nil
		if badgeText then
			local bFrame = new("Frame", card, {
				AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -56, 0, 2), Size = UDim2.fromOffset(0, 18),
				AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = C.inset, BackgroundTransparency = 0.12, BorderSizePixel = 0,
			})
			corner(bFrame, 5); stroke(bFrame, mainCol, 0.55); pad(bFrame, 0, 7, 0, 7)
			badge = makeText(bFrame, badgeText, 8, paleCol, FONT_BOLD, {Size = UDim2.fromOffset(0, 18), AutomaticSize = Enum.AutomaticSize.X})
		end

		local track = new("Frame", card, {
			AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.fromOffset(44, 24),
			BackgroundColor3 = stateOn and mainCol or C.inset, BorderSizePixel = 0,
		})
		corner(track, 12)
		local trackStroke = stroke(track, stateOn and paleCol or C.stroke, stateOn and 0.25 or 0.45)
		new("UIGradient", track, {Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(195, 205, 215)), Rotation = 90})

		local thumb = new("Frame", track, {
			AnchorPoint = Vector2.new(0, 0.5), Position = stateOn and UDim2.new(1, -21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
			Size = UDim2.fromOffset(18, 18), BackgroundColor3 = C.text, BorderSizePixel = 0,
		})
		corner(thumb, 9)

		local function setOn(val, silent)
			stateOn = val == true
			tween(card, 0.26, {BackgroundColor3 = stateOn and softCol or C.card, BackgroundTransparency = stateOn and 0.16 or 0.08})
			tween(cardStroke, 0.26, {Color = stateOn and mainCol or C.stroke, Transparency = stateOn and 0.22 or 0.48})
			tween(accentBar, 0.24, {BackgroundTransparency = stateOn and 0 or 0.72})
			tween(titleLbl, 0.22, {TextColor3 = stateOn and paleCol or C.text})
			tween(track, 0.26, {BackgroundColor3 = stateOn and mainCol or C.inset})
			tween(trackStroke, 0.26, {Color = stateOn and paleCol or C.stroke, Transparency = stateOn and 0.25 or 0.45})
			thumb.Size = UDim2.fromOffset(22, 18)
			tween(thumb, 0.28, {Position = stateOn and UDim2.new(1, -21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0), Size = UDim2.fromOffset(18, 18)}, Enum.EasingStyle.Quint)
			if not silent and onToggle then onToggle(stateOn) end
		end

		card.MouseEnter:Connect(function() if not stateOn then tween(cardStroke, 0.18, {Color = C.strokeHi, Transparency = 0.2}) end end)
		card.MouseLeave:Connect(function() if not stateOn then tween(cardStroke, 0.18, {Color = C.stroke, Transparency = 0.48}) end end)
		card.Activated:Connect(function()
			playUISound("click", not stateOn and 1.08 or 0.94, 0.8)
			spawnRipple(card, nil, mainCol)
			setOn(not stateOn, false)
		end)
		return {card = card, set = setOn, get = function() return stateOn end, setBadge = function(txt) if badge then badge.Text = txt end end, setSub = function(txt) subLbl.Text = txt end}
	end

	----------------------------------------------------------------------------------------------------
	-- 11. UI_OLD SHELL, FLOATING SCULPT HUD, HEADER, 10-COLOR SIDEBAR & FOOTER
	----------------------------------------------------------------------------------------------------
	-- Floating Top Sculpt HUD
	do
		local hud = new("Frame", gui, {
			Name = "SculptFloatingHud", AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, -64),
			Size = UDim2.fromOffset(770, 44), BackgroundColor3 = C.panel, BackgroundTransparency = 0.06, BorderSizePixel = 0, Visible = false, ZIndex = 20,
		})
		corner(hud, 11); surfaceSheen(hud, 90)
		local hSt, hGrad = specularStroke(hud, C.cyanPale, C.cyan, C.strokeLo, 0.22, 45)
		table.insert(ui.sheenGrads, hGrad)
		ui.sculptHud, ui.sculptHudStroke = hud, hSt

		ui.hudDot = new("Frame", hud, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 12, 0.5, 0), Size = UDim2.fromOffset(8, 8), BackgroundColor3 = C.cyan, BorderSizePixel = 0})
		corner(ui.hudDot, 4)
		ui.hudInfo = makeText(hud, "3D BRUSH ARMED  ·  RAISE  ·  R:24", 10, C.cyanPale, FONT_BOLD, {Position = UDim2.fromOffset(26, 0), Size = UDim2.fromOffset(224, 44), TextTruncate = Enum.TextTruncate.AtEnd})

		local toolStrip = new("Frame", hud, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 254, 0.5, 0), Size = UDim2.fromOffset(312, 28), BackgroundTransparency = 1})
		new("UIGridLayout", toolStrip, {CellSize = UDim2.fromOffset(36, 28), CellPadding = UDim2.fromOffset(3, 0), SortOrder = Enum.SortOrder.LayoutOrder})
		ui.hudToolBtns = {}
		local shortNames = {Raise = "UP", Lower = "DN", Smooth = "SM", Flatten = "FL", Erode = "ER", Paint = "PT", River = "RV", Trail = "TR"}
		for idx, t in ipairs(BRUSH_TOOLS) do
			ui.hudToolBtns[t.id] = makeButton(toolStrip, shortNames[t.id] or t.label, {LayoutOrder = idx}, {selected = t.id == brush.tool, textSize = 9, radius = 6, tone = "cyan"})
		end
		ui.hudUndoBtn = makeButton(hud, "UNDO (0)", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -138, 0.5, 0), Size = UDim2.fromOffset(66, 28)}, {textSize = 9, radius = 6})
		ui.hudStudioBtn = makeButton(hud, "HIDE UI", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -68, 0.5, 0), Size = UDim2.fromOffset(64, 28)}, {textSize = 9, radius = 6, tone = "cyan"})
		ui.hudDisarmBtn = makeButton(hud, "EXIT [B]", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(56, 28)}, {textSize = 9, radius = 6, tone = "danger"})
	end

	-- Lower Screen Locked Taskbar Pill Dock
	do
		local tb = new("Frame", gui, {
			Name = "SiriusTaskbarDock", AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 60), Size = UDim2.fromOffset(470, 42),
			BackgroundColor3 = C.panel, BackgroundTransparency = 0.06, BorderSizePixel = 0,
			Visible = false, ZIndex = 30, ClipsDescendants = true,
		})
		corner(tb, 11); surfaceSheen(tb, 90)
		local tbSt, tbGrad = specularStroke(tb, C.accentPale, C.accent, C.strokeLo, 0.25, 45)
		ui.taskbarStroke, ui.taskbarStrokeGrad = tbSt, tbGrad
		table.insert(ui.sheenGrads, tbGrad)

		local tbHairline = new("Frame", tb, {Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.accent, BackgroundTransparency = 0.45, BorderSizePixel = 0})
		new("UIGradient", tbHairline, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(0.5, 0.65), NumberSequenceKeypoint.new(1, 1)})})
		ui.tbHairline = tbHairline

		local tbLogo = new("Frame", tb, {Position = UDim2.fromOffset(8, 7), Size = UDim2.fromOffset(28, 28), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
		corner(tbLogo, 7); stroke(tbLogo, C.accentPale, 0.45)
		ui.tbLogoGrad = new("UIGradient", tbLogo, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, C.accentPale), ColorSequenceKeypoint.new(0.5, C.accent), ColorSequenceKeypoint.new(1, C.accentSoft)}), Rotation = 45})
		makeText(tbLogo, "S", 14, C.text, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		local tbClickArea = new("TextButton", tb, {
			Position = UDim2.fromOffset(42, 0), Size = UDim2.new(1, -260, 1, 0),
			BackgroundTransparency = 1, Text = "", AutoButtonColor = false,
		})
		ui.tbTitle = makeText(tbClickArea, "SIRIUS  /  TERRAFORM", 10, C.text, FONT_BOLD, {Position = UDim2.fromOffset(0, 6), Size = UDim2.new(1, 0, 0, 15)})
		new("UIGradient", ui.tbTitle, {Color = ColorSequence.new(Color3.new(1, 1, 1), C.accentPale), Rotation = 15})
		ui.tbStatus = makeText(tbClickArea, "ROLLING  ·  1024×1024  ·  READY", 8, C.muted, FONT_MED, {Position = UDim2.fromOffset(0, 22), Size = UDim2.new(1, 0, 0, 14), TextTruncate = Enum.TextTruncate.AtEnd})
		ui.tbClickArea = tbClickArea

		local tbActions = new("Frame", tb, {
			AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0),
			Size = UDim2.fromOffset(208, 28), BackgroundTransparency = 1,
		})
		new("UIListLayout", tbActions, {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim.new(0, 5)})

		ui.tbRestoreBtn = makeButton(tbActions, "⤊ RESTORE", {Size = UDim2.fromOffset(82, 28)}, {selected = true, textSize = 9, radius = 6, special = true})
		ui.tbBrushBtn = makeButton(tbActions, "✎ BRUSH", {Size = UDim2.fromOffset(64, 28)}, {textSize = 9, radius = 6, tone = "cyan"})
		ui.tbCloseBtn = makeButton(tbActions, "×", {Size = UDim2.fromOffset(28, 28)}, {textSize = 15, radius = 6, tone = "danger"})

		ui.taskbar = tb
	end

	ui.plasmaOverlay = new("Frame", gui, {
		Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(255, 95, 20),
		BackgroundTransparency = 1, ZIndex = 95, BorderSizePixel = 0, Visible = false,
	})
	new("UIGradient", ui.plasmaOverlay, {
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(0.65, 0.75),
			NumberSequenceKeypoint.new(1, 0.20),
		}),
		Color = ColorSequence.new(Color3.fromRGB(255, 185, 80), Color3.fromRGB(255, 75, 15)),
		Rotation = 45,
	})
	makeText(ui.plasmaOverlay, "▲ THERMODYNAMIC RE-ENTRY COMPRESSION ▲", 11, Color3.fromRGB(255, 215, 140), FONT_BOLD, {
		AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 16),
		Size = UDim2.fromOffset(360, 20), TextXAlignment = Enum.TextXAlignment.Center,
	})

	local shell = new("Frame", gui, {
		Name = "TerraformShell", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.52),
		Size = UDim2.fromOffset(K.WINDOW_W, K.WINDOW_H), BackgroundTransparency = 1, BorderSizePixel = 0,
	})
	local rootScale = new("UIScale", shell, {Scale = 1})

	for i = 1, 3 do
		local spread = i * 9
		local sh = new("Frame", shell, {
			AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, i * 2),
			Size = UDim2.new(1, spread * 2, 1, spread * 2), BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.72 + i * 0.06, BorderSizePixel = 0, ZIndex = 0,
		})
		corner(sh, 14 + spread)
	end

	local canUseCanvasGroup = false
	pcall(function()
		local testCg = Instance.new("CanvasGroup")
		testCg:Destroy()
		canUseCanvasGroup = true
	end)

	local root = new(canUseCanvasGroup and "CanvasGroup" or "Frame", shell, {
		Name = "TerraformRoot", Size = UDim2.fromScale(1, 1), BackgroundColor3 = C.bg, BackgroundTransparency = 0.02,
		BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 1,
	})
	corner(root, 12)
	ui.rootStroke, ui.rootStrokeGrad = specularStroke(root, C.strokeHi, C.stroke, C.strokeLo, 0.14, 55)

	fn.fadeInMenu = function(duration)
		duration = duration or 0.38
		shell.Visible = true
		gui.Enabled = true
		if canUseCanvasGroup and root:IsA("CanvasGroup") then
			root.GroupTransparency = 1
			rootScale.Scale = ui.baseScale * 0.94
			tween(root, duration, {GroupTransparency = 0}, Enum.EasingStyle.Quint)
			tween(rootScale, duration, {Scale = ui.baseScale}, Enum.EasingStyle.Quint)
		else
			root.BackgroundTransparency = 1
			rootScale.Scale = ui.baseScale * 0.94
			tween(root, duration, {BackgroundTransparency = 0.02}, Enum.EasingStyle.Quint)
			tween(rootScale, duration, {Scale = ui.baseScale}, Enum.EasingStyle.Quint)
		end
		if ui.rootStroke then
			ui.rootStroke.Transparency = 1
			tween(ui.rootStroke, duration, {Transparency = 0.14}, Enum.EasingStyle.Quint)
		end
	end

	fn.fadeOutMenu = function(duration, onDone)
		duration = duration or 0.26
		local token = {}
		state.toggleToken = token
		if canUseCanvasGroup and root:IsA("CanvasGroup") then
			tween(root, duration, {GroupTransparency = 1}, Enum.EasingStyle.Quint)
			tween(rootScale, duration, {Scale = ui.baseScale * 0.94}, Enum.EasingStyle.Quint)
		else
			tween(root, duration, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
			tween(rootScale, duration, {Scale = ui.baseScale * 0.94}, Enum.EasingStyle.Quint)
		end
		if ui.rootStroke then
			tween(ui.rootStroke, duration, {Transparency = 1}, Enum.EasingStyle.Quint)
		end
		task.delay(duration, function()
			if alive and state.toggleToken == token then
				shell.Visible = false
				if not brush.armed and not brush.pickMode and not state.taskbarDocked then
					gui.Enabled = false
				end
				if onDone then onDone() end
			end
		end)
	end

	-- Dual-corner ambient aurora wash (reactive to active category color)
	ui.auroraWash = new("Frame", root, {Size = UDim2.fromScale(1, 1), BackgroundColor3 = C.accent, BackgroundTransparency = 0.92, BorderSizePixel = 0, ZIndex = 0})
	ui.auroraGrad = new("UIGradient", ui.auroraWash, {
		Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.10), NumberSequenceKeypoint.new(0.38, 0.78),
			NumberSequenceKeypoint.new(0.78, 0.96), NumberSequenceKeypoint.new(1, 0.68),
		}),
		Rotation = 38,
	})

	local wireframeBounds, brushWire = nil, nil
	pcall(function()
		local wf = Instance.new("WireframeHandleAdornment")
		wf.Name = K.WIREFRAME_NAME; wf.Adornee = Terrain; wf.Color3 = C.accent; wf.Transparency = 0.12; wf.AlwaysOnTop = false
		wireframeBounds = wf
		local bw = Instance.new("WireframeHandleAdornment")
		bw.Name = K.BRUSH_WIRE_NAME; bw.Adornee = Terrain; bw.Color3 = C.cyan; bw.Transparency = 0.08; bw.AlwaysOnTop = true
		brushWire = bw
	end)

	local boundsPart = new("Part", nil, {
		Name = K.BOUNDS_PART_NAME, Anchored = true, CanCollide = false, CanTouch = false, CanQuery = false,
		CastShadow = false, Locked = true, Transparency = 1, Size = Vector3.new(4, 4, 4),
	})
	new("SelectionBox", boundsPart, {Adornee = boundsPart, LineThickness = 0.3, Color3 = C.accent, Transparency = 0.15, SurfaceColor3 = C.accent, SurfaceTransparency = 0.93})

	-- Header (Exact UI_old.txt structure + elevated glass polish)
	do
		local header = new("Frame", root, {Name = "Header", Size = UDim2.new(1, 0, 0, K.HEADER_H), BackgroundColor3 = C.panel, BorderSizePixel = 0, ZIndex = 2})
		corner(header, 12); surfaceSheen(header, 90, Color3.fromRGB(255, 255, 255), Color3.fromRGB(208, 215, 228))
		ui.header = header
		ui.headerMask = new("Frame", header, {Position = UDim2.new(0, 0, 1, -12), Size = UDim2.new(1, 0, 0, 12), BackgroundColor3 = C.panel, BorderSizePixel = 0})

		local topLine = new("Frame", header, {Size = UDim2.new(1, 0, 0, 2), BackgroundColor3 = C.accent, BackgroundTransparency = 0.18, BorderSizePixel = 0})
		ui.topLine = topLine
		new("UIGradient", topLine, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.92), NumberSequenceKeypoint.new(0.25, 0.04), NumberSequenceKeypoint.new(0.75, 0.04), NumberSequenceKeypoint.new(1, 0.92)})})
		local bottomDivider = new("Frame", header, {Position = UDim2.new(0, 0, 1, -1), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.strokeHi, BackgroundTransparency = 0.32, BorderSizePixel = 0})
		new("UIGradient", bottomDivider, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.72), NumberSequenceKeypoint.new(0.5, 0.10), NumberSequenceKeypoint.new(1, 0.72)})})

		local logo = new("Frame", header, {Position = UDim2.fromOffset(18, 18), Size = UDim2.fromOffset(38, 38), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
		corner(logo, 9); ui.logoStroke = stroke(logo, C.accentPale, 0.38)
		ui.logoGradient = new("UIGradient", logo, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, C.accentPale), ColorSequenceKeypoint.new(0.45, C.accent), ColorSequenceKeypoint.new(1, C.accentSoft)}), Rotation = 45})
		makeText(logo, "S", 18, C.text, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		local brandTitle = makeText(header, "SIRIUS  /  TERRAFORM", 14, C.text, FONT_BOLD, {Position = UDim2.fromOffset(68, 17), Size = UDim2.fromOffset(214, 20)})
		new("UIGradient", brandTitle, {Color = ColorSequence.new(Color3.new(1, 1, 1), C.accentPale), Rotation = 15})
		makeText(header, "PLANETARY, ATLAS & FORGE  ·  v" .. K.VERSION, 9, C.dim, FONT_BOLD, {Position = UDim2.fromOffset(69, 40), Size = UDim2.fromOffset(220, 16)})

		local displayName = LocalPlayer.DisplayName ~= "" and LocalPlayer.DisplayName or LocalPlayer.Name
		local initTime, initDate, initGreet = getClockInfo()
		local welcomeCard = new("Frame", header, {
			Name = "WelcomeClockBar", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 10, 0.5, 0),
			Size = UDim2.fromOffset(440, 48), BackgroundColor3 = C.inset, BackgroundTransparency = 0.05, BorderSizePixel = 0,
		})
		corner(welcomeCard, 10); specularStroke(welcomeCard, C.strokeHi, C.stroke, C.strokeLo, 0.30, 45); surfaceSheen(welcomeCard, 90)

		local avatarFrame = new("Frame", welcomeCard, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 9, 0.5, 0), Size = UDim2.fromOffset(32, 32), BackgroundColor3 = C.card, BorderSizePixel = 0, ClipsDescendants = true})
		corner(avatarFrame, 16); stroke(avatarFrame, C.accent, 0.35)
		local avatarFallback = makeText(avatarFrame, string.upper(string.sub(displayName, 1, 1)), 12, C.accentPale, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})
		local avatarImg = new("ImageLabel", avatarFrame, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ImageTransparency = 1, ZIndex = 2})
		corner(avatarImg, 16)
		task.spawn(function()
			local ok, content, isReady = pcall(function() return Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48) end)
			if ok and isReady and content and alive then avatarImg.Image = content; avatarFallback.Visible = false; tween(avatarImg, 0.35, {ImageTransparency = 0}) end
		end)

		ui.welcomeTitle = makeText(welcomeCard, "WELCOME, " .. string.upper(displayName), 11, C.text, FONT_BOLD, {Position = UDim2.fromOffset(50, 8), Size = UDim2.new(1, -174, 0, 16), TextTruncate = Enum.TextTruncate.AtEnd})
		ui.welcomeSub = makeText(welcomeCard, (LocalPlayer.DisplayName ~= LocalPlayer.Name) and ("@" .. LocalPlayer.Name .. "  ·  " .. initGreet) or initGreet, 9, C.muted, FONT_MED, {Position = UDim2.fromOffset(50, 25), Size = UDim2.new(1, -174, 0, 14), TextTruncate = Enum.TextTruncate.AtEnd})
		new("Frame", welcomeCard, {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -116, 0.5, 0), Size = UDim2.fromOffset(1, 28), BackgroundColor3 = C.stroke, BackgroundTransparency = 0.35, BorderSizePixel = 0})
		ui.clockTime = makeText(welcomeCard, initTime, 13, C.accentPale, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -12, 0, 8), Size = UDim2.fromOffset(98, 17), TextXAlignment = Enum.TextXAlignment.Right})
		new("UIGradient", ui.clockTime, {Color = ColorSequence.new(Color3.new(1, 1, 1), C.accentPale), Rotation = 90})
		ui.clockDate = makeText(welcomeCard, initDate, 8, C.dim, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -12, 0, 27), Size = UDim2.fromOffset(98, 13), TextXAlignment = Enum.TextXAlignment.Right})

		local pill = new("Frame", header, {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -164, 0.5, 0), Size = UDim2.fromOffset(128, 28), BackgroundColor3 = C.inset, BackgroundTransparency = 0.08, BorderSizePixel = 0, ZIndex = 15})
		corner(pill, 14); ui.pillStroke = stroke(pill, C.accent, 0.5)
		ui.pillDot = new("Frame", pill, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 10, 0.5, 0), Size = UDim2.fromOffset(7, 7), BackgroundColor3 = C.accent, BorderSizePixel = 0})
		corner(ui.pillDot, 4)
		ui.pillText = makeText(pill, "CLIENT READY", 9, C.accentPale, FONT_BOLD, {Position = UDim2.fromOffset(23, 0), Size = UDim2.new(1, -26, 1, 0)})

		ui.muteButton = makeButton(header, "SFX", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -122, 0.5, 0), Size = UDim2.fromOffset(34, 30), ZIndex = 20}, {selected = true, textSize = 9, silent = true})
		ui.taskbarButton = makeButton(header, "⤓", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -84, 0.5, 0), Size = UDim2.fromOffset(30, 30), ZIndex = 20}, {textSize = 14})
		ui.minButton = makeButton(header, "–", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -50, 0.5, 0), Size = UDim2.fromOffset(30, 30), ZIndex = 20}, {textSize = 16})
		ui.closeButton = makeButton(header, "×", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -16, 0.5, 0), Size = UDim2.fromOffset(30, 30), ZIndex = 20}, {textSize = 18})
		ui.dragHandle = new("TextButton", header, {BackgroundTransparency = 1, Text = "", AutoButtonColor = false, Size = UDim2.new(1, -308, 1, 0), ZIndex = 2})
	end

	-- 11-Tab Sidebar with 11 Distinct Category Accents
	local NAV = {
		{name = "Terrain", icon = "◆", sub = "Shape, rivers & trails"},
		{name = "Planet",  icon = "◉", sub = "3D globe & atmosphere"},
		{name = "Space",   icon = "🚀", sub = "Orbit, telemetry & Earth"},
		{name = "Atlas",   icon = "⊕", sub = "Full zoom map & A1 grid"},
		{name = "Brush",   icon = "✎", sub = "3D sculpt, paint & paths"},
		{name = "Water",   icon = "≈", sub = "Sea, shores & waves"},
		{name = "Biomes",  icon = "●", sub = "16 styles & palettes"},
		{name = "Synth",   icon = "✦", sub = "256-combo generator"},
		{name = "Perf",    icon = "⚡", sub = "Chunks, FPS & budgets"},
		{name = "Labs",    icon = "◈", sub = "Trees, clouds & staging"},
		{name = "World",   icon = "▣", sub = "QoL, lighting & sharing"},
	}
	do
		local sidebar = new("Frame", root, {
			Name = "Sidebar", Position = UDim2.fromOffset(12, K.HEADER_H + 10), Size = UDim2.new(0, 196, 1, -(K.HEADER_H + 22)),
			BackgroundColor3 = C.panel, BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 2,
		})
		ui.sidebar = sidebar
		corner(sidebar, 10); surfaceSheen(sidebar, 90); specularStroke(sidebar, C.strokeHi, C.stroke, C.strokeLo, 0.38, 75); pad(sidebar, 8, 10, 8, 10)
		makeText(sidebar, "NAVIGATION  ·  11 MODULES", 8, C.dim, FONT_BOLD, {Position = UDim2.fromOffset(6, 0), Size = UDim2.new(1, -12, 0, 13)})

		ui.navHighlight = new("Frame", sidebar, {Position = UDim2.fromOffset(0, 14), Size = UDim2.new(1, 0, 0, 31), BackgroundColor3 = C.accentSoft, BackgroundTransparency = 0.10, BorderSizePixel = 0, ZIndex = 1})
		corner(ui.navHighlight, 7)
		new("UIGradient", ui.navHighlight, {Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(178, 192, 188)), Rotation = 12})
		ui.navHiStroke = stroke(ui.navHighlight, C.accent, 0.38)
		ui.navHiBar = new("Frame", ui.navHighlight, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.fromOffset(3, 17), BackgroundColor3 = C.accent, BorderSizePixel = 0})
		corner(ui.navHiBar, 2)

		ui.navButtons = {}
		for index, item in ipairs(NAV) do
			local pal = PAGE_ACCENTS[item.name] or PAGE_ACCENTS.Terrain
			local yPos = 14 + (index - 1) * 32.5
			local nav = new("TextButton", sidebar, {
				Name = item.name .. "Nav", Position = UDim2.fromOffset(0, yPos), Size = UDim2.new(1, 0, 0, 30),
				BackgroundColor3 = C.card, BackgroundTransparency = 1, BorderSizePixel = 0, AutoButtonColor = false, ClipsDescendants = true, Text = "", ZIndex = 2,
			})
			corner(nav, 7)
			local iconBadge = new("Frame", nav, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 6, 0.5, 0), Size = UDim2.fromOffset(20, 20), BackgroundColor3 = pal.soft, BackgroundTransparency = 0.35, BorderSizePixel = 0, ZIndex = 3})
			corner(iconBadge, 5)
			local badgeStroke = stroke(iconBadge, pal.main, 0.58)
			local catDot = new("Frame", nav, {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(5, 5), BackgroundColor3 = pal.main, BackgroundTransparency = 0.45, BorderSizePixel = 0, ZIndex = 3})
			corner(catDot, 3)
			ui.navButtons[item.name] = {
				button = nav, y = yPos, badge = iconBadge, badgeStroke = badgeStroke, dot = catDot, pal = pal, unlocked = (item.name ~= "Space"),
				icon = makeText(iconBadge, item.icon, 10, pal.pale, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 4}),
				title = makeText(nav, string.upper(item.name), 9, C.muted, FONT_BOLD, {Position = UDim2.fromOffset(32, 2), Size = UDim2.new(1, -44, 0, 13), ZIndex = 3}),
				sub = makeText(nav, item.sub, 8, C.dim, FONT, {Position = UDim2.fromOffset(32, 15), Size = UDim2.new(1, -44, 0, 12), ZIndex = 3}),
			}
		end

		local engineCard = new("Frame", sidebar, {Position = UDim2.fromOffset(0, 376), Size = UDim2.new(1, 0, 0, 136), BackgroundColor3 = C.inset, BackgroundTransparency = 0.08, BorderSizePixel = 0})
		corner(engineCard, 8); stroke(engineCard, C.stroke, 0.50); pad(engineCard, 8, 10, 8, 10)
		makeText(engineCard, "ENGINE TELEMETRY", 8, C.dim, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 12)})
		ui.engineInfo = makeText(engineCard, "", 9, C.muted, FONT, {Position = UDim2.fromOffset(0, 15), Size = UDim2.new(1, 0, 1, -15), TextWrapped = true, TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.18})

		local infoCard = new("Frame", sidebar, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 140), BackgroundColor3 = C.inset, BackgroundTransparency = 0.08, BorderSizePixel = 0})
		corner(infoCard, 8); stroke(infoCard, C.stroke, 0.50); pad(infoCard, 8, 10, 8, 10)
		makeText(infoCard, "HOTKEYS & SCOPE", 8, C.dim, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 12)})
		makeText(infoCard, "B · Arm 3D Brush  |  [ ] · Size\nCtrl+Z · Undo Stroke\nRShift · Hide/Show Studio", 9, C.muted, FONT_MED, {Position = UDim2.fromOffset(0, 15), Size = UDim2.new(1, 0, 0, 48), TextWrapped = true, TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.2})
		makeText(infoCard, "Parts & models stay untouched. Planet sky & physics restore cleanly.", 9, C.warn, FONT, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 44), TextWrapped = true, TextYAlignment = Enum.TextYAlignment.Bottom, LineHeight = 1.15})
	end

	ui.body = new("Frame", root, {
		Name = "Body", Position = UDim2.fromOffset(220, K.HEADER_H + 10), Size = UDim2.new(1, -232, 1, -(K.HEADER_H + 92)),
		BackgroundTransparency = 1, ClipsDescendants = true, ZIndex = 2,
	})

	-- Footer (Exact UI_old.txt structure + Special Button SFX on Generate CTA)
	do
		local footer = new("Frame", root, {
			Name = "Footer", Position = UDim2.new(0, 220, 1, -70), Size = UDim2.new(1, -232, 0, 58),
			BackgroundColor3 = C.panel, BackgroundTransparency = 0.05, BorderSizePixel = 0, ZIndex = 2,
		})
		ui.footer = footer
		corner(footer, 10); surfaceSheen(footer, 90); specularStroke(footer, C.strokeHi, C.stroke, C.strokeLo, 0.36, 65)

		ui.statusPip = new("Frame", footer, {Position = UDim2.fromOffset(14, 10), Size = UDim2.fromOffset(6, 6), BackgroundColor3 = C.accent, BorderSizePixel = 0})
		corner(ui.statusPip, 3)
		ui.statusTitle = makeText(footer, "READY", 9, C.accentPale, FONT_BOLD, {Position = UDim2.fromOffset(25, 7), Size = UDim2.new(1, -430, 0, 13)})
		ui.timing = makeText(footer, "", 9, C.dim, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -208, 0, 7), Size = UDim2.fromOffset(224, 13), TextXAlignment = Enum.TextXAlignment.Right})
		ui.statusDetail = makeText(footer, "", 10, C.muted, FONT, {Position = UDim2.fromOffset(14, 22), Size = UDim2.new(1, -222, 0, 15), TextTruncate = Enum.TextTruncate.AtEnd})

		local back = new("Frame", footer, {Position = UDim2.fromOffset(14, 43), Size = UDim2.new(1, -222, 0, 6), BackgroundColor3 = C.inset, BorderSizePixel = 0, ClipsDescendants = true})
		corner(back, 3); stroke(back, C.stroke, 0.62)
		ui.progressFill = new("Frame", back, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = C.accent, BorderSizePixel = 0})
		corner(ui.progressFill, 3)
		ui.progressGrad = new("UIGradient", ui.progressFill, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, C.accentSoft), ColorSequenceKeypoint.new(0.5, C.accentPale), ColorSequenceKeypoint.new(1, C.accent)})})

		ui.generateButton = makeButton(footer, "GENERATE WORLD", {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(186, 42)}, {selected = true, textSize = 11, special = true})
		ui.ctaShimmer = new("Frame", ui.generateButton, {Position = UDim2.fromScale(-0.4, 0), Size = UDim2.fromScale(0.35, 1), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0.86, BorderSizePixel = 0, ZIndex = ui.generateButton.ZIndex + 1})
		new("UIGradient", ui.ctaShimmer, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.14), NumberSequenceKeypoint.new(1, 1)}), Rotation = 22})
	end

	----------------------------------------------------------------------------------------------------
	-- 12. STATUS, SECTION & SLIDER BUILDERS (WITH MACHINED GLASS HAIRLINE HIGHLIGHTS)
	----------------------------------------------------------------------------------------------------
	local function setStatus(title, detail, color)
		if not alive then return end
		local col = color or C.accentPale
		ui.statusTitle.Text = string.upper(title or "READY")
		ui.statusTitle.TextColor3, ui.statusPip.BackgroundColor3 = col, col
		ui.statusDetail.Text = detail or ""
	end
	local function setProgress(percent, color)
		if not alive then return end
		tween(ui.progressFill, 0.24, {Size = UDim2.fromScale(clamp(tonumber(percent) or 0, 0, 100) / 100, 1), BackgroundColor3 = color or C.accent})
	end
	local function setPill(label, color)
		if not alive then return end
		ui.pillText.Text = label
		tween(ui.pillText, 0.25, {TextColor3 = color})
		tween(ui.pillDot, 0.25, {BackgroundColor3 = color})
		tween(ui.pillStroke, 0.25, {Color = color})
	end

	local function requestPreview(fromRelease)
		if perf.previewOnRelease and ui.activeSlider ~= nil and not fromRelease then
			ui.previewPendingRelease = true
			return
		end
		ui.previewPendingRelease, ui.previewDirty, atlas.dirty = false, true, true
	end

	fn.updateScaleLagWarning = function()
		local w = tonumber(values.Width) or 256
		local d = tonumber(values.Depth) or 256
		local isLag = (w > 8000 or d > 8000)
		if ui.lagBanner then
			ui.lagBanner.Visible = isLag
			if isLag then
				local tilesX = math.ceil(w / 384)
				local tilesZ = math.ceil(d / 384)
				local approxTiles = tilesX * tilesZ
				local maxDim = math.max(w, d)
				local severity = maxDim >= 18000 and "EXTREME" or (maxDim >= 12000 and "CRITICAL" or "ELEVATED")
				if ui.lagDesc then
					ui.lagDesc.Text = string.format("[%s RISK] %d × %d studs (>8K threshold) · ~%d streaming tiles · Heavy voxel generation load!", severity, w, d, approxTiles)
				end
			end
		end
	end

	local function refreshSizeChips()
		for sz, btn in pairs(ui.sizeChipButtons) do
			setButtonState(btn, {selected = (values.Width == sz and values.Depth == sz)})
		end
		if fn.updateScaleLagWarning then fn.updateScaleLagWarning() end
	end

	local function setValue(key, value, quiet, animateWidget)
		local q = quantize(key, value)
		values[key] = q
		local widget = ui.fieldWidgets[key]
		if widget then widget.refresh(q, animateWidget) end
		if state.squareLock and not ui.syncingSquare and (key == "Width" or key == "Depth") then
			ui.syncingSquare = true
			local partner = (key == "Width") and "Depth" or "Width"
			values[partner] = q
			if ui.fieldWidgets[partner] then ui.fieldWidgets[partner].refresh(q, animateWidget) end
			ui.syncingSquare = false
		end
		if key == "Width" or key == "Depth" then
			refreshSizeChips()
			if fn.updateScaleLagWarning then fn.updateScaleLagWarning() end
		end
		if not quiet then requestPreview() end
		return q
	end

	local function createPage(name)
		local pal = PAGE_ACCENTS[name] or PAGE_ACCENTS.Terrain
		local scroll = new("ScrollingFrame", ui.body, {
			Name = name .. "Page", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
			Visible = false, ScrollBarThickness = 3, ScrollBarImageColor3 = pal.main, ScrollBarImageTransparency = 0.20,
			CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollingDirection = Enum.ScrollingDirection.Y,
		})
		ui.pagePads[name] = pad(scroll, 2, 10, 12, 2)
		new("UIListLayout", scroll, {SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 12)})
		ui.pages[name] = scroll
		ui.pageSections[name] = {}
		return scroll
	end

	local function makeSection(page, title, order, subtitle, accentColor)
		local pageName = string.gsub(page.Name, "Page$", "")
		local pal = PAGE_ACCENTS[pageName] or PAGE_ACCENTS.Terrain
		local accent = accentColor or pal.main

		local frame = new("Frame", page, {
			Name = string.gsub(title, "[^%w]", "") .. "Section", Size = UDim2.new(1, -2, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y, BackgroundColor3 = C.panel, BackgroundTransparency = 0.04,
			BorderSizePixel = 0, LayoutOrder = order,
		})
		corner(frame, 10); surfaceSheen(frame, 90)
		local secStroke = specularStroke(frame, C.strokeHi, C.stroke, C.strokeLo, 0.36, 70)
		local secScale = new("UIScale", frame, {Scale = 1})
		pad(frame, 12, 14, 14, 14)
		new("UIListLayout", frame, {SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 10)})

		-- Elevated top glass hairline tinted with the page's category accent
		local head = new("Frame", frame, {Size = UDim2.new(1, 0, 0, 18), BackgroundTransparency = 1, LayoutOrder = 0})
		local hairline = new("Frame", head, {Position = UDim2.new(0, 0, 0, -9), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = accent, BackgroundTransparency = 0.55, BorderSizePixel = 0})
		new("UIGradient", hairline, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.25), NumberSequenceKeypoint.new(0.45, 0.65), NumberSequenceKeypoint.new(1, 1)})})

		local pip = new("Frame", head, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.fromOffset(3, 13), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
		corner(pip, 2); new("UIGradient", pip, {Color = ColorSequence.new(C.text, accent), Rotation = 90})

		makeText(head, string.upper(title), 10, C.text, FONT_BOLD, {Position = UDim2.fromOffset(10, 0), Size = UDim2.new(0.58, -10, 1, 0)})

		local subLabel = nil
		if subtitle then
			local badge = new("Frame", head, {
				AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.fromOffset(0, 18),
				AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = C.inset, BackgroundTransparency = 0.12, BorderSizePixel = 0,
			})
			corner(badge, 5); stroke(badge, accent, 0.50); pad(badge, 0, 8, 0, 8)
			subLabel = makeText(badge, subtitle, 9, pal.pale, FONT_MED, {Size = UDim2.fromOffset(0, 18), AutomaticSize = Enum.AutomaticSize.X})
		end
		if ui.pageSections[pageName] then table.insert(ui.pageSections[pageName], {frame = frame, scale = secScale, stroke = secStroke}) end
		return frame, subLabel
	end

	local function makeGrid(parent, columns, cellHeight, order, gap)
		gap = gap or 10
		local holder = new("Frame", parent, {Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, LayoutOrder = order or 1})
		new("UIGridLayout", holder, {
			CellSize = UDim2.new(1 / columns, -gap * (columns - 1) / columns, 0, cellHeight),
			CellPadding = UDim2.fromOffset(gap, gap), SortOrder = Enum.SortOrder.LayoutOrder,
		})
		return holder
	end

	local function makeCustomSlider(parent, spec, order, tone)
		local barColor, softColor, paleColor = tonePalette(tone or "normal")
		local decimals = decimalsFor(spec.step)
		local curVal = spec.get()
		local function fmt(v) return string.format("%." .. decimals .. "f", v) end
		local function snap(v)
			v = tonumber(v)
			if not isFinite(v) then v = spec.default end
			v = clamp(math.floor(clamp(v, spec.min, spec.max) / spec.step + 0.5) * spec.step, spec.min, spec.max)
			return decimals > 0 and tonumber(fmt(v)) or v
		end

		local card = new("Frame", parent, {BackgroundColor3 = C.card, BackgroundTransparency = 0.08, BorderSizePixel = 0, LayoutOrder = order or 1})
		corner(card, 8); surfaceSheen(card, 90)
		local cardStroke = stroke(card, C.stroke, 0.5)
		pad(card, 7, 10, 7, 10)

		local titleLbl = makeText(card, string.upper(spec.label), 9, C.muted, FONT_BOLD, {Position = UDim2.fromOffset(0, 1), Size = UDim2.new(1, -68, 0, 18), TextTruncate = Enum.TextTruncate.AtEnd})
		local box = new("TextBox", card, {
			AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(64, 20),
			BackgroundColor3 = C.inset, BorderSizePixel = 0, ClearTextOnFocus = false, Text = fmt(curVal),
			TextColor3 = C.text, TextSize = 11, Font = FONT_BOLD, TextXAlignment = Enum.TextXAlignment.Right,
		})
		corner(box, 5); local boxStroke = stroke(box, C.stroke, 0.55); pad(box, 0, 6, 0, 6)

		local hitArea = new("TextButton", card, {Position = UDim2.new(0, 0, 1, -18), Size = UDim2.new(1, 0, 0, 16), BackgroundTransparency = 1, Text = "", AutoButtonColor = false})
		local track = new("Frame", hitArea, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.fromScale(0, 0.5), Size = UDim2.new(1, 0, 0, 5), BackgroundColor3 = C.inset, BorderSizePixel = 0})
		corner(track, 3); stroke(track, C.stroke, 0.65)

		local fill = new("Frame", track, {Size = UDim2.fromScale(0, 1), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
		corner(fill, 3)
		local fillGrad = new("UIGradient", fill, {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, softColor), ColorSequenceKeypoint.new(0.62, barColor), ColorSequenceKeypoint.new(1, paleColor)})})

		local knob = new("Frame", track, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0, 0.5), Size = UDim2.fromOffset(11, 11), BackgroundColor3 = C.text, BorderSizePixel = 0, ZIndex = 2})
		corner(knob, 6); local knobStroke = stroke(knob, barColor, 0.08, 1.5)

		local isDimension = (spec.key == "Width" or spec.key == "Depth")
		if isDimension then
			local markerAlpha = clamp((8000 - spec.min) / (spec.max - spec.min), 0, 1)
			local marker = new("Frame", track, {
				AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(markerAlpha, 0, 0.5, 0),
				Size = UDim2.new(0, 2, 1, 4), BackgroundColor3 = Color3.fromRGB(255, 75, 95),
				BorderSizePixel = 0, ZIndex = 3,
			})
			corner(marker, 1)
		end

		local function refresh(v, animated)
			curVal = v
			if not box:IsFocused() then box.Text = fmt(v) end
			local alpha = clamp((v - spec.min) / (spec.max - spec.min), 0, 1)
			if animated and ui.activeSlider == nil then
				tween(fill, 0.24, {Size = UDim2.fromScale(alpha, 1)})
				tween(knob, 0.24, {Position = UDim2.fromScale(alpha, 0.5)})
			else
				fill.Size = UDim2.fromScale(alpha, 1); knob.Position = UDim2.fromScale(alpha, 0.5)
			end

			if isDimension then
				local isLag = (v > 8000)
				if isLag then
					local intensity = clamp((v - 8000) / (spec.max - 8000), 0, 1)
					local warnColor = Color3.fromRGB(255, math.floor(135 - intensity * 50), math.floor(70 - intensity * 25))
					titleLbl.Text = string.format("%s ⚠ LAG", string.upper(spec.label))
					titleLbl.TextColor3 = warnColor
					box.TextColor3 = warnColor
					boxStroke.Color = warnColor
					boxStroke.Transparency = 0.2
					fillGrad.Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 80, 20)),
						ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 110, 40)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 55, 75)),
					})
					cardStroke.Color = warnColor
					cardStroke.Transparency = 0.3
					knobStroke.Color = warnColor
				else
					titleLbl.Text = string.upper(spec.label)
					titleLbl.TextColor3 = C.muted
					box.TextColor3 = C.text
					boxStroke.Color = C.stroke
					boxStroke.Transparency = 0.55
					fillGrad.Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, softColor),
						ColorSequenceKeypoint.new(0.62, barColor),
						ColorSequenceKeypoint.new(1, paleColor),
					})
					cardStroke.Color = C.stroke
					cardStroke.Transparency = 0.5
					knobStroke.Color = barColor
				end
			end
		end

		local function setFromX(screenX)
			local alpha = clamp((screenX - track.AbsolutePosition.X) / math.max(1, track.AbsoluteSize.X), 0, 1)
			local nextVal = snap(spec.min + alpha * (spec.max - spec.min))
			if nextVal ~= curVal and spec.step >= 1 then playUISound("click", 1.12, 0.26) end
			spec.set(nextVal, false)
			refresh(spec.get(), false)
		end

		local function resetDefault()
			local d = snap(spec.default)
			spec.set(d, true); refresh(spec.get(), true)
			playUISound("click", 0.92, 0.65)
			setStatus("RESET PARAMETER", spec.label .. " restored to default (" .. fmt(d) .. ").", paleColor)
		end

		hitArea.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				if spec.hint and not state.busy then
					if isDimension and curVal > 8000 then
						setStatus("⚠ HIGH VOXEL LOAD", string.format("%s (%d studs) exceeds 8,000 threshold. Extreme streaming area!", spec.label, curVal), C.rosePale)
					else
						setStatus(spec.label, spec.hint, C.muted)
					end
				end
				playUISound("click", 1.06, 0.45)
				tween(knob, 0.14, {Size = UDim2.fromOffset(14, 14)})
				tween(cardStroke, 0.16, {Color = (isDimension and curVal > 8000) and Color3.fromRGB(255, 80, 95) or barColor, Transparency = 0.18})
				ui.activeSlider = setFromX; setFromX(input.Position.X)
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then resetDefault() end
		end)
		card.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton2 then resetDefault() end end)
		hitArea.MouseEnter:Connect(function() tween(knob, 0.16, {Size = UDim2.fromOffset(13, 13)}) end)
		hitArea.MouseLeave:Connect(function() if ui.activeSlider ~= setFromX then tween(knob, 0.16, {Size = UDim2.fromOffset(11, 11)}) end end)
		card.MouseEnter:Connect(function() if ui.activeSlider ~= setFromX then tween(cardStroke, 0.2, {Color = (isDimension and curVal > 8000) and Color3.fromRGB(255, 100, 115) or C.strokeHi, Transparency = 0.22}) end end)
		card.MouseLeave:Connect(function()
			if ui.activeSlider ~= setFromX then
				local isLag = isDimension and (curVal > 8000)
				tween(cardStroke, 0.2, {Color = isLag and Color3.fromRGB(255, 85, 105) or C.stroke, Transparency = isLag and 0.3 or 0.5})
			end
		end)
		box.Focused:Connect(function()
			if spec.hint and not state.busy then
				if isDimension and curVal > 8000 then
					setStatus("⚠ HIGH VOXEL LOAD", string.format("%s (%d studs) exceeds 8,000 threshold. Extreme streaming area!", spec.label, curVal), C.rosePale)
				else
					setStatus(spec.label, spec.hint, C.muted)
				end
			end
			tween(boxStroke, 0.2, {Color = (isDimension and curVal > 8000) and Color3.fromRGB(255, 85, 105) or barColor, Transparency = 0.1})
		end)
		box.FocusLost:Connect(function()
			tween(boxStroke, 0.2, {Color = (isDimension and curVal > 8000) and Color3.fromRGB(255, 85, 105) or C.stroke, Transparency = 0.55})
			local v = snap(box.Text); spec.set(v, true); refresh(spec.get(), true); playUISound("click", 1.02, 0.5)
		end)

		local handle = {
			refresh = refresh,
			resetKnob = function()
				tween(knob, 0.18, {Size = UDim2.fromOffset(11, 11)})
				local isLag = isDimension and (curVal > 8000)
				tween(cardStroke, 0.2, {Color = isLag and Color3.fromRGB(255, 85, 105) or C.stroke, Transparency = isLag and 0.3 or 0.5})
			end,
		}
		table.insert(ui.customKnobs, handle)
		refresh(curVal, false)
		return handle
	end

	local function makeSliderField(parent, key, order, onEdit, tone)
		local f = FIELDS[key]
		if not f then return end
		local w = makeCustomSlider(parent, {
			key = key,
			label = f.label, min = f.min, max = f.max, step = f.step, default = f.default, hint = f.hint,
			get = function() return values[key] end,
			set = function(v, animated) setValue(key, v, false, animated); if onEdit then onEdit() end end,
		}, order, tone)
		ui.fieldWidgets[key] = w
		return w
	end

	local function makeNumberField(parent, key, order)
		local f = FIELDS[key]
		if not f then return end
		local card = new("Frame", parent, {Name = key .. "Field", BackgroundColor3 = C.card, BackgroundTransparency = 0.08, BorderSizePixel = 0, LayoutOrder = order or 1})
		corner(card, 8); surfaceSheen(card, 90)
		local cardStroke = stroke(card, C.stroke, 0.5); pad(card, 7, 10, 7, 10)
		makeText(card, string.upper(f.label), 9, C.muted, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 15), TextTruncate = Enum.TextTruncate.AtEnd})
		local box = new("TextBox", card, {
			Position = UDim2.fromOffset(0, 19), Size = UDim2.new(1, 0, 0, 24), BackgroundColor3 = C.inset, BorderSizePixel = 0,
			ClearTextOnFocus = false, Text = rawText(key, values[key]), TextColor3 = C.text, TextSize = 12, Font = FONT_BOLD, TextXAlignment = Enum.TextXAlignment.Left,
		})
		corner(box, 5); local boxStroke = stroke(box, C.stroke, 0.55); pad(box, 0, 8, 0, 8)
		local function refresh(v) if not box:IsFocused() then box.Text = rawText(key, v) end end
		card.MouseEnter:Connect(function() tween(cardStroke, 0.2, {Color = C.strokeHi, Transparency = 0.22}) end)
		card.MouseLeave:Connect(function() tween(cardStroke, 0.2, {Color = C.stroke, Transparency = 0.5}) end)
		box.Focused:Connect(function()
			if not state.busy then setStatus(f.label, f.hint, C.muted) end
			tween(boxStroke, 0.2, {Color = C.accent, Transparency = 0.1})
		end)
		box.FocusLost:Connect(function()
			tween(boxStroke, 0.2, {Color = C.stroke, Transparency = 0.55})
			setValue(key, box.Text, false, true); playUISound("click", 1.02, 0.5)
		end)
		ui.fieldWidgets[key] = {refresh = refresh}
		refresh(values[key])
		return card
	end

	----------------------------------------------------------------------------------------------------
	-- 13. ALL 10 PAGES: TERRAIN, PLANET (ENHANCED 3D), ATLAS, BRUSH, WATER, BIOMES, SYNTH, PERF, LABS, WORLD
	----------------------------------------------------------------------------------------------------

	-- PAGE 1: TERRAIN (Exact UI_old.txt inline Live Map + Cross-Section + Metrics + Rivers & Trails)
	do
		local function buildTerrainPage()
			local page = createPage("Terrain")
		local styleSec = makeSection(page, "Formation style", 1, "16 Biomes + 256 Synth")
		local styleGrid = makeGrid(styleSec, 4, 29, 1, 8)
		for idx, name in ipairs(STYLE_ORDER) do
			local btn = makeButton(styleGrid, string.upper(name), {LayoutOrder = idx}, {selected = name == state.style, textSize = 10})
			ui.styleButtons[name] = btn
			onClick(btn, function() fn.selectStyle(name, true) end)
		end

		local prevSec, prevSub = makeSection(page, "Live terrain preview", 2, "Active: ROLLING")
		ui.previewProfileLabel = prevSub
		local prevHolder = new("Frame", prevSec, {Size = UDim2.new(1, 0, 0, 184), BackgroundTransparency = 1, LayoutOrder = 1})

		local mapContainer = new("Frame", prevHolder, {Size = UDim2.fromOffset(174, 174), BackgroundColor3 = C.inset, BorderSizePixel = 0, ClipsDescendants = true})
		corner(mapContainer, 8); stroke(mapContainer, C.stroke, 0.4)
		local mapCanvas = new("Frame", mapContainer, {Position = UDim2.fromOffset(5, 5), Size = UDim2.new(1, -10, 1, -10), BackgroundColor3 = C.bg, BorderSizePixel = 0, ClipsDescendants = true})
		new("UIGridLayout", mapCanvas, {CellSize = UDim2.fromScale(1 / K.PREVIEW_GRID, 1 / K.PREVIEW_GRID), CellPadding = UDim2.new(), SortOrder = Enum.SortOrder.LayoutOrder})
		for i = 1, K.PREVIEW_GRID * K.PREVIEW_GRID do ui.mapCells[i] = new("Frame", mapCanvas, {BackgroundColor3 = C.card, BorderSizePixel = 0, LayoutOrder = i}) end

		ui.mapScanline = new("Frame", mapCanvas, {Size = UDim2.new(1, 0, 0, 16), Position = UDim2.fromScale(0, -0.15), BackgroundColor3 = C.accentPale, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 4})
		new("UIGradient", ui.mapScanline, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.35), NumberSequenceKeypoint.new(1, 1)}), Rotation = 90})
		new("Frame", mapCanvas, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.fromScale(0, 0.5), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.text, BackgroundTransparency = 0.72, BorderSizePixel = 0, ZIndex = 3})
		ui.mapReticle = new("Frame", mapCanvas, {AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(9, 9), BackgroundTransparency = 1, Visible = false, ZIndex = 6})
		corner(ui.mapReticle, 5); stroke(ui.mapReticle, C.text, 0.1, 1.5)
		makeText(mapContainer, "N", 8, C.accentPale, FONT_BOLD, {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 7), Size = UDim2.fromOffset(14, 10), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 5})
		ui.playerDot = new("Frame", mapContainer, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(7, 7), BackgroundColor3 = C.warn, BorderSizePixel = 0, Visible = false, ZIndex = 5})
		corner(ui.playerDot, 4); stroke(ui.playerDot, C.bg, 0, 1.5)
		ui.mapHitBox = new("TextButton", mapCanvas, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "", AutoButtonColor = false, ZIndex = 7})
		ui.mapReadout = makeText(prevHolder, "Click map: Teleport  ·  Shift+Click: Set Center", 8, C.dim, FONT_MED, {Position = UDim2.fromOffset(2, 175), Size = UDim2.fromOffset(174, 11), TextXAlignment = Enum.TextXAlignment.Center, TextTruncate = Enum.TextTruncate.AtEnd})

		local rightPane = new("Frame", prevHolder, {Position = UDim2.fromOffset(186, 0), Size = UDim2.new(1, -186, 1, 0), BackgroundTransparency = 1})
		local profileBox = new("Frame", rightPane, {Size = UDim2.new(1, 0, 0, 120), BackgroundColor3 = C.inset, BackgroundTransparency = 0.06, BorderSizePixel = 0, ClipsDescendants = true})
		corner(profileBox, 8); stroke(profileBox, C.stroke, 0.42)
		local skyBackdrop = new("Frame", profileBox, {Size = UDim2.fromScale(1, 1), BackgroundColor3 = C.accentSoft, BackgroundTransparency = 0.86, BorderSizePixel = 0})
		new("UIGradient", skyBackdrop, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.25), NumberSequenceKeypoint.new(1, 1)}), Rotation = 90})
		makeText(profileBox, "WEST → EAST CROSS-SECTION  (AT CENTER Z)", 8, C.dim, FONT_BOLD, {Position = UDim2.fromOffset(10, 6), Size = UDim2.new(1, -20, 0, 12), ZIndex = 4})
		ui.profileRange = makeText(profileBox, "", 8, C.muted, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -10, 0, 6), Size = UDim2.fromOffset(220, 12), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 4})

		local plotArea = new("Frame", profileBox, {Position = UDim2.fromOffset(10, 22), Size = UDim2.new(1, -20, 1, -28), BackgroundTransparency = 1, ClipsDescendants = true})
		for g = 1, 2 do new("Frame", plotArea, {Position = UDim2.fromScale(0, g / 3), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.stroke, BackgroundTransparency = 0.72, BorderSizePixel = 0, ZIndex = 0}) end
		ui.seaFill = new("Frame", plotArea, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.fromScale(0, 1), Size = UDim2.fromScale(1, 0), BackgroundColor3 = WATER_PRESETS.Ocean.color, BackgroundTransparency = 0.65, BorderSizePixel = 0, ZIndex = 1})
		new("UIGradient", ui.seaFill, {Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(120, 150, 175)), Rotation = 90})
		ui.seaLine = new("Frame", plotArea, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.fromScale(0, 1), Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.bluePale, BackgroundTransparency = 0.18, BorderSizePixel = 0, ZIndex = 3})
		for i = 1, K.PROFILE_BARS do
			local bar = new("Frame", plotArea, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.new((i - 1) / K.PROFILE_BARS, 0, 1, 0), Size = UDim2.new(1 / K.PROFILE_BARS, -1, 0.2, 0), BackgroundColor3 = C.accent, BorderSizePixel = 0, ZIndex = 2})
			corner(bar, 2); new("UIGradient", bar, {Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(168, 174, 182)), Rotation = 90})
			ui.profileBars[i] = bar
		end

		local metricRow = makeGrid(rightPane, 4, 52, 2, 8)
		metricRow.Position = UDim2.fromOffset(0, 130)
		for idx, mInfo in ipairs({{label="RELIEF SPAN",col=C.accent},{label="WATER COVER",col=C.blue},{label="EST. VOXELS",col=C.purple},{label="FOOTPRINT",col=C.accentPale}}) do
			local card = new("Frame", metricRow, {BackgroundColor3 = C.card, BackgroundTransparency = 0.08, BorderSizePixel = 0, LayoutOrder = idx})
			corner(card, 7); surfaceSheen(card, 90); stroke(card, C.stroke, 0.52)
			local bar = new("Frame", card, {Position = UDim2.fromOffset(0, 9), Size = UDim2.fromOffset(3, 34), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
			corner(bar, 2); new("UIGradient", bar, {Color = ColorSequence.new(C.text, mInfo.col), Rotation = 90})
			pad(card, 6, 8, 6, 11)
			makeText(card, mInfo.label, 8, C.dim, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 12)})
			ui.metricValues[idx] = makeText(card, "--", 12, C.text, FONT_BOLD, {Position = UDim2.fromOffset(0, 17), Size = UDim2.new(1, 0, 0, 22), TextTruncate = Enum.TextTruncate.AtEnd})
		end

		local shapeSec = makeSection(page, "Scale, sculpting, erosion & grass", 3, "Right-Click Slider = Reset")
		local quickRow = new("Frame", shapeSec, {Size = UDim2.new(1, 0, 0, 28), BackgroundTransparency = 1, LayoutOrder = 1})
		ui.squareLockBtn = makeButton(quickRow, "LOCK SQUARE (W=D) · ON", {Size = UDim2.fromOffset(168, 28)}, {selected = true, textSize = 9})
		local chipHolder = new("Frame", quickRow, {Position = UDim2.fromOffset(176, 0), Size = UDim2.new(1, -176, 1, 0), BackgroundTransparency = 1})
		new("UIGridLayout", chipHolder, {CellSize = UDim2.new(1 / #QUICK_SIZES, -6, 1, 0), CellPadding = UDim2.fromOffset(6, 0), SortOrder = Enum.SortOrder.LayoutOrder})
		for idx, sz in ipairs(QUICK_SIZES) do
			local chip = makeButton(chipHolder, sz == 21504 and "21504 MAX" or tostring(sz), {LayoutOrder = idx}, {selected = (values.Width == sz and values.Depth == sz), textSize = 9})
			ui.sizeChipButtons[sz] = chip
			onClick(chip, function()
				ui.syncingSquare = true
				values.Width, values.Depth = sz, sz
				if ui.fieldWidgets.Width then ui.fieldWidgets.Width.refresh(sz, true) end
				if ui.fieldWidgets.Depth then ui.fieldWidgets.Depth.refresh(sz, true) end
				ui.syncingSquare = false; refreshSizeChips(); requestPreview(true)
				if sz > 8000 then
					setStatus("⚠ SCALE LAG WARNING", string.format("Set footprint to extreme %d × %d studs. Expect high voxel density & generation time.", sz, sz), C.rosePale)
				else
					setStatus("MAP FOOTPRINT", string.format("Set footprint to %d × %d studs.", sz, sz), C.accentPale)
				end
			end)
		end

		local lagBanner = new("Frame", shapeSec, {
			Size = UDim2.new(1, 0, 0, 32), BackgroundColor3 = Color3.fromRGB(36, 14, 18),
			BackgroundTransparency = 0.12, BorderSizePixel = 0, LayoutOrder = 2,
			Visible = false, ClipsDescendants = true,
		})
		corner(lagBanner, 8)
		local lagStroke = stroke(lagBanner, Color3.fromRGB(255, 75, 95), 0.3, 1.2)
		pad(lagBanner, 0, 12, 0, 12); surfaceSheen(lagBanner, 90)

		local lagTag = new("Frame", lagBanner, {
			AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.fromOffset(142, 20),
			BackgroundColor3 = Color3.fromRGB(56, 18, 24), BackgroundTransparency = 0.1, BorderSizePixel = 0,
		})
		corner(lagTag, 4); stroke(lagTag, Color3.fromRGB(255, 95, 115), 0.4)
		makeText(lagTag, "⚠ DYNAMIC LAG WARNING", 8, Color3.fromRGB(255, 140, 150), FONT_BOLD, {
			Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center,
		})

		local lagDesc = makeText(lagBanner, "", 9, Color3.fromRGB(250, 205, 210), FONT_MED, {
			AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 152, 0.5, 0), Size = UDim2.new(1, -156, 0, 20),
			TextTruncate = Enum.TextTruncate.AtEnd,
		})
		ui.lagBanner = lagBanner
		ui.lagDesc = lagDesc
		ui.lagStroke = lagStroke
		if fn.updateScaleLagWarning then fn.updateScaleLagWarning() end

		local shapeGrid = makeGrid(shapeSec, 4, 54, 3, 8)
		for idx, key in ipairs(SHAPE_KEYS) do
			makeSliderField(shapeGrid, key, idx, key == "GrassLength" and function() pcall(function() Terrain.GrassLength = values.GrassLength end) end or nil)
		end

		local pathSec = makeSection(page, "Procedural rivers & A* switchback trails", 4, "Meander + Slope A* Network")
		local pathGrid = makeGrid(pathSec, 4, 54, 1, 8)
		for idx, key in ipairs(PATH_GEN_KEYS) do makeSliderField(pathGrid, key, idx, nil, (key == "RiverCount" or key == "RiverWidth") and "blue" or "amber") end
		local pathBtnRow = makeGrid(pathSec, 4, 30, 2, 8)
		onClick(makeButton(pathBtnRow, "+ ADD 2 RIVERS", {LayoutOrder = 1}, {tone = "blue", textSize = 10}), function()
			setValue("RiverCount", 2, true, true); setValue("RiverWidth", 20, false, true); fn.triggerMapScanline()
			setStatus("PROCEDURAL RIVERS", "Added 2 meandering highland-to-sea rivers.", C.bluePale)
		end)
		onClick(makeButton(pathBtnRow, "+ ADD 2 TRAILS", {LayoutOrder = 2}, {tone = "amber", textSize = 10}), function()
			setValue("TrailCount", 2, true, true); setValue("TrailWidth", 12, false, true); fn.triggerMapScanline()
			setStatus("PROCEDURAL TRAILS", "Added 2 A* slope-graded trails across the map.", C.amberPale)
		end)
		onClick(makeButton(pathBtnRow, "VALLEY + TRAIL COMBO", {LayoutOrder = 3}, {textSize = 10}), function()
			setValue("RiverCount", 2, true, true); setValue("RiverWidth", 20, true, true)
			setValue("TrailCount", 2, true, true); setValue("TrailWidth", 12, false, true); fn.triggerMapScanline()
		end)
		onClick(makeButton(pathBtnRow, "CLEAR RIVERS/TRAILS", {LayoutOrder = 4}, {textSize = 10}), function()
			setValue("RiverCount", 0, true, true); setValue("TrailCount", 0, false, true); fn.triggerMapScanline()
		end)

		local placeSec = makeSection(page, "Placement & seed", 5, "4-Stud Voxel Grid")
		local placeGrid = makeGrid(placeSec, 3, 52, 1, 8)
		makeNumberField(placeGrid, "Seed", 1); makeNumberField(placeGrid, "CenterX", 2); makeNumberField(placeGrid, "CenterZ", 3)
		local actionRow = makeGrid(placeSec, 4, 32, 2, 8)
		ui.centerPlayerBtn = makeButton(actionRow, "CENTER ON ME", {LayoutOrder = 1})
		ui.centerCamBtn = makeButton(actionRow, "CENTER ON CAMERA", {LayoutOrder = 2})
		ui.randomSeedBtn = makeButton(actionRow, "RANDOM SEED", {LayoutOrder = 3}, {special = true})
		ui.boundsToggleBtn = makeButton(actionRow, "SHOW BOUNDS  ·  OFF", {LayoutOrder = 4})
		end
		buildTerrainPage()
	end

	-- PAGE 2: PLANET (ENHANCED 8-SHELL 3D PLANETARIUM VIEWFINDER + MULTI-CATEGORY SIMULATOR)
	do
		local function buildPlanetPage()
			local page = createPage("Planet")
		local vfSec = makeSection(page, "3D Planetary Telescope Viewfinder", 1, "Drag Globe to Orbit · Scroll to Zoom", C.planet)

		local vfFrame = new("Frame", vfSec, {
			Size = UDim2.new(1, 0, 0, 268), BackgroundColor3 = Color3.fromRGB(6, 7, 12),
			BorderSizePixel = 0, ClipsDescendants = true, LayoutOrder = 1,
		})
		corner(vfFrame, 10)
		local _, vfRimGrad = specularStroke(vfFrame, C.planetPale, C.planet, C.strokeLo, 0.22, 42)
		table.insert(ui.sheenGrads, vfRimGrad)

		-- Deep-space dual Nebula Wash + multi-class starfield + 3 diffraction stars
		local nebA = new("Frame", vfFrame, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.34, 0.42), Size = UDim2.fromOffset(380, 240), BackgroundColor3 = Color3.fromRGB(36, 98, 168), BackgroundTransparency = 0.86, BorderSizePixel = 0})
		corner(nebA, 999); new("UIGradient", nebA, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.35), NumberSequenceKeypoint.new(1, 1)}), Rotation = 28})
		local nebB = new("Frame", vfFrame, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.68, 0.62), Size = UDim2.fromOffset(320, 210), BackgroundColor3 = Color3.fromRGB(98, 52, 168), BackgroundTransparency = 0.88, BorderSizePixel = 0})
		corner(nebB, 999); new("UIGradient", nebB, {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.45), NumberSequenceKeypoint.new(1, 1)}), Rotation = -35})

		local sRng = Random.new(77412)
		for i = 1, 68 do
			local sz = (i <= 4) and 3 or ((i % 4 == 0) and 2 or 1)
			local sx, sy = sRng:NextNumber(0.02, 0.98), sRng:NextNumber(0.04, 0.96)
			local col = (i % 6 == 0) and Color3.fromRGB(185, 222, 255) or ((i % 9 == 0) and Color3.fromRGB(255, 212, 176) or Color3.fromRGB(242, 246, 255))
			local st = new("Frame", vfFrame, {Position = UDim2.fromScale(sx, sy), Size = UDim2.fromOffset(sz, sz), BackgroundColor3 = col, BackgroundTransparency = sRng:NextNumber(0.10, 0.68), BorderSizePixel = 0})
			if sz >= 2 then corner(st, 2) end
			if i <= 3 then
				-- 4-point astronomical diffraction spikes
				new("Frame", st, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(13, 1), BackgroundColor3 = col, BackgroundTransparency = 0.55, BorderSizePixel = 0})
				new("Frame", st, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(1, 13), BackgroundColor3 = col, BackgroundTransparency = 0.55, BorderSizePixel = 0})
			end
		end

		-- Outer Exosphere Corona + Sun-Crescent Rayleigh Atmospheric Limb Ring
		local outerCorona = new("Frame", vfFrame, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(188, 188), BackgroundColor3 = Color3.fromRGB(92, 184, 255), BackgroundTransparency = 0.80, BorderSizePixel = 0, ZIndex = 2})
		corner(outerCorona, 999)
		local rayleighRing = new("Frame", vfFrame, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(154, 154), BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 2})
		corner(rayleighRing, 999)
		local rayleighStroke = stroke(rayleighRing, Color3.fromRGB(115, 200, 255), 0.15, 4)
		local rayleighGrad = new("UIGradient", rayleighStroke, {
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.02), NumberSequenceKeypoint.new(0.55, 0.42), NumberSequenceKeypoint.new(1, 0.88)}),
			Rotation = -25,
		})

		local vp = new("ViewportFrame", vfFrame, {
			Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 3,
			Ambient = Color3.fromRGB(52, 56, 72), LightColor = Color3.fromRGB(255, 248, 234), LightDirection = Vector3.new(-1, -0.35, -0.65),
		})
		local wm = Instance.new("WorldModel"); wm.Parent = vp
		local pCam = Instance.new("Camera"); pCam.FieldOfView = 32; pCam.CFrame = CFrame.new(Vector3.new(0, 1.8, planet.zoom), Vector3.zero); pCam.Parent = vp
		vp.CurrentCamera = pCam

		-- 8-Shell 3D Planet Assembly inside WorldModel
		local function mkSphere(name, mat, col, sz, trans, refl)
			local p = Instance.new("Part")
			p.Name = name; p.Shape = Enum.PartType.Ball; p.Material = mat; p.Color = col
			p.Size = sz; p.Transparency = trans or 0; p.Reflectance = refl or 0
			p.Anchored = true; p.CanCollide = false; p.CastShadow = false; p.Parent = wm
			return p
		end

		local coreSphere = mkSphere("CoreMagma", M.Neon, Color3.fromRGB(255, 148, 58), Vector3.new(8.78, 8.78, 8.78), 0, 0)
		local crustSphere = mkSphere("LithosphereCrust", M.Grass, Color3.fromRGB(58, 138, 72), Vector3.new(9.0, 9.0, 9.0), 0, 0.04)
		local oceanSphere = mkSphere("HydrosphereOcean", M.Glass, Color3.fromRGB(22, 114, 198), Vector3.new(9.14, 9.14, 9.14), 0.18, 0.32)
		local northCap = mkSphere("NorthPolarCap", M.Glacier, Color3.fromRGB(236, 248, 255), Vector3.new(5.2, 2.0, 5.2), 0.08, 0.15)
		local southCap = mkSphere("SouthPolarCap", M.Glacier, Color3.fromRGB(236, 248, 255), Vector3.new(5.2, 2.0, 5.2), 0.08, 0.15)

		-- 24 Fibonacci-Sphere Tangent-Aligned Continent & Mountain Plates
		local plates = {}
		local goldenAngle = math.pi * (3 - math.sqrt(5))
		for i = 1, 24 do
			local y = 1 - ((i - 0.5) / 24) * 2
			local rLat = math.sqrt(math.max(0, 1 - y * y))
			local theta = goldenAngle * i
			local dir = Vector3.new(math.cos(theta) * rLat, y * 0.86, math.sin(theta) * rLat).Unit
			local plate = mkSphere("TectonicPlate" .. i, M.Rock, Color3.fromRGB(122, 118, 108), Vector3.new(2.8, 2.1, 0.85), 0, 0)
			local ridge = mkSphere("MountainSpine" .. i, M.Slate, Color3.fromRGB(145, 142, 136), Vector3.new(1.5, 0.9, 0.95), 0, 0)
			plates[i] = {dir = dir, plate = plate, ridge = ridge, elevSeed = (i % 7) / 7, yaw = (i * 47) % 360}
		end

		-- 6 Rim-Ringed Volcanic / Impact Calderas (Outer Raised Rim Cylinder + Glowing/Shadow Pit)
		local calderas = {}
		local calDirs = {
			Vector3.new(0.88, 0.22, 0.42).Unit, Vector3.new(-0.74, -0.35, 0.57).Unit, Vector3.new(0.24, 0.52, -0.82).Unit,
			Vector3.new(-0.42, 0.48, 0.77).Unit, Vector3.new(0.62, -0.58, -0.52).Unit, Vector3.new(-0.91, 0.12, -0.39).Unit,
		}
		for i, dir in ipairs(calDirs) do
			local rim = Instance.new("Part")
			rim.Shape = Enum.PartType.Cylinder; rim.Material = M.Basalt; rim.Color = Color3.fromRGB(68, 66, 74)
			rim.Size = Vector3.new(0.32, 1.55, 1.55); rim.Anchored = true; rim.CanCollide = false; rim.Parent = wm
			local pit = Instance.new("Part")
			pit.Shape = Enum.PartType.Cylinder; pit.Material = M.Neon; pit.Color = Color3.fromRGB(255, 98, 28)
			pit.Size = Vector3.new(0.36, 0.95, 0.95); pit.Anchored = true; pit.CanCollide = false; pit.Parent = wm
			calderas[i] = {dir = dir, rim = rim, pit = pit}
		end

		-- Counter-Rotating Atmosphere Shell + 3 Trade-Wind Cumulus Cloud Belts
		local atmoShell = mkSphere("AtmoShell", M.ForceField, Color3.fromRGB(92, 184, 255), Vector3.new(9.86, 9.86, 9.86), 0.56, 0)
		local outerHalo = mkSphere("OuterAtmosphereHalo", M.ForceField, Color3.fromRGB(92, 184, 255), Vector3.new(10.35, 10.35, 10.35), 0.65, 0)
		local stormVortex = Instance.new("Part")
		stormVortex.Name = "StormVortex"; stormVortex.Shape = Enum.PartType.Cylinder; stormVortex.Material = M.Neon
		stormVortex.Color = Color3.fromRGB(255, 142, 82); stormVortex.Size = Vector3.new(0.28, 1.85, 1.85)
		stormVortex.Transparency = 0.35; stormVortex.Anchored = true; stormVortex.CanCollide = false; stormVortex.Parent = wm

		local auroraRing = Instance.new("Part")
		auroraRing.Name = "PolarAuroraCrown"; auroraRing.Shape = Enum.PartType.Cylinder; auroraRing.Material = M.Neon
		auroraRing.Color = Color3.fromRGB(112, 255, 218); auroraRing.Size = Vector3.new(0.12, 4.4, 4.4)
		auroraRing.Transparency = 0.52; auroraRing.Anchored = true; auroraRing.CanCollide = false; auroraRing.Parent = wm

		local cloudBelts = {}
		for i, latOff in ipairs({-1.65, 0.15, 1.75}) do
			local cb = Instance.new("Part")
			cb.Shape = Enum.PartType.Cylinder; cb.Material = M.SmoothPlastic; cb.Color = Color3.fromRGB(246, 250, 255)
			local diam = (i == 2) and 9.58 or 8.92
			cb.Size = Vector3.new(0.55, diam, diam); cb.Transparency = 0.62; cb.Anchored = true; cb.CanCollide = false; cb.Parent = wm
			cloudBelts[i] = {part = cb, latY = latOff, baseDiam = diam}
		end

		-- 3-Band Cassini Planetary Ring System (Inner Dusty, Main Bright, Outer Faint)
		local rings = {}
		for i, rSpec in ipairs({{d = 13.4, th = 0.10, tr = 0.46, mat = M.Glass}, {d = 16.4, th = 0.07, tr = 0.30, mat = M.Neon}, {d = 19.0, th = 0.05, tr = 0.64, mat = M.SmoothPlastic}}) do
			local rp = Instance.new("Part")
			rp.Shape = Enum.PartType.Cylinder; rp.Material = rSpec.mat; rp.Color = Color3.fromRGB(218, 194, 168)
			rp.Size = Vector3.new(rSpec.th, rSpec.d, rSpec.d); rp.Transparency = rSpec.tr; rp.Anchored = true; rp.CanCollide = false; rp.Parent = wm
			rings[i] = {part = rp, baseTrans = rSpec.tr}
		end

		-- Dual Keplerian Natural Satellites (Major Moon + Captured Moonlet)
		local moonMajor = mkSphere("MajorMoon", M.Slate, Color3.fromRGB(178, 182, 192), Vector3.new(1.48, 1.48, 1.48), 0, 0.05)
		local moonMinor = mkSphere("CapturedMoonlet", M.Rock, Color3.fromRGB(142, 136, 132), Vector3.new(0.78, 0.62, 0.92), 0, 0)

		-- Telescope Viewfinder Corner Brackets & Scientific Telemetry Overlay
		for _, br in ipairs({{ax=0,ay=0,px=10,py=10,tx="┌"},{ax=1,ay=0,px=-10,py=10,tx="┐"},{ax=0,ay=1,px=10,py=-10,tx="└"},{ax=1,ay=1,px=-10,py=-10,tx="┘"}}) do
			makeText(vfFrame, br.tx, 16, C.planet, FONT_BOLD, {
				AnchorPoint = Vector2.new(br.ax, br.ay), Position = UDim2.new(br.ax, br.px, br.ay, br.py),
				Size = UDim2.fromOffset(16, 16), TextXAlignment = Enum.TextXAlignment.Center, TextTransparency = 0.35, ZIndex = 6,
			})
		end
		local reticleCircle = new("Frame", vfFrame, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(204, 204), BackgroundTransparency = 1, ZIndex = 5})
		corner(reticleCircle, 999); stroke(reticleCircle, C.planetPale, 0.80, 1)

		local hudLeft = makeText(vfFrame, "", 10, C.planetPale, FONT_BOLD, {Position = UDim2.fromOffset(24, 12), Size = UDim2.fromOffset(250, 56), TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.25, ZIndex = 6})
		local hudRight = makeText(vfFrame, "", 10, C.muted, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -24, 0, 12), Size = UDim2.fromOffset(250, 56), TextXAlignment = Enum.TextXAlignment.Right, TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.25, ZIndex = 6})
		local hudBottom = makeText(vfFrame, "", 9, C.dim, FONT_BOLD, {Position = UDim2.new(0, 24, 1, -24), Size = UDim2.new(1, -240, 0, 16), ZIndex = 6})

		-- Quick Camera Preset Pills inside Viewfinder bottom-right
		local camBar = new("Frame", vfFrame, {AnchorPoint = Vector2.new(1, 1), Position = UDim2.new(1, -18, 1, -10), Size = UDim2.fromOffset(214, 22), BackgroundTransparency = 1, ZIndex = 7})
		new("UIGridLayout", camBar, {CellSize = UDim2.fromOffset(50, 22), CellPadding = UDim2.fromOffset(4, 0), SortOrder = Enum.SortOrder.LayoutOrder})
		for idx, cp in ipairs({{id="Spin",lbl="SPIN",p=0.16,z=16.8},{id="Eq",lbl="EQUAT",p=0.0,z=14.6},{id="Pole",lbl="POLAR",p=1.12,z=17.5},{id="Wide",lbl="RINGS",p=0.38,z=21.5}}) do
			local cb = makeButton(camBar, cp.lbl, {LayoutOrder = idx}, {selected = (cp.id == "Spin"), tone = "planet", textSize = 8, radius = 5})
			ui.planetCamBtns[cp.id] = cb
			onClick(cb, function()
				if cp.id == "Spin" then planet.autoSpin = not planet.autoSpin
				else planet.pitch = cp.p; planet.zoom = cp.z; pCam.CFrame = CFrame.new(Vector3.new(0, 1.8, planet.zoom), Vector3.zero) end
				setButtonState(ui.planetCamBtns.Spin, {selected = planet.autoSpin})
			end)
		end

		vp.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				planet.dragging = true; planet.lastMouse = Vector2.new(input.Position.X, input.Position.Y)
			end
		end)
		vp.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseWheel then
				planet.zoom = clamp(planet.zoom - input.Position.Z * 1.35, 11.8, 24.5)
				pCam.CFrame = CFrame.new(Vector3.new(0, 1.8, planet.zoom), Vector3.zero)
			end
		end)

		ui.planet = {
			vp = vp, pCam = pCam, nebA = nebA, nebB = nebB, outerCorona = outerCorona,
			rayleighRing = rayleighRing, rayleighStroke = rayleighStroke, rayleighGrad = rayleighGrad,
			core = coreSphere, crust = crustSphere, ocean = oceanSphere, northCap = northCap, southCap = southCap,
			plates = plates, calderas = calderas, atmoShell = atmoShell, outerHalo = outerHalo, stormVortex = stormVortex, auroraRing = auroraRing,
			cloudBelts = cloudBelts, rings = rings, moonMajor = moonMajor, moonMinor = moonMinor,
			hudLeft = hudLeft, hudRight = hudRight, hudBottom = hudBottom,
		}

		fn.updatePlanetVisuals = function()
			local arch = fn.getPlanetSpec(planet.archetype)
			local volc, cryo, flora = clamp(planet.volcanic, 0, 1), clamp(planet.cryo, 0, 1), clamp(planet.flora, 0, 1)
			local hydro, atmoD, relief = clamp(planet.hydro, 0, 1), clamp(planet.atmo, 0, 1), clamp(planet.relief, 0, 1)

			local crustCol = arch.crustCol:Lerp(Color3.fromRGB(46, 152, 72), flora * 0.42):Lerp(Color3.fromRGB(74, 72, 78), volc * 0.62):Lerp(Color3.fromRGB(214, 238, 252), cryo * 0.58)
			local ridgeCol = arch.ridgeCol:Lerp(Color3.fromRGB(255, 96, 30), volc * 0.72):Lerp(Color3.fromRGB(238, 248, 255), cryo * 0.55)
			local atmoCol = arch.atmoCol:Lerp(Color3.fromRGB(255, 106, 46), volc * 0.62):Lerp(Color3.fromRGB(165, 232, 255), cryo * 0.45)

			nebA.BackgroundColor3 = arch.nebulaCol:Lerp(atmoCol, 0.35)
			nebB.BackgroundColor3 = crustCol:Lerp(Color3.fromRGB(88, 54, 148), 0.45)

			coreSphere.Color = arch.coreCol:Lerp(Color3.fromRGB(255, 86, 22), volc * 0.75)
			crustSphere.Material = (volc > 0.64) and M.CrackedLava or ((cryo > 0.74) and M.Glacier or arch.crustMat)
			crustSphere.Color = crustCol
			crustSphere.Transparency = (volc > 0.48) and clamp((volc - 0.48) * 0.52, 0, 0.30) or 0

			-- Hydrosphere submerges or exposes continent plates naturally!
			if hydro <= 0.03 then
				oceanSphere.Transparency = 1
			else
				local oDiam = 8.84 + hydro * 0.48
				oceanSphere.Size = Vector3.new(oDiam, oDiam, oDiam)
				oceanSphere.Color = (volc > 0.68) and Color3.fromRGB(255, 84, 22) or arch.oceanCol:Lerp(Color3.fromRGB(152, 220, 252), cryo * 0.5)
				oceanSphere.Material = (volc > 0.68) and M.Neon or M.Glass
				oceanSphere.Transparency = (volc > 0.68) and 0.14 or clamp(0.38 - hydro * 0.20, 0.10, 0.52)
			end

			-- Polar Glacier Caps
			local capAlpha = cryo > 0.06 and clamp(1 - cryo * 1.18, 0.02, 0.88) or 1
			northCap.Transparency, southCap.Transparency = capAlpha, capAlpha
			local capW, capH = 3.2 + cryo * 4.1, 1.2 + cryo * 2.4
			northCap.Size, southCap.Size = Vector3.new(capW, capH, capW), Vector3.new(capW, capH, capW)

			-- 24 Fibonacci Continent & Mountain Plates
			local pRng = Random.new(planet.seed)
			for i, pl in ipairs(plates) do
				local nVal = (math.noise(pl.dir.X * 1.8 + planet.seed * 0.01, pl.dir.Y * 1.8, pl.dir.Z * 1.8) + 1) * 0.5
				local visible = nVal > (hydro * 0.68 - 0.08)
				pl.plate.Transparency = visible and 0 or 1
				pl.ridge.Transparency = (visible and relief > 0.22) and 0 or 1
				if visible then
					local wScale = 0.72 + pRng:NextNumber(0, 0.55) + (1 - hydro) * 0.32
					local hThick = 0.65 + relief * 0.95
					pl.plate.Size = Vector3.new(2.65 * wScale, 1.95 * wScale, hThick)
					pl.plate.Material = (cryo > 0.75) and M.Snow or arch.crustMat
					pl.plate.Color = (cryo > 0.65 and math.abs(pl.dir.Y) > 0.42) and Color3.fromRGB(232, 244, 255) or crustCol
					pl.ridge.Size = Vector3.new(1.35 * wScale, 0.78 * wScale, hThick + relief * 0.55)
					pl.ridge.Material = (volc > 0.58 and i % 3 == 0) and M.Neon or arch.plateMat
					pl.ridge.Color = (volc > 0.58 and i % 3 == 0) and Color3.fromRGB(255, 98, 28) or ridgeCol
				end
			end

			-- 6 Rim-Ringed Calderas
			local calShow = volc > 0.18 or planet.archetype == "Fractured" or planet.archetype == "Ashen"
			for i, cd in ipairs(calderas) do
				local active = calShow and (i <= math.ceil((volc + 0.35) * 5))
				cd.rim.Transparency = active and 0 or 1
				cd.pit.Transparency = active and 0 or 1
				if active then
					cd.rim.Color = crustCol:Lerp(Color3.fromRGB(48, 46, 54), 0.55)
					cd.pit.Material = (volc > 0.35) and M.Neon or M.Slate
					cd.pit.Color = (volc > 0.35) and Color3.fromRGB(255, 96, 26) or Color3.fromRGB(36, 38, 44)
				end
			end

			-- Atmosphere, Cloud Belts, Halo & Rayleigh Crescent
			local aDiam = 9.54 + atmoD * 0.68
			atmoShell.Size = Vector3.new(aDiam, aDiam, aDiam)
			atmoShell.Color = atmoCol
			atmoShell.Transparency = (atmoD <= 0.04) and 1 or clamp(0.92 - atmoD * 0.50, 0.34, 0.92)

			outerHalo.Color = atmoCol
			outerHalo.Transparency = (atmoD <= 0.04) and 1 or clamp(0.92 - atmoD * 0.45, 0.38, 0.94)
			stormVortex.Color = (volc > 0.6) and Color3.fromRGB(255, 84, 24) or ((cryo > 0.65) and Color3.fromRGB(188, 238, 255) or Color3.fromRGB(255, 154, 92))
			stormVortex.Transparency = (atmoD <= 0.12) and 1 or 0.32
			auroraRing.Color = (volc > 0.6) and Color3.fromRGB(255, 108, 52) or ((planet.auroraActive or cryo > 0.4) and Color3.fromRGB(118, 255, 224) or atmoCol)
			auroraRing.Transparency = (atmoD <= 0.10) and 1 or (planet.auroraActive and 0.28 or 0.56)

			for _, cb in ipairs(cloudBelts) do
				cb.part.Color = Color3.new(1, 1, 1):Lerp(atmoCol, 0.35)
				cb.part.Transparency = (atmoD <= 0.14) and 1 or clamp(0.94 - atmoD * 0.52, 0.42, 0.94)
			end

			local cSize = round(166 + atmoD * 44 + planet.haze * 18)
			outerCorona.Size = UDim2.fromOffset(cSize, cSize)
			outerCorona.BackgroundColor3 = atmoCol
			outerCorona.BackgroundTransparency = clamp(0.94 - atmoD * 0.32, 0.56, 0.96)
			rayleighStroke.Color = atmoCol:Lerp(Color3.new(1, 1, 1), 0.25)
			rayleighStroke.Transparency = (atmoD <= 0.05) and 0.92 or clamp(0.68 - atmoD * 0.52, 0.10, 0.85)

			-- 3-Band Cassini Rings & Moons
			for _, r in ipairs(rings) do
				r.part.Transparency = planet.rings and r.baseTrans or 1
				r.part.Color = atmoCol:Lerp(Color3.fromRGB(228, 204, 176), 0.58)
			end
			moonMajor.Transparency = (planet.moons >= 1) and 0 or 1
			moonMinor.Transparency = (planet.moons >= 2) and 0 or 1

			-- Sun Illumination Direction + Rayleigh Crescent Rotation
			local sunAng = ((planet.solarTime - 6) / 24) * math.pi * 2
			vp.LightDirection = Vector3.new(-math.cos(sunAng), -0.28 - math.sin(sunAng) * 0.45, -0.58).Unit
			vp.LightColor = Color3.fromRGB(255, 246, 228):Lerp(atmoCol, 0.28)
			vp.Ambient = crustCol:Lerp(Color3.fromRGB(46, 50, 66), 0.68)
			rayleighGrad.Rotation = math.deg(sunAng)

			local tempK = round(288 - cryo * 140 + volc * 430 + (atmoD - 0.42) * 68)
			hudLeft.Text = string.format("CLASS: %s\nSURF TEMP: %d°C (%d K)\nGRAVITY: %.2fg  ·  WIND: %d st/s", arch.badge, tempK - 273, tempK, planet.gravityG, round(planet.windSpeed))
			hudRight.Text = string.format("HYDRO: %d%%  |  ATMO: %.2f bar\nVOLCANIC: %d%%  |  CRYO: %d%%\nTILT: %.1f°  |  MOONS: %d", round(hydro * 100), atmoD * 2.2, round(volc * 100), round(cryo * 100), planet.tilt, planet.moons)
			hudBottom.Text = string.format("EXOWORLD: %s  ·  BIOSPHERE %d%%  ·  SOLAR %02d:%02d  ·  SEED #%d", string.upper(arch.name), round(flora * 100), math.floor(planet.solarTime), math.floor((planet.solarTime % 1) * 60), planet.seed)

			fn.syncPlanetToWorld()
			if fn.refreshHistoryUI then fn.refreshHistoryUI() end
		end

		fn.applyPlanetArchetype = function(archId, announce)
			local arch = fn.getPlanetSpec(archId)
			planet.archetype = arch.id
			planet.hydro, planet.atmo, planet.haze = arch.hydro, arch.atmo, arch.haze
			planet.volcanic, planet.cryo, planet.relief, planet.flora = arch.volcanic, arch.cryo, arch.relief, arch.flora
			planet.gravityG, planet.windSpeed = arch.gravityG, arch.windSpeed
			planet.rings, planet.moons, planet.spinRpm, planet.tilt, planet.solarTime = arch.rings, arch.moons, arch.spinRpm, arch.tilt, arch.solarTime
			for k, sl in pairs(ui.planetSliders) do sl.refresh(planet[k], true) end
			if ui.planetSwitches.rings then ui.planetSwitches.rings.set(planet.rings, true) end
			for id, card in pairs(ui.planetCards) do
				local sel = (id == arch.id)
				setButtonState(card.btn, {selected = sel})
				card.title.TextColor3 = sel and C.planetPale or C.text
			end
			fn.updatePlanetVisuals()
			if planet.liveSkySync or planet.liveGravitySync then fn.syncPlanetToWorld() end
			if planet.autoSkySync then fn.updatePlanetSkybox() end
			if planet.audioEnabled then fn.updatePlanetAudio() end
			if announce then setStatus("PLANETARY ARCHETYPE", arch.name .. "  ·  " .. arch.desc, C.planetPale) end
		end

		local vfActions = makeGrid(vfSec, 5, 36, 2, 8)
		local randPlanetBtn = makeButton(vfActions, "🎲  SYNTHESIZE", {LayoutOrder = 1}, {tone = "planet", special = true, textSize = 9})
		local syncNowBtn = makeButton(vfActions, "☀  SYNC WORLD", {LayoutOrder = 2}, {tone = "planet", textSize = 9})
		local terraformBtn = makeButton(vfActions, "✦  TERRAFORM", {LayoutOrder = 3}, {selected = true, tone = "planet", special = true, textSize = 9})
		local copyPlanetBtn = makeButton(vfActions, "📋  COPY DATA", {LayoutOrder = 4}, {tone = "planet", textSize = 9})
		local resetPhysBtn = makeButton(vfActions, "⤾  RESET PHYS", {LayoutOrder = 5}, {tone = "planet", textSize = 9})

		onClick(copyPlanetBtn, function()
			local arch = fn.getPlanetSpec(planet.archetype)
			local code = string.format("PLANET:%s:S%d:G%.2f:H%.2f:A%.2f:V%.2f", arch.id, planet.seed, planet.gravityG, planet.hydro, planet.atmo, planet.volcanic)
			setStatus("PLANET DATA COPIED", code, C.planetPale)
			playUISound("special", 1.08, 0.9)
		end)
		onClick(resetPhysBtn, function()
			fn.restoreOriginalEnvironment()
			planet.liveGravitySync, planet.liveSkySync = false, false
			ui.planetSwitches.gravSync.set(false, true); ui.planetSwitches.skySync.set(false, true)
			setStatus("PHYSICS RESTORED", "Restored standard Roblox gravity (196.2) and lighting.", C.planetPale)
		end)

		-- Category 1: Planetary Class & Lithosphere
		local cat1 = makeSection(page, "Category 1 · Planetary class & lithosphere", 2, "14 Exoworld Archetypes", C.planet)
		local archGrid = makeGrid(cat1, 4, 58, 1, 8)
		for idx, arch in ipairs(PLANET_ARCHETYPES) do
			local card = makeButton(archGrid, "", {LayoutOrder = idx}, {selected = (arch.id == planet.archetype), tone = "planet"})
			local sw = new("Frame", card, {Position = UDim2.fromOffset(9, 9), Size = UDim2.fromOffset(11, 11), BackgroundColor3 = arch.crustCol, BorderSizePixel = 0})
			corner(sw, 6); stroke(sw, arch.atmoCol, 0.2)
			local tLbl = makeText(card, string.upper(arch.name), 10, (arch.id == planet.archetype) and C.planetPale or C.text, FONT_BOLD, {Position = UDim2.fromOffset(25, 6), Size = UDim2.new(1, -30, 0, 15), TextTruncate = Enum.TextTruncate.AtEnd})
			makeText(card, arch.desc, 8, C.muted, FONT, {Position = UDim2.fromOffset(9, 25), Size = UDim2.new(1, -16, 0, 26), TextWrapped = true})
			ui.planetCards[arch.id] = {btn = card, title = tLbl}
			onClick(card, function() playUISound("special", 1.04, 0.85); fn.applyPlanetArchetype(arch.id, true) end)
		end

		local lithoGrid = makeGrid(cat1, 4, 54, 2, 8)
		local function mkPlanetSlider(parent, key, label, minV, maxV, stepV, defV, ord, tone)
			local sl = makeCustomSlider(parent, {
				label = label, min = minV, max = maxV, step = stepV, default = defV,
				get = function() return planet[key] end,
				set = function(v) planet[key] = v; fn.updatePlanetVisuals() end,
			}, ord, tone or "planet")
			ui.planetSliders[key] = sl
		end
		mkPlanetSlider(lithoGrid, "relief",   "Tectonic relief",    0.05, 1.00, 0.02, 0.52, 1)
		mkPlanetSlider(lithoGrid, "volcanic", "Volcanic fissures",  0.00, 1.00, 0.02, 0.06, 2)
		mkPlanetSlider(lithoGrid, "cryo",     "Polar glaciation",   0.00, 1.00, 0.02, 0.26, 3)
		mkPlanetSlider(lithoGrid, "seed",     "Continent seed",     1,    9999, 1,    4082, 4)

		-- Category 2: Atmosphere, Sky & Celestial Optics
		local cat2 = makeSection(page, "Category 2 · Atmosphere, sky & celestial optics", 3, "Live Roblox Sky & Lighting Sync", C.sky)
		local atmoSwGrid = makeGrid(cat2, 2, 56, 1, 8)
		ui.planetSwitches.skySync = makeModularSwitch(atmoSwGrid, "Live Sync Atmosphere & Sky to World",
			"Dynamically updates Lighting, Atmosphere density/haze, horizon color & grading as you adjust planet sliders.",
			"LIVE SKY", planet.liveSkySync, "planet", 1, function(on)
				planet.liveSkySync = on
				if on then fn.syncPlanetToWorld(); setPill("PLANET SYNC", C.planet)
				else fn.restoreOriginalEnvironment(); if not state.busy then setPill("CLIENT READY", C.accent) end end
			end)
		ui.planetSwitches.autoSky = makeModularSwitch(atmoSwGrid, "Auto-Switch Skybox to Planet Archetype",
			"Automatically changes Roblox Skybox cubemaps (Volcanic, Ice, Remnant, Earthly, Mars) to adapt to the active planet.",
			"AUTO SKY", planet.autoSkySync, "sky", 2, function(on)
				planet.autoSkySync = on
				if on then fn.updatePlanetSkybox()
				else
					local ps = Lighting:FindFirstChild("SiriusPlanetSky")
					if ps then ps:Destroy() end
					if planet.hiddenOldSky and planet.hiddenOldSky.Parent == nil then
						planet.hiddenOldSky.Parent = Lighting; planet.hiddenOldSky = nil
					end
				end
			end)
		ui.planetSwitches.audio = makeModularSwitch(atmoSwGrid, "Planetary Ambience & Seismic Quakes",
			"Plays atmospheric soundscapes with periodic 5-10s volcanic rumbles, screen shake & 3-6s crackles.",
			"WORLD AUDIO", planet.audioEnabled, "rose", 3, function(on)
				planet.audioEnabled = on
				if on then fn.updatePlanetAudio()
				else fn.stopPlanetAudio() end
			end)
		ui.planetSwitches.rings = makeModularSwitch(atmoSwGrid, "3-Band Cassini Ring System",
			"Renders concentric ice, mineral & dust rings around the globe in the 3D viewfinder.",
			"CASSINI RINGS", planet.rings, "planet", 4, function(on) planet.rings = on; fn.updatePlanetVisuals() end)
		ui.planetSwitches.aurora = makeModularSwitch(atmoSwGrid, "Aurora Borealis Celestial Optics",
			"Illuminates polar ionosphere ribbons and shifts atmospheric Rayleigh horizon scattering.",
			"AURORA", planet.auroraActive, "sky", 5, function(on) planet.auroraActive = on; fn.updatePlanetVisuals(); fn.syncPlanetToWorld() end)

		local atmoGrid = makeGrid(cat2, 3, 54, 2, 8)
		mkPlanetSlider(atmoGrid, "atmo",      "Atmosphere density", 0.00, 1.00, 0.02, 0.46, 1, "sky")
		mkPlanetSlider(atmoGrid, "haze",      "Horizon scatter/haze",0.00, 1.00, 0.02, 0.22, 2, "sky")
		mkPlanetSlider(atmoGrid, "solarTime", "Solar time (hours)", 0.0,  23.8, 0.2,  13.5, 3, "sky")
		mkPlanetSlider(atmoGrid, "tilt",      "Axial tilt (°)",     0.0,  60.0, 0.5,  23.5, 4, "sky")
		mkPlanetSlider(atmoGrid, "spinRpm",   "Spin speed (RPM)",   0.0,  8.0,  0.2,  2.2,  5, "sky")
		mkPlanetSlider(atmoGrid, "moons",     "Orbiting moons",     0,    2,    1,    1,    6, "sky")

		-- Category 3: Planetary Physics & Biosphere
		local cat3 = makeSection(page, "Category 3 · Planetary physics & biosphere", 4, "Gravity, Drag, Wind & Ocean Dynamics", C.biome)
		local physSwGrid = makeGrid(cat3, 2, 56, 1, 8)
		ui.planetSwitches.gravSync = makeModularSwitch(physSwGrid, "Live Sync Surface Gravity & Wind to World",
			"Applies planetary G-force to workspace.Gravity and atmospheric circulation to workspace.GlobalWind.",
			"PHYSICS", planet.liveGravitySync, "biome", 1, function(on)
				planet.liveGravitySync = on
				if on then fn.syncPlanetToWorld() else fn.restoreOriginalEnvironment() end
			end)
		ui.planetSwitches.coriolis = makeModularSwitch(physSwGrid, "Planetary Coriolis Wind Drift",
			"Applies continuous rotational wind vectors to player locomotion based on planet spin RPM.",
			"CORIOLIS", planet.orbitalDrift, "cyan", 2, function(on) planet.orbitalDrift = on; fn.syncPlanetToWorld() end)
		ui.planetSwitches.spaceHop = makeModularSwitch(physSwGrid, "Low-G Lunar Space Hop",
			"Enhances character jump power and dampens falling velocity for low-gravity exoworld exploration.",
			"LUNAR HOP", planet.spaceFloat, "purple", 3, function(on) planet.spaceFloat = on; fn.syncPlanetToWorld() end)
		ui.planetSwitches.tides = makeModularSwitch(physSwGrid, "Dynamic Hydrosphere Tidal Swell",
			"Simulates lunar gravitational ocean tides by smoothly oscillating sea level over time.",
			"TIDES", planet.tideSwell > 0, "blue", 4, function(on) planet.tideSwell = on and 8.0 or 0.0 end)

		local physGrid = makeGrid(cat3, 3, 54, 2, 8)
		mkPlanetSlider(physGrid, "gravityG",  "Surface gravity (g)", 0.10, 3.00, 0.05, 1.00, 1, "biome")
		mkPlanetSlider(physGrid, "atmoDrag",  "Atmospheric drag",    0.20, 3.00, 0.10, 1.00, 2, "biome")
		mkPlanetSlider(physGrid, "solarSpeed","Solar cycle speed",   0.0,  5.0,  0.2,  1.0,  3, "sky")
		mkPlanetSlider(physGrid, "hydro",     "Hydrosphere ocean",   0.00, 1.00, 0.02, 0.64, 4, "blue")
		mkPlanetSlider(physGrid, "flora",     "Biosphere / flora",   0.00, 1.00, 0.02, 0.82, 5, "biome")
		mkPlanetSlider(physGrid, "windSpeed", "Global wind (st/s)",  0,    80,   1,    14,   6, "cyan")

		onClick(randPlanetBtn, function()
			local pick = PLANET_ARCHETYPES[math.random(1, #PLANET_ARCHETYPES)]
			planet.seed = math.random(100, 9999)
			fn.applyPlanetArchetype(pick.id, false)
			planet.hydro = clamp(pick.hydro + (math.random() - 0.5) * 0.30, 0, 1)
			planet.atmo = clamp(pick.atmo + (math.random() - 0.5) * 0.25, 0.04, 0.96)
			planet.volcanic = clamp(pick.volcanic + (math.random() - 0.5) * 0.28, 0, 1)
			planet.rings = math.random() < 0.5
			for k, sl in pairs(ui.planetSliders) do sl.refresh(planet[k], true) end
			ui.planetSwitches.rings.set(planet.rings, true)
			fn.updatePlanetVisuals()
			setStatus("EXOWORLD SYNTHESIZED", string.format("Rolled %s (Seed #%d · %.2fg · %d%% Hydro).", pick.name, planet.seed, planet.gravityG, round(planet.hydro * 100)), C.planetPale)
		end)

		onClick(syncNowBtn, function()
			planet.liveSkySync, planet.liveGravitySync, planet.autoSkySync = true, true, true
			ui.planetSwitches.skySync.set(true, true); ui.planetSwitches.gravSync.set(true, true)
			if ui.planetSwitches.autoSky then ui.planetSwitches.autoSky.set(true, true) end
			fn.syncPlanetToWorld()
			setPill("PLANET SYNC", C.planet)
			setStatus("CELESTIAL OPTICS APPLIED", "Synced Skybox, Atmosphere, Color Grading, Wind & Gravity to exoworld.", C.planetPale)
		end)

		onClick(terraformBtn, function()
			if state.busy then return end
			local arch = fn.getPlanetSpec(planet.archetype)
			local chosenStyle = arch.mapStyle
			if planet.volcanic > 0.65 then chosenStyle = "Volcanic"
			elseif planet.cryo > 0.72 then chosenStyle = "Fjords"
			elseif planet.hydro > 0.80 then chosenStyle = "Atoll"
			elseif planet.hydro < 0.14 and planet.volcanic < 0.30 then chosenStyle = "Badlands" end

			fn.selectStyle(chosenStyle, true)
			setValue("Seed", planet.seed * 13 + 7, true, true)
			setValue("MaxHeight", 72 + planet.relief * 240, true, true)
			setValue("RidgeSharpness", 0.75 + planet.relief * 0.95, true, true)
			setValue("MoistureShift", (planet.flora - 0.45) * 1.1, true, true)
			setValue("SnowLine", clamp(1.05 - planet.cryo * 0.58, 0.36, 1.05), true, true)
			state.waterEnabled = planet.hydro > 0.06
			setValue("SeaLevel", round(8 + planet.hydro * 64), true, true)
			fn.selectWaterPreset(arch.waterPreset, true)
			fn.selectMaterialTheme((planet.volcanic > 0.55 and "Scorched") or (planet.cryo > 0.65 and "Frost") or arch.matTheme, true)

			labs.treesEnabled = planet.flora > 0.24
			labs.spreadIntensity = clamp(planet.flora * 1.6, 0.2, 2.2)
			if ui.labsTreeSwitch then ui.labsTreeSwitch.set(labs.treesEnabled, true) end
			labs.cloudsEnabled = planet.atmo > 0.30
			labs.cloudTransparency = clamp(0.88 - planet.atmo * 0.45, 0.25, 0.88)
			labs.cloudTint = arch.atmoCol:Lerp(Color3.new(1, 1, 1), 0.55)
			if ui.labsCloudSwitch then ui.labsCloudSwitch.set(labs.cloudsEnabled, true) end
			fn.syncVolumetricClouds(currentConfig())

			planet.liveSkySync, planet.liveGravitySync, planet.autoSkySync = true, true, true
			ui.planetSwitches.skySync.set(true, true); ui.planetSwitches.gravSync.set(true, true)
			if ui.planetSwitches.autoSky then ui.planetSwitches.autoSky.set(true, true) end
			fn.syncPlanetToWorld()
			requestPreview(true)
			fn.startGeneration()
		end)
		end
		buildPlanetPage()
	end

	-- PAGE: SPACE (Orbital Radar & Sub-Satellite Earth Tracking)
	do
		local function buildSpacePage()
			local page = createPage("Space")
		local orbitSec = makeSection(page, "Orbital Radar & Sub-Satellite Earth Tracking", 1, "Real-Time Keplerian Orbit · Surface Ground Track · Multi-Cam", Color3.fromRGB(130, 175, 255))

		local vfFrame = new("Frame", orbitSec, {
			Size = UDim2.new(1, 0, 0, 280), BackgroundColor3 = Color3.fromRGB(4, 7, 14),
			BorderSizePixel = 0, ClipsDescendants = true, LayoutOrder = 1,
		})
		corner(vfFrame, 10)
		local _, vfRimGrad = specularStroke(vfFrame, Color3.fromRGB(130, 175, 255), Color3.fromRGB(45, 75, 135), C.strokeLo, 0.25, 45)
		table.insert(ui.sheenGrads, vfRimGrad)

		-- Sci-fi Background Coordinate Grid & Radar Rings
		local gridCanvas = new("Frame", vfFrame, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 1})
		for i = 1, 5 do
			new("Frame", gridCanvas, {
				Position = UDim2.new(0, 0, i * 0.165, 0), Size = UDim2.new(1, 0, 0, 1),
				BackgroundColor3 = Color3.fromRGB(38, 64, 112), BackgroundTransparency = 0.76, BorderSizePixel = 0,
			})
			new("Frame", gridCanvas, {
				Position = UDim2.new(i * 0.165, 0, 0, 0), Size = UDim2.new(0, 1, 1, 0),
				BackgroundColor3 = Color3.fromRGB(38, 64, 112), BackgroundTransparency = 0.76, BorderSizePixel = 0,
			})
		end

		for _, rad in ipairs({70, 110, 150}) do
			local rng = new("Frame", gridCanvas, {
				AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(rad * 2, rad * 2), BackgroundTransparency = 1, BorderSizePixel = 0,
			})
			corner(rng, 999)
			stroke(rng, Color3.fromRGB(60, 105, 185), 0.78, 1)
		end

		-- ViewportFrame with 3D Earth, Orbit Ring, Satellite & Nadir Beacon
		local vp = new("ViewportFrame", vfFrame, {
			Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 2,
			Ambient = Color3.fromRGB(45, 52, 70), LightColor = Color3.fromRGB(255, 250, 240), LightDirection = Vector3.new(-1, -0.4, -0.8),
		})
		local wm = Instance.new("WorldModel"); wm.Parent = vp
		local cam = Instance.new("Camera"); cam.FieldOfView = 36; cam.CFrame = CFrame.new(Vector3.new(0, 14, 28), Vector3.zero); cam.Parent = vp
		vp.CurrentCamera = cam

		-- 3D Earth in Space Radar
		local earthBall = Instance.new("Part")
		earthBall.Name = "RadarEarth"; earthBall.Shape = Enum.PartType.Ball; earthBall.Material = Enum.Material.Glass
		earthBall.Color = Color3.fromRGB(24, 104, 188); earthBall.Size = Vector3.new(9.2, 9.2, 9.2)
		earthBall.Anchored = true; earthBall.CanCollide = false; earthBall.Parent = wm

		local crustBall = Instance.new("Part")
		crustBall.Name = "Crust"; crustBall.Shape = Enum.PartType.Ball; crustBall.Material = Enum.Material.Grass
		crustBall.Color = Color3.fromRGB(48, 134, 62); crustBall.Size = Vector3.new(9.08, 9.08, 9.08)
		crustBall.Anchored = true; crustBall.CanCollide = false; crustBall.Parent = wm

		local radarClouds = Instance.new("Part")
		radarClouds.Name = "RadarClouds"; radarClouds.Shape = Enum.PartType.Ball; radarClouds.Material = Enum.Material.SmoothPlastic
		radarClouds.Color = Color3.fromRGB(245, 248, 255); radarClouds.Size = Vector3.new(9.38, 9.38, 9.38)
		radarClouds.Transparency = 0.65; radarClouds.Anchored = true; radarClouds.CanCollide = false; radarClouds.Parent = wm

		local atmosphereHalo = Instance.new("Part")
		atmosphereHalo.Name = "AtmoHalo"; atmosphereHalo.Shape = Enum.PartType.Ball; atmosphereHalo.Material = Enum.Material.ForceField
		atmosphereHalo.Color = Color3.fromRGB(115, 195, 255); atmosphereHalo.Size = Vector3.new(9.8, 9.8, 9.8)
		atmosphereHalo.Transparency = 0.65; atmosphereHalo.Anchored = true; atmosphereHalo.CanCollide = false; atmosphereHalo.Parent = wm

		-- 3D Orbital Trajectory Path (24 segmented nodes)
		local orbitNodes = {}
		local orbitRadius = 8.6
		for i = 1, 24 do
			local ang = (i / 24) * math.pi * 2
			local np = Instance.new("Part")
			np.Name = "OrbitNode" .. i; np.Shape = Enum.PartType.Block; np.Material = Enum.Material.Neon
			np.Color = (i % 2 == 0) and Color3.fromRGB(130, 205, 255) or Color3.fromRGB(60, 120, 220)
			np.Size = Vector3.new(0.18, 0.18, 0.95); np.Anchored = true; np.CanCollide = false; np.Parent = wm
			local nextAng = ((i + 1) / 24) * math.pi * 2
			local pA = Vector3.new(math.cos(ang) * orbitRadius, math.sin(ang) * 1.8, math.sin(ang) * orbitRadius)
			local pB = Vector3.new(math.cos(nextAng) * orbitRadius, math.sin(nextAng) * 1.8, math.sin(nextAng) * orbitRadius)
			np.CFrame = CFrame.new((pA + pB) * 0.5, pB)
			orbitNodes[i] = np
		end

		-- Keplerian Waypoints on Ring (Perigee & Apogee)
		local wpPerigee = Instance.new("Part"); wpPerigee.Name = "Perigee"; wpPerigee.Shape = Enum.PartType.Ball; wpPerigee.Material = Enum.Material.Neon; wpPerigee.Color = Color3.fromRGB(60, 255, 120); wpPerigee.Size = Vector3.new(0.44, 0.44, 0.44); wpPerigee.Anchored = true; wpPerigee.CanCollide = false; wpPerigee.Parent = wm
		local wpApogee = Instance.new("Part"); wpApogee.Name = "Apogee"; wpApogee.Shape = Enum.PartType.Ball; wpApogee.Material = Enum.Material.Neon; wpApogee.Color = Color3.fromRGB(60, 200, 255); wpApogee.Size = Vector3.new(0.44, 0.44, 0.44); wpApogee.Anchored = true; wpApogee.CanCollide = false; wpApogee.Parent = wm

		-- 3D Vessel Satellite Beacon
		local vesselSat = Instance.new("Part")
		vesselSat.Name = "Satellite"; vesselSat.Shape = Enum.PartType.Block; vesselSat.Material = Enum.Material.Neon
		vesselSat.Color = Color3.fromRGB(255, 235, 90); vesselSat.Size = Vector3.new(0.65, 0.45, 0.65)
		vesselSat.Anchored = true; vesselSat.CanCollide = false; vesselSat.Parent = wm

		local vesselLimb = Instance.new("Part")
		vesselLimb.Name = "SolarPanel"; vesselLimb.Shape = Enum.PartType.Block; vesselLimb.Material = Enum.Material.Neon
		vesselLimb.Color = Color3.fromRGB(75, 175, 255); vesselLimb.Size = Vector3.new(1.8, 0.08, 0.55)
		vesselLimb.Anchored = true; vesselLimb.CanCollide = false; vesselLimb.Parent = wm

		-- Sub-Satellite Ground Track Point (Nadir)
		local nadirBeacon = Instance.new("Part")
		nadirBeacon.Name = "Nadir"; nadirBeacon.Shape = Enum.PartType.Ball; nadirBeacon.Material = Enum.Material.Neon
		nadirBeacon.Color = Color3.fromRGB(255, 60, 80); nadirBeacon.Size = Vector3.new(0.55, 0.55, 0.55)
		nadirBeacon.Anchored = true; nadirBeacon.CanCollide = false; nadirBeacon.Parent = wm

		-- Nadir Laser Guide Line
		local nadirLine = Instance.new("Part")
		nadirLine.Name = "NadirLaser"; nadirLine.Shape = Enum.PartType.Cylinder; nadirLine.Material = Enum.Material.Neon
		nadirLine.Color = Color3.fromRGB(255, 65, 85); nadirLine.Transparency = 0.35
		nadirLine.Size = Vector3.new(4.2, 0.08, 0.08); nadirLine.Anchored = true; nadirLine.CanCollide = false; nadirLine.Parent = wm

		-- Modern Hairline Reticle & Corner Brackets Overlays (ZIndex 4)
		local hudOverlay = new("Frame", vfFrame, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 4})

		-- Corner Brackets
		makeText(hudOverlay, "┌", 18, Color3.fromRGB(130, 185, 255), FONT_BOLD, {Position = UDim2.fromOffset(8, 6), Size = UDim2.fromOffset(16, 16)})
		makeText(hudOverlay, "┐", 18, Color3.fromRGB(130, 185, 255), FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -8, 0, 6), Size = UDim2.fromOffset(16, 16), TextXAlignment = Enum.TextXAlignment.Right})
		makeText(hudOverlay, "└", 18, Color3.fromRGB(130, 185, 255), FONT_BOLD, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 8, 1, -6), Size = UDim2.fromOffset(16, 16)})
		makeText(hudOverlay, "┘", 18, Color3.fromRGB(130, 185, 255), FONT_BOLD, {AnchorPoint = Vector2.new(1, 1), Position = UDim2.new(1, -8, 1, -6), Size = UDim2.fromOffset(16, 16), TextXAlignment = Enum.TextXAlignment.Right})

		-- Reticle Crosshairs at center
		new("Frame", hudOverlay, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(28, 1), BackgroundColor3 = Color3.fromRGB(130, 185, 255), BackgroundTransparency = 0.5, BorderSizePixel = 0})
		new("Frame", hudOverlay, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(1, 28), BackgroundColor3 = Color3.fromRGB(130, 185, 255), BackgroundTransparency = 0.5, BorderSizePixel = 0})

		-- Camera Mode Selector Bar at Top Center
		local camBar = new("Frame", hudOverlay, {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 8), Size = UDim2.fromOffset(274, 22), BackgroundColor3 = Color3.fromRGB(10, 14, 24), BackgroundTransparency = 0.25, BorderSizePixel = 0, ZIndex = 6})
		corner(camBar, 5); stroke(camBar, Color3.fromRGB(45, 75, 135), 0.5)
		new("UIListLayout", camBar, {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Center, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 4)})

		local camBtns = {}
		local function makeCamBtn(label, mode)
			local btn = new("TextButton", camBar, {
				Size = UDim2.fromOffset(62, 16), BackgroundColor3 = (labs.spaceCamMode == mode) and Color3.fromRGB(35, 75, 145) or Color3.fromRGB(18, 25, 42),
				BorderSizePixel = 0, Text = label, TextColor3 = (labs.spaceCamMode == mode) and Color3.fromRGB(200, 230, 255) or Color3.fromRGB(130, 165, 220),
				Font = FONT_BOLD, TextSize = 8, AutoButtonColor = false, ZIndex = 7
			})
			corner(btn, 3)
			camBtns[mode] = btn
			btn.Activated:Connect(function()
				labs.spaceCamMode = mode
				for m, b in pairs(camBtns) do
					b.BackgroundColor3 = (m == mode) and Color3.fromRGB(35, 75, 145) or Color3.fromRGB(18, 25, 42)
					b.TextColor3 = (m == mode) and Color3.fromRGB(200, 230, 255) or Color3.fromRGB(130, 165, 220)
				end
				if mode == "Orbit" then labs.spaceCamPitch = 0.42; labs.spaceCamYaw = 0.35; labs.spaceCamDist = 28 end
				playUISound("click", 1.05, 0.5)
			end)
			return btn
		end
		makeCamBtn("360° ORBIT", "Orbit")
		makeCamBtn("NADIR LOCK", "Nadir")
		makeCamBtn("CHASE CAM", "Chase")
		local resetCamBtn = new("TextButton", camBar, {
			Size = UDim2.fromOffset(52, 16), BackgroundColor3 = Color3.fromRGB(18, 25, 42),
			BorderSizePixel = 0, Text = "⌖ RESET", TextColor3 = Color3.fromRGB(130, 165, 220),
			Font = FONT_BOLD, TextSize = 8, AutoButtonColor = false, ZIndex = 7
		})
		corner(resetCamBtn, 3)
		resetCamBtn.Activated:Connect(function()
			labs.spaceCamMode = "Orbit"
			labs.spaceCamPitch = 0.42; labs.spaceCamYaw = 0.35; labs.spaceCamDist = 28
			for m, b in pairs(camBtns) do
				b.BackgroundColor3 = (m == "Orbit") and Color3.fromRGB(35, 75, 145) or Color3.fromRGB(18, 25, 42)
				b.TextColor3 = (m == "Orbit") and Color3.fromRGB(200, 230, 255) or Color3.fromRGB(130, 165, 220)
			end
			playUISound("click", 1.05, 0.5)
		end)

		-- Live Telemetry Cards on Overlay
		local tlCard = new("Frame", hudOverlay, {Position = UDim2.fromOffset(24, 12), Size = UDim2.fromOffset(210, 52), BackgroundColor3 = Color3.fromRGB(10, 14, 24), BackgroundTransparency = 0.25, BorderSizePixel = 0})
		corner(tlCard, 6); stroke(tlCard, Color3.fromRGB(45, 75, 135), 0.45); pad(tlCard, 4, 8, 4, 8)
		makeText(tlCard, "ORBITAL TELEMETRY", 8, Color3.fromRGB(130, 185, 255), FONT_BOLD, {Size = UDim2.new(1, 0, 0, 11)})
		local tlText = makeText(tlCard, "ALT: 10,500 st (2.94 km)\nVEL: 7.72 km/s · INC: 28.5°", 9, C.text, FONT, {Position = UDim2.fromOffset(0, 13), Size = UDim2.new(1, 0, 1, -13), TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.2})

		local trCard = new("Frame", hudOverlay, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -24, 0, 12), Size = UDim2.fromOffset(210, 52), BackgroundColor3 = Color3.fromRGB(10, 14, 24), BackgroundTransparency = 0.25, BorderSizePixel = 0})
		corner(trCard, 6); stroke(trCard, Color3.fromRGB(45, 75, 135), 0.45); pad(trCard, 4, 8, 4, 8)
		makeText(trCard, "SUB-SATELLITE POSITION", 8, Color3.fromRGB(130, 185, 255), FONT_BOLD, {Size = UDim2.new(1, 0, 0, 11)})
		local trText = makeText(trCard, "LAT: 14.28° N · LON: 48.62° W\nSTATUS: ZERO-G SPACE VACUUM", 9, C.text, FONT, {Position = UDim2.fromOffset(0, 13), Size = UDim2.new(1, 0, 1, -13), TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.2})

		-- Bottom Status Bar & 14k Limit Warning
		local btmBar = new("Frame", hudOverlay, {AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -8), Size = UDim2.new(1, -48, 0, 22), BackgroundColor3 = Color3.fromRGB(10, 14, 24), BackgroundTransparency = 0.20, BorderSizePixel = 0})
		corner(btmBar, 5); stroke(btmBar, Color3.fromRGB(45, 75, 135), 0.45); pad(btmBar, 0, 10, 0, 10)
		local btmText = makeText(btmBar, "LIMIT: 14,000 ST CEILING · ORBIT RANGE: 10,000 – 14,000 ST", 8, Color3.fromRGB(160, 200, 255), FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		-- Mouse Drag & Scroll Zoom on Space Viewport
		local svDragging = false
		local dragStart = Vector2.zero
		local startPitch, startYaw = 0.42, 0.35

		vfFrame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				svDragging = true
				dragStart = Vector2.new(input.Position.X, input.Position.Y)
				startPitch = labs.spaceCamPitch or 0.42
				startYaw = labs.spaceCamYaw or 0.35
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if svDragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStart
				labs.spaceCamYaw = startYaw - delta.X * 0.012
				labs.spaceCamPitch = clamp(startPitch + delta.Y * 0.012, -1.35, 1.35)
			elseif input.UserInputType == Enum.UserInputType.MouseWheel and ui.pages["Space"] and ui.pages["Space"].Visible then
				local mLoc = UserInputService:GetMouseLocation()
				local absP = vfFrame.AbsolutePosition
				local absS = vfFrame.AbsoluteSize
				if mLoc.X >= absP.X and mLoc.X <= (absP.X + absS.X) and mLoc.Y >= absP.Y and mLoc.Y <= (absP.Y + absS.Y) then
					labs.spaceCamDist = clamp((labs.spaceCamDist or 28) - input.Position.Z * 3.5, 12, 60)
				end
			end
		end)
		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				svDragging = false
			end
		end)

		ui.spaceViewport = {
			vp = vp, wm = wm, cam = cam, earth = earthBall, crust = crustBall, clouds = radarClouds, atmo = atmosphereHalo,
			sat = vesselSat, solar = vesselLimb, nadir = nadirBeacon, nadirLine = nadirLine,
			wpPerigee = wpPerigee, wpApogee = wpApogee,
			orbitNodes = orbitNodes, tlText = tlText, trText = trText, btmText = btmText,
			angle = 0,
		}

		-- SECTION 2: RCS THRUSTER PROPULSION & ORBITAL MANEUVERS
		local rcsSec = makeSection(page, "Reaction Control System (RCS) & Orbital Maneuvers", 2, "6-DOF Micro-Thrusters, Velocity Dampening, Plane Shifts & Circularization", Color3.fromRGB(130, 175, 255))

		local rcsGrid1 = makeGrid(rcsSec, 4, 34, 1, 8)
		onClick(makeButton(rcsGrid1, "🚀 PROGRADE (+50 ST/S)", {LayoutOrder = 1}, {selected = true, tone = "sky"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				local camCF = workspace.CurrentCamera and workspace.CurrentCamera.CFrame or root.CFrame
				local forward = Vector3.new(camCF.LookVector.X, 0, camCF.LookVector.Z).Unit
				if forward.Magnitude < 0.1 then forward = Vector3.new(0, 0, -1) end
				local boost = 50 * (labs.rcsThrust or 1.0)
				root.AssemblyLinearVelocity = root.AssemblyLinearVelocity + forward * boost
				fn.playOneShotPlanetSound("rbxassetid://9112801967", 0.4, 1.4)
				setStatus("RCS PROGRADE BURN", string.format("Accelerated +%d st/s prograde.", round(boost)), C.skyPale)
			end
		end)
		onClick(makeButton(rcsGrid1, "🔥 RETROGRADE (-50 ST/S)", {LayoutOrder = 2}, {tone = "rose"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				local camCF = workspace.CurrentCamera and workspace.CurrentCamera.CFrame or root.CFrame
				local forward = Vector3.new(camCF.LookVector.X, 0, camCF.LookVector.Z).Unit
				if forward.Magnitude < 0.1 then forward = Vector3.new(0, 0, -1) end
				local boost = 50 * (labs.rcsThrust or 1.0)
				root.AssemblyLinearVelocity = root.AssemblyLinearVelocity - forward * boost
				fn.playOneShotPlanetSound("rbxassetid://9112801967", 0.4, 0.8)
				setStatus("RCS RETROGRADE BURN", string.format("Fired retro-thrusters -%d st/s.", round(boost)), C.rosePale)
			end
		end)
		onClick(makeButton(rcsGrid1, "⬆ ORBIT BOOST (+1,000 ST)", {LayoutOrder = 3}, {tone = "sky"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				local ceiling = labs.spaceCeiling or 14000
				local targetY = math.min(ceiling - 200, root.Position.Y + 1000)
				char:PivotTo(CFrame.new(root.Position.X, targetY, root.Position.Z))
				setStatus("ORBIT BOOSTED", string.format("Ascended to %d studs. Safe ceiling is %d studs.", targetY, ceiling), C.skyPale)
			end
		end)
		onClick(makeButton(rcsGrid1, "⬇ ORBIT LOWER (-1,000 ST)", {LayoutOrder = 4}, {tone = "normal"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				local targetY = math.max(1000, root.Position.Y - 1000)
				char:PivotTo(CFrame.new(root.Position.X, targetY, root.Position.Z))
				setStatus("ORBIT LOWERED", string.format("Descended to %d studs.", targetY), C.skyPale)
			end
		end)

		local rcsGrid2 = makeGrid(rcsSec, 4, 32, 2, 8)
		onClick(makeButton(rcsGrid2, "◈ KILL DRIFT (ZERO-V)", {LayoutOrder = 1}, {tone = "normal"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				root.AssemblyLinearVelocity = Vector3.zero
				root.AssemblyAngularVelocity = Vector3.zero
				setStatus("DRIFT DAMPENED", "All linear & angular drift neutralized. Stable zero-G lock established.", C.skyPale)
			end
		end)
		onClick(makeButton(rcsGrid2, "◎ CIRCULARIZE (11.5K ST)", {LayoutOrder = 2}, {selected = true, tone = "sky"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				char:PivotTo(CFrame.new(root.Position.X, 11500, root.Position.Z))
				root.AssemblyLinearVelocity = Vector3.new(35, 0, 0)
				setStatus("ORBIT CIRCULARIZED", "Established 11,500 st circular parking orbit (3.22 km altitude).", C.skyPale)
			end
		end)

		local incList = {0, 28.5, 51.6, 90}
		local incIdx = 2
		local incBtn = makeButton(rcsGrid2, "🌐 INCLINE: 28.5°", {LayoutOrder = 3}, {tone = "normal"})
		onClick(incBtn, function()
			incIdx = (incIdx % #incList) + 1
			local val = incList[incIdx]
			fn.setOrbitalInclination(val)
			incBtn.Text = string.format("🌐 INCLINE: %.1f°", val)
			setStatus("INCLINATION ADJUSTED", string.format("Shifted orbital plane inclination to %.1f°.", val), C.skyPale)
		end)

		local rcsPwrList = {1.0, 2.0, 3.0}
		local rcsPwrIdx = 1
		local rcsPwrBtn = makeButton(rcsGrid2, "⚡ RCS THRUST: 1.0×", {LayoutOrder = 4}, {tone = "normal"})
		onClick(rcsPwrBtn, function()
			rcsPwrIdx = (rcsPwrIdx % #rcsPwrList) + 1
			labs.rcsThrust = rcsPwrList[rcsPwrIdx]
			rcsPwrBtn.Text = string.format("⚡ RCS THRUST: %.1f×", labs.rcsThrust)
			setStatus("RCS POWER ADJUSTED", string.format("Set RCS impulse multiplier to %.1f×.", labs.rcsThrust), C.skyPale)
		end)

		-- SECTION 3: ORBITAL RECONNAISSANCE & DEPLOYABLE FLEET
		local reconSec = makeSection(page, "Orbital Reconnaissance & Deployable Fleet", 3, "Nadir Surface Scanning, Sub-Orbital Telemetry Probes & Scientific Beacons", Color3.fromRGB(130, 175, 255))

		local reconGrid = makeGrid(reconSec, 4, 34, 1, 8)
		onClick(makeButton(reconGrid, "🛰 SCAN SURFACE BELOW", {LayoutOrder = 1}, {selected = true, tone = "sky", special = true}), function()
			fn.scanSurfaceBelow()
		end)
		onClick(makeButton(reconGrid, "📡 DEPLOY PROBE", {LayoutOrder = 2}, {tone = "normal"}), function()
			fn.launchOrbitalProbe("research")
		end)
		onClick(makeButton(reconGrid, "🛰 DEPLOY COMMS RELAY", {LayoutOrder = 3}, {tone = "normal"}), function()
			fn.launchOrbitalProbe("comms")
		end)
		onClick(makeButton(reconGrid, "🧹 PURGE PROBES", {LayoutOrder = 4}, {tone = "rose"}), function()
			fn.clearOrbitalProbes()
		end)

		-- Scanner Readout Card
		local scanCard = new("Frame", reconSec, {Size = UDim2.new(1, 0, 0, 32), BackgroundColor3 = Color3.fromRGB(10, 14, 24), BackgroundTransparency = 0.25, BorderSizePixel = 0, LayoutOrder = 2})
		corner(scanCard, 6); stroke(scanCard, Color3.fromRGB(45, 75, 135), 0.45); pad(scanCard, 4, 10, 4, 10)
		ui.spaceScannerReadout = makeText(scanCard, "NADIR SCANNER: STANDBY — CLICK 'SCAN SURFACE BELOW' TO INITIATE RECON", 9, C.dim, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		-- SECTION 4: SPACE ENVIRONMENT, EVA & RE-ENTRY SAFETY
		local envSec = makeSection(page, "Space Environment, EVA & Re-Entry Safety", 4, "Cosmic Audio Filtering, Spacesuit Thrusters, Re-Entry Ignition & Surface Return", Color3.fromRGB(130, 175, 255))

		local envGrid1 = makeGrid(envSec, 3, 34, 1, 8)
		onClick(makeButton(envGrid1, "🪂 INITIATE RE-ENTRY DROP", {LayoutOrder = 1}, {tone = "rose", special = true}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				local bv = root:FindFirstChild("SiriusZeroGFloat")
				if bv then pcall(function() bv:Destroy() end) end
				root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X * 0.7, -135, root.AssemblyLinearVelocity.Z * 0.7)
				labs.reentryIntensity = 1.0
				fn.triggerScreenShake(0.65, 0.9)
				setStatus("DE-ORBIT BURN", "Engaged atmospheric descent vector. Prepare for thermodynamic compression heating!", C.rosePale)
			end
		end)
		onClick(makeButton(envGrid1, "🌍 RETURN TO SURFACE", {LayoutOrder = 2}, {tone = "normal"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				if fn.stopReentryVFX then fn.stopReentryVFX(char) end
				pcall(function() char:PivotTo(CFrame.new(root.Position.X, 64, root.Position.Z)) end)
				fn.switchPage("Terrain", false)
				setStatus("TOUCHDOWN", "Returned to surface level. Space radar deactivated.", C.muted)
			end
		end)

		local ceilList = {14000, 16000, 12000}
		local ceilIdx = 1
		local ceilBtn = makeButton(envGrid1, "🛑 CEILING: 14,000 ST", {LayoutOrder = 3}, {tone = "normal"})
		onClick(ceilBtn, function()
			ceilIdx = (ceilIdx % #ceilList) + 1
			labs.spaceCeiling = ceilList[ceilIdx]
			ceilBtn.Text = string.format("🛑 CEILING: %d ST", labs.spaceCeiling)
			setStatus("CEILING LIMIT UPDATED", string.format("Orbital re-entry threshold set to %d studs.", labs.spaceCeiling), C.skyPale)
		end)

		local envGrid2 = makeGrid(envSec, 3, 32, 2, 8)
		local audioModeList = {"Mute", "Suit", "Drone"}
		local audioModeIdx = 1
		local audioBtn = makeButton(envGrid2, "🎧 AUDIO: VACUUM MUTE", {LayoutOrder = 1}, {tone = "normal"})
		onClick(audioBtn, function()
			audioModeIdx = (audioModeIdx % #audioModeList) + 1
			local m = audioModeList[audioModeIdx]
			fn.setSpaceAudioMode(m)
			audioBtn.Text = (m == "Mute") and "🎧 AUDIO: VACUUM MUTE" or (m == "Suit" and "🎧 AUDIO: SPACESUIT HUM" or "🎧 AUDIO: COSMIC DRONE")
			setStatus("SPACE AUDIO UPDATED", "Outer space audio environment updated.", C.skyPale)
		end)

		local starList = {4500, 8500, 15000}
		local starIdx = 1
		local starBtn = makeButton(envGrid2, "✨ STARS: 4,500", {LayoutOrder = 2}, {tone = "normal"})
		onClick(starBtn, function()
			starIdx = (starIdx % #starList) + 1
			labs.spaceStarCount = starList[starIdx]
			starBtn.Text = string.format("✨ STARS: %s", (labs.spaceStarCount == 15000) and "15,000 (DEEP)" or tostring(labs.spaceStarCount))
			local sky = Lighting:FindFirstChild("SiriusPlanetSky")
			if sky then pcall(function() sky.StarCount = labs.spaceStarCount end) end
			setStatus("STARFIELD DENSITY", string.format("Space starfield density set to %d stars.", labs.spaceStarCount), C.skyPale)
		end)

		local evaBtn = makeButton(envGrid2, "🧑‍🚀 EVA SUIT: OFF", {LayoutOrder = 3}, {tone = "normal"})
		onClick(evaBtn, function()
			labs.spaceEvaActive = not labs.spaceEvaActive
			evaBtn.Text = labs.spaceEvaActive and "🧑‍🚀 EVA SUIT: ACTIVE" or "🧑‍🚀 EVA SUIT: OFF"
			setButtonState(evaBtn, {selected = labs.spaceEvaActive, tone = labs.spaceEvaActive and "sky" or "normal"})
			local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.UseJumpPower = true
				hum.JumpPower = labs.spaceEvaActive and 95 or 50
			end
			setStatus("EVA SPACEWALK", labs.spaceEvaActive and "EVA micro-thruster spacesuit engaged. Zero-G mobility boosted!" or "EVA spacesuit disengaged.", C.skyPale)
		end)
		end
		buildSpacePage()
	end

	-- PAGE 3: ATLAS (Full-Scale Zoomable Map + Adaptive Alphanumeric A1 / D3 Tactical Grid)
	do
		local function buildAtlasPage()
			local page = createPage("Atlas")
		local atlasSec = makeSection(page, "Full-scale tactical cartography atlas", 1, "Adaptive A1/D3 Sector Grid", C.sky)

		-- Row 1: Zoom Presets & Real-Time Scale HUD
		local ctrlRow1 = new("Frame", atlasSec, {Size = UDim2.new(1, 0, 0, 28), BackgroundTransparency = 1, LayoutOrder = 1})
		local zOutBtn = makeButton(ctrlRow1, "– ZOOM", {Size = UDim2.fromOffset(66, 28)}, {tone = "sky", textSize = 9})
		local zInBtn = makeButton(ctrlRow1, "+ ZOOM", {Position = UDim2.fromOffset(70, 0), Size = UDim2.fromOffset(66, 28)}, {tone = "sky", textSize = 9})
		local z1Btn = makeButton(ctrlRow1, "1.0×", {Position = UDim2.fromOffset(140, 0), Size = UDim2.fromOffset(46, 28)}, {tone = "sky", textSize = 9})
		local z2Btn = makeButton(ctrlRow1, "2.5×", {Position = UDim2.fromOffset(190, 0), Size = UDim2.fromOffset(46, 28)}, {tone = "sky", textSize = 9})
		local z5Btn = makeButton(ctrlRow1, "5.0×", {Position = UDim2.fromOffset(240, 0), Size = UDim2.fromOffset(46, 28)}, {tone = "sky", textSize = 9})
		local z10Btn = makeButton(ctrlRow1, "10.0×", {Position = UDim2.fromOffset(290, 0), Size = UDim2.fromOffset(50, 28)}, {tone = "sky", textSize = 9})
		ui.atlasInfoLbl = makeText(ctrlRow1, "ZOOM 1.0×  ·  4×4 GRID (A1–D4)", 10, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.new(1, -346, 1, 0), TextXAlignment = Enum.TextXAlignment.Right})

		-- Row 2: Tactical Layer Toggles & Quick Actions
		local ctrlRow2 = new("Frame", atlasSec, {Size = UDim2.new(1, 0, 0, 28), BackgroundTransparency = 1, LayoutOrder = 2})
		local gridBtn = makeButton(ctrlRow2, "GRID · ON", {Position = UDim2.fromOffset(0, 0), Size = UDim2.fromOffset(82, 28)}, {selected = true, tone = "sky", textSize = 9})
		local reliefBtn = makeButton(ctrlRow2, "RELIEF · ON", {Position = UDim2.fromOffset(86, 0), Size = UDim2.fromOffset(92, 28)}, {selected = true, tone = "sky", textSize = 9})
		local followBtn = makeButton(ctrlRow2, "FOLLOW ME · OFF", {Position = UDim2.fromOffset(182, 0), Size = UDim2.fromOffset(116, 28)}, {selected = false, tone = "sky", textSize = 9})
		local wpBtn = makeButton(ctrlRow2, "WAYPOINTS · ON", {Position = UDim2.fromOffset(302, 0), Size = UDim2.fromOffset(108, 28)}, {selected = true, tone = "sky", textSize = 9})
		local centerBtn = makeButton(ctrlRow2, "⌖ RE-CENTER", {Position = UDim2.fromOffset(414, 0), Size = UDim2.fromOffset(90, 28)}, {tone = "sky", textSize = 9})

		local vpWrap = new("Frame", atlasSec, {Size = UDim2.new(1, 0, 0, 436), BackgroundColor3 = C.inset, BorderSizePixel = 0, ClipsDescendants = true, LayoutOrder = 3})
		corner(vpWrap, 10); stroke(vpWrap, C.sky, 0.42)
		ui.atlasViewport = vpWrap

		-- Tactical Cardinal Compass Markers (Centered Outside Square Viewport)
		makeText(vpWrap, "▲ NORTH [Z-]", 8, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 3), Size = UDim2.fromOffset(90, 14), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 9})
		makeText(vpWrap, "▼ SOUTH [Z+]", 8, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -22), Size = UDim2.fromOffset(90, 14), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 9})
		makeText(vpWrap, "◄ W", 8, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, -206, 0.5, -6), Size = UDim2.fromOffset(20, 14), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 9})
		makeText(vpWrap, "E ►", 8, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 206, 0.5, -6), Size = UDim2.fromOffset(20, 14), TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 9})

		-- Corner Tactical Brackets
		makeText(vpWrap, "⌜", 13, C.skyPale, FONT_BOLD, {Position = UDim2.fromOffset(6, 4), Size = UDim2.fromOffset(12, 12), ZIndex = 9})
		makeText(vpWrap, "⌝", 13, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -6, 0, 4), Size = UDim2.fromOffset(12, 12), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 9})
		makeText(vpWrap, "⌞", 13, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 6, 1, -22), Size = UDim2.fromOffset(12, 12), ZIndex = 9})
		makeText(vpWrap, "⌟", 13, C.skyPale, FONT_BOLD, {AnchorPoint = Vector2.new(1, 1), Position = UDim2.new(1, -6, 1, -22), Size = UDim2.fromOffset(12, 12), TextXAlignment = Enum.TextXAlignment.Right, ZIndex = 9})

		-- Fixed 1:1 Aspect Ratio Cartographic Container (Prevents Grid/Map Distortion with UI Resize)
		local mapContainer = new("Frame", vpWrap, {
			AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, -6),
			Size = UDim2.fromOffset(384, 384), BackgroundTransparency = 1, ClipsDescendants = false,
		})
		new("UIAspectRatioConstraint", mapContainer, {AspectRatio = 1.0, AspectType = Enum.AspectType.FitWithinMaxSize})

		local mapBox = new("Frame", mapContainer, {
			Size = UDim2.fromScale(1, 1), BackgroundColor3 = C.bg, BorderSizePixel = 0, ClipsDescendants = true,
		})
		stroke(mapBox, C.stroke, 0.45)
		ui.atlasMapBox = mapBox

		local cellHolder = new("Frame", mapBox, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1})
		new("UIGridLayout", cellHolder, {CellSize = UDim2.fromScale(1 / K.ATLAS_GRID, 1 / K.ATLAS_GRID), CellPadding = UDim2.new(), SortOrder = Enum.SortOrder.LayoutOrder})
		for i = 1, K.ATLAS_GRID * K.ATLAS_GRID do
			ui.atlasCells[i] = new("Frame", cellHolder, {BackgroundColor3 = C.card, BorderSizePixel = 0, LayoutOrder = i})
		end

		local gridLayer = new("Frame", mapBox, {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 4})
		for i = 1, 16 do
			ui.atlasVLines[i] = new("Frame", gridLayer, {Size = UDim2.new(0, 1, 1, 0), BackgroundColor3 = C.text, BackgroundTransparency = 0.78, BorderSizePixel = 0, Visible = false})
			ui.atlasHLines[i] = new("Frame", gridLayer, {Size = UDim2.new(1, 0, 0, 1), BackgroundColor3 = C.text, BackgroundTransparency = 0.78, BorderSizePixel = 0, Visible = false})
			ui.atlasColLbls[i] = makeText(mapContainer, "A", 9, C.skyPale, FONT_BOLD, {Size = UDim2.fromOffset(22, 16), TextXAlignment = Enum.TextXAlignment.Center, Visible = false, ZIndex = 6})
			ui.atlasRowLbls[i] = makeText(mapContainer, "1", 9, C.cyanPale, FONT_BOLD, {Size = UDim2.fromOffset(24, 16), TextXAlignment = Enum.TextXAlignment.Right, Visible = false, ZIndex = 6})
		end

		for i = 1, 120 do
			local td = new("Frame", mapBox, {AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(4, 4), BackgroundColor3 = C.biome, BorderSizePixel = 0, Visible = false, ZIndex = 5})
			corner(td, 2); ui.atlasTreeDots[i] = td
		end

		-- Interactive Waypoint Markers (Slots 1, 2, 3)
		for slotIdx = 1, 3 do
			local wpCol = (slotIdx == 1) and C.amber or ((slotIdx == 2) and C.cyan or C.rose)
			local pin = new("TextButton", mapBox, {
				AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(20, 20),
				BackgroundColor3 = wpCol, BorderSizePixel = 0, Visible = false, ZIndex = 7,
				Text = tostring(slotIdx), TextColor3 = C.bg, TextSize = 10, Font = FONT_BOLD,
				AutoButtonColor = false,
			})
			corner(pin, 10); stroke(pin, C.bg, 0, 1.8)
			ui.atlasWpPins[slotIdx] = pin
			pin.MouseEnter:Connect(function()
				local wp = session.waypoints[slotIdx]
				if wp then ui.atlasHud.Text = string.format("WAYPOINT #%d  ·  (X: %d, Y: %d, Z: %d)  ·  Click to Teleport", slotIdx, wp.X, wp.Y, wp.Z) end
			end)
			onClick(pin, function()
				local wp = session.waypoints[slotIdx]
				if wp then
					playUISound("special", 1.08, 0.9)
					fn.teleportCharacterTo(wp.X, wp.Z, string.format("Atlas Waypoint #%d teleport", slotIdx))
				end
			end)
		end

		ui.atlasPlayerDot = new("Frame", mapBox, {AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(9, 9), BackgroundColor3 = C.warn, BorderSizePixel = 0, Visible = false, ZIndex = 8})
		corner(ui.atlasPlayerDot, 5); stroke(ui.atlasPlayerDot, C.bg, 0, 2)

		ui.atlasHud = makeText(vpWrap, "Drag to pan  ·  Scroll to zoom  ·  Double-click to Teleport  ·  Shift+Click to Set Center", 9, C.skyPale, FONT_BOLD, {
			Position = UDim2.new(0, 36, 1, -22), Size = UDim2.new(1, -72, 0, 18), ZIndex = 10,
		})

		local function stepZoom(mult)
			atlas.targetZoom = clamp((atlas.targetZoom or atlas.zoom) * mult, 1.0, 12.0)
		end
		local function setDirectZoom(targetZoom)
			atlas.targetZoom = clamp(targetZoom, 1.0, 12.0)
		end

		onClick(zInBtn, function() stepZoom(1.35) end)
		onClick(zOutBtn, function() stepZoom(1 / 1.35) end)
		onClick(z1Btn, function() setDirectZoom(1.0); atlas.centerU, atlas.centerV = 0.5, 0.5 end)
		onClick(z2Btn, function() setDirectZoom(2.5) end)
		onClick(z5Btn, function() setDirectZoom(5.0) end)
		onClick(z10Btn, function() setDirectZoom(10.0) end)

		onClick(gridBtn, function()
			atlas.showGrid = not atlas.showGrid
			gridBtn.Text = "GRID · " .. (atlas.showGrid and "ON" or "OFF")
			setButtonState(gridBtn, {selected = atlas.showGrid})
			atlas.dirty = true
		end)
		onClick(reliefBtn, function()
			atlas.relief = not atlas.relief
			reliefBtn.Text = "RELIEF · " .. (atlas.relief and "ON" or "OFF")
			setButtonState(reliefBtn, {selected = atlas.relief})
			atlas.dirty = true
		end)
		onClick(followBtn, function()
			atlas.followPlayer = not atlas.followPlayer
			followBtn.Text = "FOLLOW ME · " .. (atlas.followPlayer and "ON" or "OFF")
			setButtonState(followBtn, {selected = atlas.followPlayer})
			if atlas.followPlayer then atlas.dirty = true end
		end)
		onClick(wpBtn, function()
			atlas.showMarkers = not atlas.showMarkers
			wpBtn.Text = "WAYPOINTS · " .. (atlas.showMarkers and "ON" or "OFF")
			setButtonState(wpBtn, {selected = atlas.showMarkers})
			atlas.dirty = true
		end)
		onClick(centerBtn, function()
			local char = LocalPlayer.Character
			local rootPart = char and char:FindFirstChild("HumanoidRootPart")
			local cfg = currentConfig()
			local b = computeBounds(cfg)
			if rootPart then
				local halfSpan = 0.5 / atlas.zoom
				atlas.centerU = clamp((rootPart.Position.X - b.minX) / cfg.Width, halfSpan, 1 - halfSpan)
				atlas.centerV = clamp((rootPart.Position.Z - b.minZ) / cfg.Depth, halfSpan, 1 - halfSpan)
			else
				atlas.centerU, atlas.centerV = 0.5, 0.5
			end
			atlas.dirty = true
			setStatus("ATLAS RE-CENTERED", "Snapped viewport focus to player position.", C.skyPale)
		end)

		mapBox.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local absP, absS = mapBox.AbsolutePosition, mapBox.AbsoluteSize
				local rx = clamp((input.Position.X - absP.X) / math.max(1, absS.X), 0, 1)
				local ry = clamp((input.Position.Y - absP.Y) / math.max(1, absS.Y), 0, 1)
				local span = 1 / atlas.zoom
				local u = (atlas.centerU - span * 0.5) + rx * span
				local v = (atlas.centerV - span * 0.5) + ry * span
				local cfg = currentConfig()
				local b = computeBounds(cfg)
				local wx, wz = b.minX + u * cfg.Width, b.minZ + v * cfg.Depth

				if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
					setValue("CenterX", wx, true); setValue("CenterZ", wz, false, true); fn.triggerMapScanline()
					setStatus("ATLAS RE-CENTERED", string.format("Centered world on (%d, %d).", values.CenterX, values.CenterZ), C.skyPale)
					return
				end
				local now = os.clock()
				if now - atlas.lastClickTime < 0.30 then
					playUISound("special", 1.06, 0.85)
					fn.teleportCharacterTo(wx, wz, "Atlas sector teleport")
					return
				end
				atlas.lastClickTime = now
				atlas.panning = true
				atlas.panStartMouse = Vector2.new(input.Position.X, input.Position.Y)
				atlas.panStartU, atlas.panStartV = atlas.centerU, atlas.centerV
			end
		end)
		mapBox.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseWheel then
				stepZoom(input.Position.Z > 0 and 1.18 or (1 / 1.18))
			elseif input.UserInputType == Enum.UserInputType.MouseMovement then
				local absP, absS = mapBox.AbsolutePosition, mapBox.AbsoluteSize
				local rx = clamp((input.Position.X - absP.X) / math.max(1, absS.X), 0, 0.999)
				local ry = clamp((input.Position.Y - absP.Y) / math.max(1, absS.Y), 0, 0.999)
				local span = 1 / atlas.zoom
				local u = clamp((atlas.centerU - span * 0.5) + rx * span, 0, 0.999)
				local v = clamp((atlas.centerV - span * 0.5) + ry * span, 0, 0.999)
				local subdiv = atlas.zoom >= 5.0 and 16 or (atlas.zoom >= 2.6 and 8 or 4)
				local secCode = colLetters(math.floor(u * subdiv) + 1) .. tostring(math.floor(v * subdiv) + 1)
				local cfg = currentConfig()
				local b = computeBounds(cfg)
				local wx, wz = b.minX + u * cfg.Width, b.minZ + v * cfg.Depth

				local sampler = buildSampler(cfg)
				local h, m, f, pTag = sampler(wx, wz)
				local style = STYLES[cfg.Style] or STYLES.Rolling
				local gx = (sampler(wx + K.VOXEL, wz) - h) / K.VOXEL
				local gz = (sampler(wx, wz + K.VOXEL) - h) / K.VOXEL
				local slopeDeg = round(math.deg(math.atan(math.sqrt(gx * gx + gz * gz))))
				local matName
				if cfg.WaterEnabled and h < cfg.SeaLevel then
					matName = "Water (" .. round(cfg.SeaLevel - h) .. "st deep)"
				else
					local ctx = {h = h, slope = math.sqrt(gx * gx + gz * gz), rel = (h - K.SURFACE_BASE) / cfg.MaxHeight, moisture = m, feature = f, pathTag = pTag or 0, sea = cfg.SeaLevel, water = cfg.WaterEnabled, maxH = cfg.MaxHeight, strataAt = style.strataAt, grassSpread = cfg.GrassSpread, cliffMul = cfg.CliffAngle, snowLine = cfg.SnowLine, beachW = cfg.BeachWidth}
					local mat = (pTag == 2) and M.Sandstone or pickSurface(style, ctx)
					matName = mat.Name
				end
				local relSea = round(h - cfg.SeaLevel)
				local seaStr = cfg.WaterEnabled and (relSea >= 0 and ("+" .. relSea .. " st ASL") or (relSea .. " st SUB")) or (round(h) .. " st Y")
				ui.atlasHud.Text = string.format("SEC %s  ·  (X %d, Z %d)  ·  Y %d (%s)  ·  %s  ·  %d° slope", secCode, round(wx), round(wz), round(h), seaStr, matName, slopeDeg)
			end
		end)
		end
		buildAtlasPage()
	end

	-- PAGE 4: BRUSH (Exact UI_old.txt In-World 3D Terrain Sculpt, Paint & Algorithmic 3D Carver)
	do
		local function buildBrushPage()
			local page = createPage("Brush")
		local ctrlSec = makeSection(page, "In-world 3D sculpt & paint studio", 1, "Hotkey [B] · Undo [Ctrl+Z]", C.cyan)
		local topActions = makeGrid(ctrlSec, 3, 38, 1, 8)
		ui.brushArmBtn = makeButton(topActions, "✎  ARM 3D BRUSH  ·  OFF [B]", {LayoutOrder = 1}, {tone = "cyan", textSize = 10, special = true})
		ui.brushCompactBtn = makeButton(topActions, "COMPACT VIEWPORT MODE", {LayoutOrder = 2}, {tone = "cyan", textSize = 10})
		ui.brushUndoBtn = makeButton(topActions, "UNDO BRUSH STROKE (0)", {LayoutOrder = 3}, {textSize = 10})

		local toolGrid = makeGrid(ctrlSec, 4, 34, 2, 8)
		for idx, t in ipairs(BRUSH_TOOLS) do
			local b = makeButton(toolGrid, t.label, {LayoutOrder = idx}, {selected = (t.id == brush.tool), tone = "cyan", textSize = 10})
			ui.brushToolBtns[t.id] = b
			onClick(b, function()
				brush.tool, brush.pickMode, brush.waypointA = t.id, nil, nil
				fn.refreshBrushUI()
				setStatus("BRUSH TOOL: " .. t.label, t.desc, C.cyanPale)
			end)
		end
		ui.brushToolDesc = makeText(ctrlSec, BRUSH_TOOLS[1].desc, 10, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 18), LayoutOrder = 3, TextTruncate = Enum.TextTruncate.AtEnd})

		local paramSec = makeSection(page, "Brush parameters & falloff curve", 2, "[ / ] Keys Adjust Radius", C.cyan)
		local falloffGrid = makeGrid(paramSec, 4, 28, 1, 8)
		for idx, fName in ipairs({"Smooth", "Dome", "Linear", "Plateau"}) do
			local fb = makeButton(falloffGrid, string.upper(fName) .. " FALLOFF", {LayoutOrder = idx}, {selected = (fName == brush.falloff), tone = "cyan", textSize = 9})
			ui.brushFalloffBtns[fName] = fb
			onClick(fb, function() brush.falloff = fName; fn.refreshBrushUI() end)
		end

		local bSliderGrid = makeGrid(paramSec, 3, 54, 2, 8)
		ui.brushRadiusSlider = makeCustomSlider(bSliderGrid, {label = "Brush radius (studs)", min = 6, max = 120, step = 2, default = 24, get = function() return brush.radius end, set = function(v) brush.radius = v; fn.refreshBrushUI() end}, 1, "cyan")
		ui.brushStrengthSlider = makeCustomSlider(bSliderGrid, {label = "Brush strength", min = 0.05, max = 1.0, step = 0.05, default = 0.55, get = function() return brush.strength end, set = function(v) brush.strength = v; fn.refreshBrushUI() end}, 2, "cyan")
		ui.brushFlattenSlider = makeCustomSlider(bSliderGrid, {label = "Flatten target Y", min = -48, max = 320, step = 1, default = 32, get = function() return brush.flattenY end, set = function(v) brush.flattenY = v end}, 3, "cyan")

		local bSwitchGrid = makeGrid(paramSec, 2, 56, 3, 8)
		makeModularSwitch(bSwitchGrid, "Lock Custom Flatten Y", "Use exact Flatten Target Y slider instead of sampling terrain height on click.", nil, brush.lockFlattenY, "cyan", 1, function(on) brush.lockFlattenY = on end)
		makeModularSwitch(bSwitchGrid, "Preserve Existing Water", "Keep existing sea/lake water occupancies intact when sculpting shorelines.", nil, brush.preserveWater, "cyan", 2, function(on) brush.preserveWater = on end)

		local matSec = makeSection(page, "Sculpt & paint material palette", 3, "16 Solids + Water & Erase", C.cyan)
		local matGrid = makeGrid(matSec, 6, 32, 1, 7)
		for idx, item in ipairs(BRUSH_MATERIALS) do
			local mb = makeButton(matGrid, "", {LayoutOrder = idx}, {selected = (item.mat == brush.material), tone = "cyan", textSize = 9})
			local swCol = (item.mat == M.Water and WATER_PRESETS.Ocean.color) or (item.mat == M.Air and C.danger) or (MATERIAL_COLORS[item.mat] or C.accent)
			local sw = new("Frame", mb, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 7, 0.5, 0), Size = UDim2.fromOffset(12, 12), BackgroundColor3 = swCol, BorderSizePixel = 0})
			corner(sw, 3); stroke(sw, C.bg, 0.25)
			makeText(mb, string.upper(item.label), 9, C.text, FONT_BOLD, {Position = UDim2.fromOffset(24, 0), Size = UDim2.new(1, -26, 1, 0), TextTruncate = Enum.TextTruncate.AtEnd})
			ui.brushMatBtns[item.mat] = {button = mb, swatch = sw}
			onClick(mb, function() brush.material = item.mat; fn.refreshBrushUI() end)
		end

		local algo3DSec = makeSection(page, "Algorithmic 3D river & trail carver", 4, "Live 3D A* & Meander", C.cyan)
		local algoGrid = makeGrid(algo3DSec, 4, 34, 1, 8)
		ui.pick3DRiverBtn = makeButton(algoGrid, "PICK A→B 3D RIVER", {LayoutOrder = 1}, {tone = "blue", textSize = 9})
		ui.pick3DTrailBtn = makeButton(algoGrid, "PICK A→B 3D TRAIL", {LayoutOrder = 2}, {tone = "amber", textSize = 9})
		ui.auto3DRiverBtn = makeButton(algoGrid, "AUTO-CARVE 3D RIVER", {LayoutOrder = 3}, {tone = "blue", textSize = 9, special = true})
		ui.auto3DTrailBtn = makeButton(algoGrid, "AUTO-CARVE 3D TRAIL", {LayoutOrder = 4}, {tone = "amber", textSize = 9, special = true})
		end
		buildBrushPage()
	end

	-- PAGE 5: WATER
	do
		local function buildWaterPage()
			local page = createPage("Water")
		local volSec = makeSection(page, "Hydrology & presets", 1, "6 Water Moods", C.blue)
		local topRow = new("Frame", volSec, {Size = UDim2.new(1, 0, 0, 34), BackgroundTransparency = 1, LayoutOrder = 1})
		ui.waterToggle = makeButton(topRow, "WATER ENABLED  ·  ON", {Size = UDim2.fromOffset(172, 34)}, {selected = true, tone = "blue"})
		local presetHolder = new("Frame", topRow, {Position = UDim2.fromOffset(182, 0), Size = UDim2.new(1, -182, 1, 0), BackgroundTransparency = 1})
		new("UIGridLayout", presetHolder, {CellSize = UDim2.new(1 / #WATER_ORDER, -6, 1, 0), CellPadding = UDim2.fromOffset(6, 0), SortOrder = Enum.SortOrder.LayoutOrder})
		for idx, name in ipairs(WATER_ORDER) do
			local btn = makeButton(presetHolder, string.upper(name), {LayoutOrder = idx}, {selected = name == state.waterPreset, textSize = 10, tone = "blue"})
			ui.waterButtons[name] = btn
			onClick(btn, function() fn.selectWaterPreset(name, true) end)
		end

		local seaRow = makeGrid(volSec, 3, 54, 2, 10)
		makeSliderField(seaRow, "SeaLevel", 1, nil, "blue")
		makeSliderField(seaRow, "BeachWidth", 2, nil, "blue")
		local descCard = new("Frame", seaRow, {BackgroundColor3 = C.inset, BackgroundTransparency = 0.08, BorderSizePixel = 0, LayoutOrder = 3})
		corner(descCard, 8); stroke(descCard, C.stroke, 0.48); pad(descCard, 8, 10, 8, 10)
		ui.waterSwatch = new("Frame", descCard, {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 2, 0.5, 0), Size = UDim2.fromOffset(24, 24), BackgroundColor3 = WATER_PRESETS.Ocean.color, BorderSizePixel = 0})
		corner(ui.waterSwatch, 6); stroke(ui.waterSwatch, C.bluePale, 0.4)
		ui.waterDesc = makeText(descCard, WATER_PRESETS.Ocean.desc, 9, C.muted, FONT, {Position = UDim2.fromOffset(34, 0), Size = UDim2.new(1, -36, 1, 0), TextWrapped = true})

		local dynSec = makeSection(page, "Surface properties", 2, "Place-Wide Terrain Water", C.blue)
		local dynGrid = makeGrid(dynSec, 4, 54, 1, 8)
		for idx, key in ipairs(WATER_KEYS) do makeSliderField(dynGrid, key, idx, function() if not state.busy then applyWaterLook(currentConfig()) end end, "blue") end
		end
		buildWaterPage()
	end

	-- PAGE 6: BIOMES
	do
		local function buildBiomesPage()
			local page = createPage("Biomes")
		local themeSec = makeSection(page, "Material color palette", 1, "Live Local SetMaterialColor", C.biome)
		local themeGrid = makeGrid(themeSec, 6, 32, 1, 8)
		for idx, tName in ipairs(MATERIAL_THEME_ORDER) do
			local btn = makeButton(themeGrid, string.upper(tName), {LayoutOrder = idx}, {selected = (tName == state.materialTheme), textSize = 10, tone = "biome"})
			ui.themeButtons[tName] = btn
			onClick(btn, function() fn.selectMaterialTheme(tName) end)
		end

		local bioSec = makeSection(page, "Biome & material profiles", 2, "16 Procedural Rules", C.biome)
		local bioGrid = makeGrid(bioSec, 2, 70, 1, 10)
		for idx, name in ipairs(STYLE_ORDER) do
			local info = STYLES[name]
			local card = makeButton(bioGrid, "", {LayoutOrder = idx}, {selected = name == state.style, tone = "biome"})
			local bar = new("Frame", card, {Position = UDim2.fromOffset(10, 11), Size = UDim2.fromOffset(3, 48), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = name == state.style and 0 or 0.7, BorderSizePixel = 0})
			corner(bar, 2); new("UIGradient", bar, {Color = ColorSequence.new(C.biomePale, C.biome), Rotation = 90})
			local title = makeText(card, string.upper(name), 11, name == state.style and C.biomePale or C.text, FONT_BOLD, {Position = UDim2.fromOffset(22, 8), Size = UDim2.new(1, -110, 0, 16)})
			makeText(card, info.materials, 9, C.muted, FONT_MED, {Position = UDim2.fromOffset(22, 26), Size = UDim2.new(1, -32, 0, 15), TextTruncate = Enum.TextTruncate.AtEnd})
			makeText(card, info.desc, 9, C.dim, FONT, {Position = UDim2.fromOffset(22, 43), Size = UDim2.new(1, -32, 0, 18), TextTruncate = Enum.TextTruncate.AtEnd})

			local swatches = new("Frame", card, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -10, 0, 10), Size = UDim2.fromOffset(68, 14), BackgroundTransparency = 1})
			new("UIListLayout", swatches, {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim.new(0, 4)})
			local swList = {}
			for _, mat in ipairs(info.palette) do
				local sw = new("Frame", swatches, {Size = UDim2.fromOffset(13, 13), BackgroundColor3 = MATERIAL_COLORS[mat] or C.biome, BorderSizePixel = 0})
				corner(sw, 4); stroke(sw, C.bg, 0.3); table.insert(swList, {frame = sw, mat = mat})
			end
			ui.biomeCards[name] = {button = card, bar = bar, title = title, swatches = swList}
			onClick(card, function() fn.selectStyle(name, true) end)
		end

		local detailSec = makeSection(page, "Selected profile details", 3, nil, C.biome)
		ui.biomeNotes = makeText(detailSec, "", 10, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 52), TextWrapped = true, TextYAlignment = Enum.TextYAlignment.Top, LineHeight = 1.25, LayoutOrder = 1})
		end
		buildBiomesPage()
	end

	-- PAGE 7: SYNTH (Exact UI_old.txt Slot Reels + 8-Card Discovery Deck + QoL & Modulators)
	do
		local function buildSynthPage()
			local page = createPage("Synth")
		local synthSec = makeSection(page, "Algorithmic terrain synthesizer", 1, "24 × 24 = 576 Combinations", C.purple)
		local slotsRow = new("Frame", synthSec, {Size = UDim2.new(1, 0, 0, 96), BackgroundTransparency = 1, LayoutOrder = 1})
		local function makeSlotCard(slotIndex, heading, posScale, anchorX)
			local card = new("Frame", slotsRow, {AnchorPoint = Vector2.new(anchorX, 0), Position = UDim2.fromScale(posScale, 0), Size = UDim2.new(0.5, -22, 1, 0), BackgroundColor3 = C.inset, BackgroundTransparency = 0.06, BorderSizePixel = 0})
			corner(card, 9); surfaceSheen(card, 90); local st = specularStroke(card, C.strokeHi, C.stroke, C.strokeLo, 0.38, 55); pad(card, 8, 10, 8, 12)
			makeText(card, heading, 8, C.dim, FONT_BOLD, {Size = UDim2.new(1, -86, 0, 14)})
			local lockBtn = makeButton(card, "UNLOCKED", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(78, 20)}, {textSize = 9, radius = 5, tone = "purple"})
			local prevBtn = makeButton(card, "‹", {Position = UDim2.fromOffset(0, 24), Size = UDim2.fromOffset(26, 30)}, {textSize = 14, radius = 6})
			local nextBtn = makeButton(card, "›", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0, 0, 24), Size = UDim2.fromOffset(26, 30)}, {textSize = 14, radius = 6})
			local nameLabel = makeText(card, slotIndex == 1 and "DESERT" or "STONES", 16, C.purplePale, FONT_BOLD, {Position = UDim2.fromOffset(34, 23), Size = UDim2.new(1, -68, 0, 32), TextXAlignment = Enum.TextXAlignment.Center})
			new("UIGradient", nameLabel, {Color = ColorSequence.new(Color3.new(1, 1, 1), C.purplePale), Rotation = 90})
			local tagLabel = makeText(card, "", 9, C.muted, FONT, {Position = UDim2.fromOffset(2, 62), Size = UDim2.new(1, -4, 0, 16), TextXAlignment = Enum.TextXAlignment.Center, TextTruncate = Enum.TextTruncate.AtEnd})
			return {card = card, stroke = st, lock = lockBtn, prev = prevBtn, next = nextBtn, name = nameLabel, tag = tagLabel}
		end
		ui.slot1 = makeSlotCard(1, "SLOT 1  ·  PRIMARY DOMAIN (24)", 0, 0)
		ui.slot2 = makeSlotCard(2, "SLOT 2  ·  STRUCTURAL FEATURE (24)", 1, 1)

		local plusBadge = new("Frame", slotsRow, {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(28, 28), BackgroundColor3 = C.purpleSoft, BackgroundTransparency = 0.12, BorderSizePixel = 0})
		corner(plusBadge, 14); stroke(plusBadge, C.purple, 0.3)
		makeText(plusBadge, "+", 15, C.purplePale, FONT_BOLD, {Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center})

		local resultCard = new("Frame", synthSec, {Size = UDim2.new(1, 0, 0, 62), BackgroundColor3 = C.inset, BackgroundTransparency = 0.06, BorderSizePixel = 0, LayoutOrder = 2})
		corner(resultCard, 8); surfaceSheen(resultCard, 0); ui.synthResultStroke = stroke(resultCard, C.purple, 0.38); pad(resultCard, 9, 12, 9, 12)
		ui.synthTitle = makeText(resultCard, "✦  DESERT STONES", 13, C.text, FONT_BOLD, {Size = UDim2.new(1, -110, 0, 18)})
		ui.synthRecipe = makeText(resultCard, "", 10, C.muted, FONT, {Position = UDim2.fromOffset(0, 22), Size = UDim2.new(1, -10, 0, 20), TextTruncate = Enum.TextTruncate.AtEnd})
		local resultSwatches = new("Frame", resultCard, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(80, 16), BackgroundTransparency = 1})
		new("UIListLayout", resultSwatches, {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim.new(0, 5)})
		ui.synthSwatches = {}
		for i = 1, 4 do local sw = new("Frame", resultSwatches, {Size = UDim2.fromOffset(15, 15), BackgroundColor3 = C.accent, BorderSizePixel = 0}); corner(sw, 4); stroke(sw, C.bg, 0.25); ui.synthSwatches[i] = sw end

		local synthActions = makeGrid(synthSec, 3, 36, 3, 8)
		ui.synthRollBtn = makeButton(synthActions, "✦  SYNTHESIZE NEW OPTION", {LayoutOrder = 1}, {selected = true, tone = "purple", special = true})
		ui.synthApplyBtn = makeButton(synthActions, "APPLY CURRENT PAIR", {LayoutOrder = 2})
		ui.synthInspectBtn = makeButton(synthActions, "OPEN IN LIVE MAP →", {LayoutOrder = 3})

		local synthQolGrid = makeGrid(synthSec, 4, 30, 4, 8)
		local randSeedBtn = makeButton(synthQolGrid, "🎲  RANDOM SEED", {LayoutOrder = 1}, {tone = "purple", textSize = 9})
		local rerollDomBtn = makeButton(synthQolGrid, "↺  ROLL DOMAIN ONLY", {LayoutOrder = 2}, {tone = "purple", textSize = 9})
		local rerollFeatBtn = makeButton(synthQolGrid, "↺  ROLL FEATURE ONLY", {LayoutOrder = 3}, {tone = "purple", textSize = 9})
		local copySynthBtn = makeButton(synthQolGrid, "📋  COPY SYNTH CODE", {LayoutOrder = 4}, {tone = "purple", textSize = 9})

		onClick(randSeedBtn, function()
			setValue("Seed", math.random(100, 99999), true, true)
			fn.applySynthCombination(state.synthDomain, state.synthFeature, true)
			setStatus("SEED RANDOMIZED", string.format("Applied seed #%d to current synthesizer pair.", values.Seed), C.purplePale)
			playUISound("special", 1.08, 0.9)
		end)
		onClick(rerollDomBtn, function()
			local newD
			repeat newD = math.random(1, #SYNTH_DOMAINS) until newD ~= state.synthDomain or #SYNTH_DOMAINS <= 1
			fn.applySynthCombination(newD, state.synthFeature, true)
		end)
		onClick(rerollFeatBtn, function()
			local newF
			repeat newF = math.random(1, #SYNTH_FEATURES) until newF ~= state.synthFeature or #SYNTH_FEATURES <= 1
			fn.applySynthCombination(state.synthDomain, newF, true)
		end)
		onClick(copySynthBtn, function()
			local d = SYNTH_DOMAINS[state.synthDomain] or SYNTH_DOMAINS[1]
			local f = SYNTH_FEATURES[state.synthFeature] or SYNTH_FEATURES[1]
			local token = string.format("SYNTH:%s+%s:SEED=%d", d.name, f.name, values.Seed)
			setStatus("SYNTH CODE COPIED", token, C.purplePale)
			playUISound("special", 1.08, 0.9)
		end)

		local modSec = makeSection(page, "Procedural synthesis modulators & harmonics", 2, "Real-Time Noise Modifiers", C.purple)
		local modGrid = makeGrid(modSec, 4, 54, 1, 8)
		makeSliderField(modGrid, "RidgeSharpness", 1, nil, "purple")
		makeSliderField(modGrid, "TerraceSteps",  2, nil, "purple")
		makeSliderField(modGrid, "MoistureShift", 3, nil, "purple")
		makeSliderField(modGrid, "CaveDensity",   4, nil, "purple")

		local deckSec = makeSection(page, "Generated terrain deck", 3, "8 Synthesized Cards", C.purple)
		local deckGrid = makeGrid(deckSec, 2, 60, 1, 10)
		for i = 1, K.SYNTH_DECK_SIZE do
			local card = makeButton(deckGrid, "", {LayoutOrder = i}, {tone = "purple"})
			local bar = new("Frame", card, {Position = UDim2.fromOffset(10, 10), Size = UDim2.fromOffset(3, 40), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0.65, BorderSizePixel = 0})
			corner(bar, 2); new("UIGradient", bar, {Color = ColorSequence.new(C.purplePale, C.purple), Rotation = 90})
			local nameLbl = makeText(card, "", 11, C.text, FONT_BOLD, {Position = UDim2.fromOffset(22, 8), Size = UDim2.new(1, -92, 0, 17), TextTruncate = Enum.TextTruncate.AtEnd})
			local subLbl = makeText(card, "", 9, C.muted, FONT, {Position = UDim2.fromOffset(22, 28), Size = UDim2.new(1, -30, 0, 22), TextTruncate = Enum.TextTruncate.AtEnd})
			local miniSwatches = new("Frame", card, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -10, 0, 10), Size = UDim2.fromOffset(58, 13), BackgroundTransparency = 1})
			new("UIListLayout", miniSwatches, {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim.new(0, 4)})
			local swList = {}
			for s = 1, 3 do local sw = new("Frame", miniSwatches, {Size = UDim2.fromOffset(12, 12), BackgroundColor3 = C.accent, BorderSizePixel = 0}); corner(sw, 3); swList[s] = sw end
			ui.synthDeckCards[i] = {button = card, bar = bar, name = nameLbl, sub = subLbl, swatches = swList}
			onClick(card, function()
				local item = session.synthDeck[i]
				if item and not state.rolling then fn.applySynthCombination(item.domain, item.feature, true, item.seed) end
			end)
		end
		ui.rollDeckBtn = makeButton(deckSec, "GENERATE 8 FRESH OPTIONS FOR DECK", {Size = UDim2.new(1, 0, 0, 32), LayoutOrder = 2}, {tone = "purple", special = true})
		end
		buildSynthPage()
	end

	-- PAGE 8: PERF (Expanded Telemetry, Graphics LOD, Shadows/Fog & RAM Cache Purge)
	do
		local function buildPerfPage()
			local page = createPage("Perf")
		local monSec = makeSection(page, "Live client telemetry & performance profiles", 1, "Real-Time Frame Monitor", C.amber)
		local pMetrics = makeGrid(monSec, 4, 52, 1, 8)
		for idx, info in ipairs({{label="LIVE FPS",col=C.accent},{label="FRAME STEP",col=C.amber},{label="CHUNK SECTOR",col=C.blue},{label="LUA MEMORY",col=C.purple}}) do
			local card = new("Frame", pMetrics, {BackgroundColor3 = C.inset, BackgroundTransparency = 0.06, BorderSizePixel = 0, LayoutOrder = idx})
			corner(card, 7); stroke(card, C.stroke, 0.48)
			local bar = new("Frame", card, {Position = UDim2.fromOffset(0, 9), Size = UDim2.fromOffset(3, 34), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0})
			corner(bar, 2); new("UIGradient", bar, {Color = ColorSequence.new(C.text, info.col), Rotation = 90})
			pad(card, 6, 8, 6, 11)
			makeText(card, info.label, 8, C.dim, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 12)})
			ui.perfMetricValues[idx] = makeText(card, "--", 12, C.text, FONT_BOLD, {Position = UDim2.fromOffset(0, 17), Size = UDim2.new(1, 0, 0, 22)})
		end

		-- Real-Time Frame Timing & Jitter Sparkline Histogram
		local sparkCard = new("Frame", monSec, {Size = UDim2.new(1, 0, 0, 72), BackgroundColor3 = C.inset, BackgroundTransparency = 0.06, BorderSizePixel = 0, LayoutOrder = 2})
		corner(sparkCard, 8); stroke(sparkCard, C.stroke, 0.48); pad(sparkCard, 8, 10, 8, 10)
		makeText(sparkCard, "REAL-TIME FRAME TIMING & JITTER HISTOGRAM", 8, C.dim, FONT_BOLD, {Size = UDim2.new(0.55, 0, 0, 14)})
		ui.perfJitterLbl = makeText(sparkCard, "Jitter: ±0.0 ms  ·  1% Low: -- FPS  ·  Budget: 16.6 ms", 9, C.amberPale, FONT_BOLD, {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.new(0.45, 0, 0, 14), TextXAlignment = Enum.TextXAlignment.Right})

		local sparkHolder = new("Frame", sparkCard, {Position = UDim2.fromOffset(0, 20), Size = UDim2.new(1, 0, 1, -20), BackgroundTransparency = 1})
		for i = 1, 128 do
			local bar = new("Frame", sparkHolder, {
				AnchorPoint = Vector2.new(0, 1), Position = UDim2.new((i - 1) / 128, 0, 1, 0),
				Size = UDim2.new(1 / 128, -1, 0, 16), BackgroundColor3 = C.accent, BorderSizePixel = 0,
			})
			corner(bar, 1); ui.perfSparkBars[i] = bar
		end

		local profGrid = makeGrid(monSec, 4, 34, 3, 8)
		local chunkSec = makeSection(page, "Anti-lag chunk streaming & graphics LOD switches", 2, "Zero-Hitch Streaming", C.amber)
		local swGrid = makeGrid(chunkSec, 2, 56, 1, 8)
		ui.lowLagSwitch = makeModularSwitch(swGrid, "Low-Lag Micro-Chunks", "Streams 192×192 micro-sectors (64K voxel cap + extra yields) for high FPS on huge maps.", "ANTI-LAG", perf.lowLagChunks, "amber", 1, function(on) perf.lowLagChunks = on end)
		makeModularSwitch(swGrid, "Preview on Slider Release", "Pauses 2D map rasterization while dragging sliders; updates on mouse release.", nil, perf.previewOnRelease, "amber", 2, function(on) perf.previewOnRelease = on end)
		makeModularSwitch(swGrid, "Eco UI Shimmers", "Pauses decorative gradient rotations & CTA sweeps when idle.", nil, perf.ecoAnimations, "amber", 3, function(on) perf.ecoAnimations = on end)
		makeModularSwitch(swGrid, "3D Terrain Grass Decoration", "Toggles animated 3D grass blades on Terrain.", nil, perf.decoration, "amber", 4, function(on)
			perf.decoration = on
			pcall(function() if type(sethiddenproperty) == "function" then sethiddenproperty(Terrain, "Decoration", on) else Terrain.Decoration = on end end)
		end)
		makeModularSwitch(swGrid, "Global Lighting Shadows", "Toggles Lighting.GlobalShadows for instant GPU relief on mega-worlds.", "GPU LOD", perf.globalShadows, "amber", 5, function(on) perf.globalShadows = on; fn.applyExplorerQoL() end)
		makeModularSwitch(swGrid, "Atmospheric Distance Haze", "Allows planetary Atmosphere density & fog scattering.", nil, perf.distanceFogLod, "amber", 6, function(on) perf.distanceFogLod = on; fn.syncPlanetToWorld() end)

		local tuneSec = makeSection(page, "Granular render & step rate sliders + RAM cache", 3, "Live Engine Tuning", C.amber)
		local tuneGrid = makeGrid(tuneSec, 5, 54, 1, 8)
		ui.perfTileSlider = makeCustomSlider(tuneGrid, {label = "Chunk edge (vox)", min = 32, max = 160, step = 8, default = 96, get = function() return perf.tileCols end, set = function(v) perf.tileCols = v end}, 1, "amber")
		ui.perfFbSlider = makeCustomSlider(tuneGrid, {label = "Build budget (ms)", min = 2, max = 28, step = 1, default = 10, get = function() return perf.frameBudgetMs end, set = function(v) perf.frameBudgetMs = v end}, 2, "amber")
		ui.perfVbSlider = makeCustomSlider(tuneGrid, {label = "Voxel batch (K)", min = 40, max = 360, step = 10, default = 220, get = function() return perf.voxelBudgetK end, set = function(v) perf.voxelBudgetK = v end}, 3, "amber")
		ui.perfPmSlider = makeCustomSlider(tuneGrid, {label = "Preview step (ms)", min = 40, max = 300, step = 10, default = 80, get = function() return perf.previewMs end, set = function(v) perf.previewMs = v end}, 4, "amber")
		ui.perfHzSlider = makeCustomSlider(tuneGrid, {label = "3D brush rate (Hz)", min = 15, max = 60, step = 5, default = 45, get = function() return perf.brushHz end, set = function(v) perf.brushHz = v end}, 5, "amber")

		local ramGrid = makeGrid(tuneSec, 3, 34, 2, 8)
		onClick(makeButton(ramGrid, "🧹  PURGE UNDO & BRUSH RAM CACHE", {LayoutOrder = 1}, {tone = "amber", textSize = 9}), function()
			for _, e in ipairs(session.history) do disposeEntry(e) end
			for _, s in ipairs(session.brushHistory) do disposeBrushStroke(s) end
			table.clear(session.history); table.clear(session.brushHistory)
			fn.refreshHistoryUI()
			setStatus("MEMORY PURGED", "Freed all cached TerrainRegion build & brush snapshots from RAM.", C.amberPale)
		end)
		onClick(makeButton(ramGrid, "🌲  CLEAR LAB TREES & CLOUDS", {LayoutOrder = 2}, {tone = "amber", textSize = 9}), function()
			fn.clearGeneratedTrees(); labs.cloudsEnabled = false
			if ui.labsCloudSwitch then ui.labsCloudSwitch.set(false, true) end
			fn.clearVolumetricClouds()
			setStatus("PROPS CLEARED", "Removed all experimental 3D trees and volumetric cloud planes.", C.amberPale)
		end)
		ui.perfBenchBtn = makeButton(ramGrid, "⚡  RUN HARDWARE BENCHMARK", {LayoutOrder = 3}, {tone = "amber", textSize = 9, special = true})
		onClick(ui.perfBenchBtn, function()
			if perf.benchmarking then return end
			perf.benchmarking = true
			ui.perfBenchBtn.Text = "⚡  BENCHMARKING..."
			task.spawn(function()
				local startT = os.clock()
				local accum = 0
				for step = 1, 10000 do
					accum += math.noise(step * 0.05, step * 0.03, step * 0.02)
				end
				local elapsed = os.clock() - startT
				local rate = round(10000 / math.max(0.001, elapsed))
				perf.benchmarking = false
				ui.perfBenchBtn.Text = "⚡  RUN HARDWARE BENCHMARK"

				local recommended = "Balanced"
				if rate >= 120000 then recommended = "Turbo"
				elseif rate <= 50000 then recommended = "Feather" end

				local pData = {
					Feather = {fb = 4, vb = 64, pm = 160, hz = 30, lowLag = true, cols = 48},
					Balanced = {fb = 10, vb = 220, pm = 80, hz = 45, lowLag = false, cols = 96},
					Turbo = {fb = 22, vb = 340, pm = 80, hz = 60, lowLag = false, cols = 128},
				}
				local p = pData[recommended]
				perf.profile, perf.frameBudgetMs, perf.voxelBudgetK, perf.previewMs, perf.brushHz, perf.lowLagChunks, perf.tileCols = recommended, p.fb, p.vb, p.pm, p.hz, p.lowLag, p.cols
				ui.lowLagSwitch.set(p.lowLag, true)
				ui.perfFbSlider.refresh(p.fb, true); ui.perfVbSlider.refresh(p.vb, true)
				ui.perfPmSlider.refresh(p.pm, true); ui.perfHzSlider.refresh(p.hz, true)
				if ui.perfTileSlider then ui.perfTileSlider.refresh(p.cols, true) end
				for id, btn in pairs(ui.perfProfileBtns) do setButtonState(btn, {selected = (id == recommended)}) end

				playUISound("special", 1.05, 1.0)
				setStatus("BENCHMARK COMPLETE", string.format("Tested %s evals/sec. Auto-selected %s profile.", formatCompact(rate), recommended), C.amberPale)
			end)
		end)

		for idx, p in ipairs({
			{id="Feather",label="FEATHER (LOW-LAG)",fb=4,vb=64,pm=160,hz=30,lowLag=true,cols=48},
			{id="Balanced",label="BALANCED",fb=10,vb=220,pm=80,hz=45,lowLag=false,cols=96},
			{id="Turbo",label="TURBO BUILD SPEED",fb=22,vb=340,pm=80,hz=60,lowLag=false,cols=128},
			{id="Ultra",label="ULTRA SMOOTH UI",fb=7,vb=140,pm=50,hz=60,lowLag=false,cols=80},
			}) do
			local b = makeButton(profGrid, p.label, {LayoutOrder = idx}, {selected = (perf.profile == p.id), tone = "amber", textSize = 9})
			ui.perfProfileBtns[p.id] = b
			onClick(b, function()
				perf.profile, perf.frameBudgetMs, perf.voxelBudgetK, perf.previewMs, perf.brushHz, perf.lowLagChunks, perf.tileCols = p.id, p.fb, p.vb, p.pm, p.hz, p.lowLag, p.cols
				ui.lowLagSwitch.set(p.lowLag, true)
				ui.perfFbSlider.refresh(p.fb, true); ui.perfVbSlider.refresh(p.vb, true)
				ui.perfPmSlider.refresh(p.pm, true); ui.perfHzSlider.refresh(p.hz, true)
				if ui.perfTileSlider then ui.perfTileSlider.refresh(p.cols, true) end
				for id, btn in pairs(ui.perfProfileBtns) do setButtonState(btn, {selected = (id == p.id)}) end
				setStatus("PERFORMANCE PROFILE", p.label, C.amberPale)
			end)
		end
		end
		buildPerfPage()
	end

	-- PAGE 9: LABS (Modular Sylvan Canopy #1 Trees + 14-Layer Volumetric Clouds + Placeholder)
	do
		local function buildLabsPage()
			local page = createPage("Labs")
		local treeSec = makeSection(page, "Experimental modular tree generation", 1, "Sylvan Canopy #1 · 22.56×37.36×17.53", C.rose)
		makeText(treeSec,
			"Modular 3D forest scatter system using Sylvan Canopy #1 (Slate Trunk Mesh 743209096 with dual 6-face bark textures 1352046477/1352046744 + Fabric Crown 743209371). Adaptive Mode syncs density, slope limits, snowline & leaf tint to your active biome.",
			9, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 32), TextWrapped = true, LayoutOrder = 1}
		)
		local tSwGrid = makeGrid(treeSec, 2, 56, 2, 8)
		ui.labsTreeSwitch = makeModularSwitch(tSwGrid, "Auto-Scatter Trees on World Build", "Spawns modular 3D groves automatically after voxel terrain finishes.", "FLORA", labs.treesEnabled, "rose", 1, function(on) labs.treesEnabled = on end)
		makeModularSwitch(tSwGrid, "Adaptive Terrain Metrics Sync", "Adapts tree count, scale, max slope, snowline & foliage tint to current biome.", "ADAPTIVE", labs.treesAdaptive, "rose", 2, function(on) labs.treesAdaptive = on end)

		local tSlGrid = makeGrid(treeSec, 4, 54, 3, 8)
		makeCustomSlider(tSlGrid, {label = "Spread intensity", min = 0.10, max = 2.50, step = 0.05, default = 1.00, get = function() return labs.spreadIntensity end, set = function(v) labs.spreadIntensity = v end}, 1, "rose")
		makeCustomSlider(tSlGrid, {label = "Base tree scale", min = 0.35, max = 2.20, step = 0.05, default = 0.85, get = function() return labs.baseScale end, set = function(v) labs.baseScale = v end}, 2, "rose")
		makeCustomSlider(tSlGrid, {label = "Random size var.", min = 0.00, max = 0.75, step = 0.05, default = 0.30, get = function() return labs.sizeVariance end, set = function(v) labs.sizeVariance = v end}, 3, "rose")
		makeCustomSlider(tSlGrid, {label = "Max slope limit", min = 0.25, max = 1.20, step = 0.05, default = 0.68, get = function() return labs.maxSlope end, set = function(v) labs.maxSlope = v end}, 4, "rose")

		local tActRow = makeGrid(treeSec, 2, 34, 4, 8)
		onClick(makeButton(tActRow, "🌲  SCATTER SYLVAN TREES NOW", {LayoutOrder = 1}, {selected = true, tone = "rose", special = true}), function()
			if state.busy then return end
			labs.treesEnabled = true; ui.labsTreeSwitch.set(true, true)
			task.spawn(function()
				setStatus("SCATTERING TREES", "Sampling valid slopes & spawning Sylvan Canopy #1 groves…", C.rosePale)
				local n = fn.scatterExperimentalTrees(currentConfig(), state.materialTheme, function(f) setProgress(f * 100, C.rose) end)
				setProgress(100, C.rose); playUISound("complete", 1.04, 0.95)
				setStatus("TREES SCATTERED", string.format("Placed %d Sylvan Canopy #1 models (visible on Atlas map!).", n), C.rosePale)
			end)
		end)
		onClick(makeButton(tActRow, "✕  CLEAR GENERATED TREES", {LayoutOrder = 2}, {tone = "rose"}), function()
			fn.clearGeneratedTrees()
			setStatus("TREES CLEARED", "Removed workspace.SiriusTerraformTrees.", C.muted)
		end)

		local cloudSec = makeSection(page, "Experimental 14-layer volumetric clouds", 2, "20,048-Stud Beam Canopy", C.sky)
		ui.labsCloudSwitch = makeModularSwitch(cloudSec, "Enable 14-Layer Volumetric Cloud Canopy",
			"Spawns 14 anchored Neon cloud planes (Y = -112..112) with ±10,024 attachments & 20,048-stud Beams (rbxassetid://7215671178).",
			"14 LAYERS", labs.cloudsEnabled, "sky", 1, function(on)
				labs.cloudsEnabled = on; fn.syncVolumetricClouds(currentConfig())
				setStatus("VOLUMETRIC CLOUDS", on and "14-layer volumetric cloud canopy active above terrain." or "Volumetric clouds removed.", C.skyPale)
			end)
		local cSlGrid = makeGrid(cloudSec, 4, 54, 2, 8)
		makeCustomSlider(cSlGrid, {label = "Cloud span scale", min = 0.10, max = 2.00, step = 0.05, default = 1.00, get = function() return labs.cloudScale end, set = function(v) labs.cloudScale = v; if labs.cloudsEnabled then fn.syncVolumetricClouds(currentConfig()) end end}, 1, "sky")
		makeCustomSlider(cSlGrid, {label = "Altitude offset", min = 80, max = 1200, step = 20, default = 280, get = function() return labs.cloudAltitude end, set = function(v) labs.cloudAltitude = v; if labs.cloudsEnabled then fn.syncVolumetricClouds(currentConfig()) end end}, 2, "sky")
		makeCustomSlider(cSlGrid, {label = "Beam transparency", min = 0.10, max = 0.95, step = 0.02, default = 0.60, get = function() return labs.cloudTransparency end, set = function(v) labs.cloudTransparency = v; if labs.cloudsEnabled then fn.syncVolumetricClouds(currentConfig()) end end}, 3, "sky")
		makeCustomSlider(cSlGrid, {label = "Drift speed", min = 0.000, max = 0.015, step = 0.001, default = 0.001, get = function() return labs.cloudSpeed end, set = function(v) labs.cloudSpeed = v; if labs.cloudsEnabled then fn.syncVolumetricClouds(currentConfig()) end end}, 4, "sky")

		local atmoSec = makeSection(page, "Atmospheric simulation & orbital ascent engine", 3, "High-Altitude Space Transition & Zero-G", C.sky)
		makeText(atmoSec,
			"Realistic high-altitude thermodynamic atmosphere & space vacuum simulator. Beyond the troposphere, Rayleigh sky scattering smoothly extinguishes into star-studded cosmic night, ambient air pressure decays to 0.00 atm, and gravity smoothly transitions to 0g in the vacuum of space. Falling back down smoothly restores the sky and gravity with dynamic aerodynamic re-entry compression plasma heating.",
			9, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 36), TextWrapped = true, LayoutOrder = 1}
		)

		local atmoSwGrid = makeGrid(atmoSec, 2, 56, 2, 8)
		ui.labsAtmoSimSwitch = makeModularSwitch(atmoSwGrid, "Atmospheric Simulation Active",
			"Monitors player altitude to dynamically simulate atmospheric thinning, sky blackout, and space transition.",
			"ORBITAL SIM", labs.atmoSimEnabled, "sky", 1, function(on) fn.setAtmosphericSimulation(on) end)
		makeModularSwitch(atmoSwGrid, "Zero-G Space Vacuum Physics",
			"Smoothly transitions workspace.Gravity to 0 in space vacuum and restores surface gravity upon re-entry.",
			"ZERO-G", labs.zeroG, "sky", 2, function(on) labs.zeroG = on end)
		makeModularSwitch(atmoSwGrid, "Re-Entry Compression Heating Plasma",
			"Renders aerodynamic compression plasma glow on high-speed atmospheric descent.",
			"PLASMA", labs.reentryPlasma, "rose", 3, function(on) labs.reentryPlasma = on end)
		makeModularSwitch(atmoSwGrid, "Cosmic Vacuum Acoustic Muffling",
			"Muffles surface atmospheric soundscapes in orbital vacuum with cosmic void undertones.",
			"VACUUM SFX", labs.cosmicAudio, "indigo", 4, function(on) labs.cosmicAudio = on end)

		local atmoSlGrid = makeGrid(atmoSec, 4, 54, 3, 8)
		makeCustomSlider(atmoSlGrid, {label = "Space boundary (st)", min = 2000, max = 25000, step = 500, default = 10000, get = function() return labs.spaceAlt end, set = function(v) labs.spaceAlt = v end}, 1, "sky")
		makeCustomSlider(atmoSlGrid, {label = "Transition depth (st)", min = 1000, max = 12000, step = 500, default = 5000, get = function() return labs.transDepth end, set = function(v) labs.transDepth = v end}, 2, "sky")
		makeCustomSlider(atmoSlGrid, {label = "Descent air braking", min = 0.00, max = 3.00, step = 0.10, default = 1.00, get = function() return labs.airBraking end, set = function(v) labs.airBraking = v end}, 3, "sky")
		makeCustomSlider(atmoSlGrid, {label = "Zero-G thruster RCS", min = 0.20, max = 3.00, step = 0.10, default = 1.00, get = function() return labs.rcsThrust end, set = function(v) labs.rcsThrust = v end}, 4, "sky")

		local atmoActRow = makeGrid(atmoSec, 3, 34, 4, 8)
		onClick(makeButton(atmoActRow, "🚀  LAUNCH TO ORBIT (10.5K)", {LayoutOrder = 1}, {selected = true, tone = "sky", special = true}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				if not labs.atmoSimEnabled then
					labs.atmoSimEnabled = true; ui.labsAtmoSimSwitch.set(true, true); fn.setAtmosphericSimulation(true)
				end
				labs.spaceFactor = 1.0
				pcall(function()
					root.AssemblyLinearVelocity = Vector3.zero
					char:PivotTo(CFrame.new(root.Position.X, labs.spaceAlt + 500, root.Position.Z))
				end)
				setStatus("ORBITAL ASCENT", string.format("Launched to %d studs. Welcome to zero-gravity space vacuum.", labs.spaceAlt + 500), C.skyPale)
			end
		end)
		onClick(makeButton(atmoActRow, "🪂  HIGH RE-ENTRY DROP (12K)", {LayoutOrder = 2}, {tone = "rose", special = true}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				if not labs.atmoSimEnabled then
					labs.atmoSimEnabled = true; ui.labsAtmoSimSwitch.set(true, true); fn.setAtmosphericSimulation(true)
				end
				pcall(function() char:PivotTo(CFrame.new(root.Position.X, labs.spaceAlt + 2000, root.Position.Z)) end)
				setStatus("ORBITAL DROP", "Dropped from 12,000 studs. Hold on for thermodynamic atmospheric re-entry!", C.rosePale)
			end
		end)
		onClick(makeButton(atmoActRow, "🌍  RETURN TO SURFACE", {LayoutOrder = 3}, {tone = "sky"}), function()
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			if root then
				if fn.stopReentryVFX then fn.stopReentryVFX(char) end
				pcall(function() char:PivotTo(CFrame.new(root.Position.X, 64, root.Position.Z)) end)
				setStatus("SURFACE TOUCHDOWN", "Returned safely to terrain surface level.", C.skyPale)
			end
		end)

		local atmoHudCard = new("Frame", atmoSec, {
			Size = UDim2.new(1, 0, 0, 32), BackgroundColor3 = C.inset, BackgroundTransparency = 0.08,
			BorderSizePixel = 0, LayoutOrder = 5,
		})
		corner(atmoHudCard, 6); stroke(atmoHudCard, C.stroke, 0.45); pad(atmoHudCard, 6, 10, 6, 10)
		ui.atmoHudLabel = makeText(atmoHudCard, "ALT: -- st  ·  STANDBY  ·  ENABLE ATMOSPHERIC SIMULATION TO MONITOR", 9, C.skyPale, FONT_BOLD, {
			Size = UDim2.fromScale(1, 1), TextXAlignment = Enum.TextXAlignment.Center, TextTruncate = Enum.TextTruncate.AtEnd,
		})

		local modSec = makeSection(page, "Modular staging slot", 4, "Plug-and-Play Registry", C.rose)
		local phSw
		phSw = makeModularSwitch(modSec, "im a placeholder",
			"Certified modular placeholder switch — glides smoothly, clicks crisply, and modifies 0.00 voxels until upcoming features drop.",
			"PLACEHOLDER · v0.0", labs.im_a_placeholder, "rose", 1, function(on)
				labs.im_a_placeholder = on
				phSw.setBadge(on and "ARMED · DOING NOTHING :)" or "PLACEHOLDER · v0.0")
			end)
		end
		buildLabsPage()
	end

	-- PAGE 10: WORLD (Expanded Explorer QoL, 3 Waypoints, Lighting/Physics Restore, Audio & Share Codes)
	do
		local function buildWorldPage()
			local page = createPage("World")
		local navQoLSec = makeSection(page, "Explorer mobility, environment & audio QoL", 1, "Speed, FOV, Time & SFX", C.indigo)
		local tpGrid = makeGrid(navQoLSec, 4, 34, 1, 8)
		ui.tpCenterBtn = makeButton(tpGrid, "TELEPORT TO CENTER", {LayoutOrder = 1}, {tone = "indigo", special = true})
		ui.tpPeakBtn = makeButton(tpGrid, "TELEPORT TO PEAK", {LayoutOrder = 2}, {tone = "indigo", special = true})
		ui.autoTpToggle = makeButton(tpGrid, "AUTO-TP ON BUILD · OFF", {LayoutOrder = 3}, {tone = "indigo"})
		ui.soundToggleBtn = makeButton(tpGrid, "MENU SOUNDS · ON", {LayoutOrder = 4}, {selected = true, tone = "indigo"})

		local envSwGrid = makeGrid(navQoLSec, 2, 56, 2, 8)
		ui.expBoostSw = makeModularSwitch(envSwGrid, "Explorer WalkSpeed & JumpPower Boost", "Boosts character speed & jump height so you can traverse 7,168-stud worlds effortlessly.", "EXPLORER", state.worldExplorerBoost, "indigo", 1, function(on) state.worldExplorerBoost = on; fn.applyExplorerQoL() end)
		ui.lowGSw = makeModularSwitch(envSwGrid, "Lunar Low-Gravity Walk (0.28g)", "Temporarily lowers workspace.Gravity for high-altitude cliff & spire inspection.", "LOW-G", state.worldLowGravity, "indigo", 2, function(on) state.worldLowGravity = on; fn.applyExplorerQoL() end)

		local envSlGrid = makeGrid(navQoLSec, 5, 54, 3, 8)
		makeCustomSlider(envSlGrid, {label = "Time of day", min = 0, max = 23.8, step = 0.2, default = 14, get = function() return state.worldClockTime end, set = function(v) state.worldClockTime = v; fn.applyExplorerQoL() end}, 1, "indigo")
		makeCustomSlider(envSlGrid, {label = "Brightness", min = 0.2, max = 5.0, step = 0.1, default = 2.0, get = function() return state.worldBrightness end, set = function(v) state.worldBrightness = v; fn.applyExplorerQoL() end}, 2, "indigo")
		makeCustomSlider(envSlGrid, {label = "Camera FOV", min = 55, max = 115, step = 1, default = 70, get = function() return state.worldCameraFov end, set = function(v) state.worldCameraFov = v; fn.applyExplorerQoL() end}, 3, "indigo")
		makeCustomSlider(envSlGrid, {label = "WalkSpeed", min = 16, max = 150, step = 2, default = 38, get = function() return state.worldWalkSpeed end, set = function(v) state.worldWalkSpeed = v; fn.applyExplorerQoL() end}, 4, "indigo")
		makeCustomSlider(envSlGrid, {label = "SFX Volume", min = 0.05, max = 1.0, step = 0.05, default = 0.45, get = function() return state.soundVolume end, set = function(v) state.soundVolume = v end}, 5, "indigo")

		local envActRow = makeGrid(navQoLSec, 2, 32, 4, 8)
		onClick(makeButton(envActRow, "✦  TEST SPECIAL BUTTON SFX (117649901456711)", {LayoutOrder = 1}, {tone = "planet", special = true}), function()
			setStatus("AUDIO CHECK", "Played Special Button SFX (rbxassetid://117649901456711).", C.planetPale)
		end)
		onClick(makeButton(envActRow, "↺  RESTORE ORIGINAL LIGHTING & PHYSICS", {LayoutOrder = 2}, {tone = "indigo"}), function()
			planet.liveSkySync, planet.liveGravitySync, state.worldExplorerBoost, state.worldLowGravity, state.worldCameraFov = false, false, false, false, 70
			if ui.planetSwitches.skySync then ui.planetSwitches.skySync.set(false, true) end
			if ui.planetSwitches.gravSync then ui.planetSwitches.gravSync.set(false, true) end
			ui.expBoostSw.set(false, true); ui.lowGSw.set(false, true)
			fn.restoreOriginalEnvironment(); fn.applyExplorerQoL()
			setStatus("ENVIRONMENT RESTORED", "Restored original place Lighting, Atmosphere, FOV & Gravity.", C.indigoPale)
		end)

		-- 3 Coordinate Waypoint Bookmarks
		local wpSec = makeSection(page, "Coordinate waypoint bookmarks", 2, "3 Instant Teleport Slots", C.indigo)
		for slotIdx = 1, 3 do
			local row = new("Frame", wpSec, {Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, LayoutOrder = slotIdx})
			local saved = session.waypoints[slotIdx]
			local lbl = makeText(row, saved and string.format("WAYPOINT #%d  ·  (%d, %d, %d)", slotIdx, saved.X, saved.Y, saved.Z) or string.format("WAYPOINT #%d  ·  [Empty Slot]", slotIdx), 10, saved and C.text or C.dim, FONT_BOLD, {Size = UDim2.new(1, -172, 1, 0)})
			ui.waypointLabels[slotIdx] = lbl
			local svBtn = makeButton(row, "SAVE POS", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -86, 0, 0), Size = UDim2.fromOffset(80, 30)}, {tone = "indigo", textSize = 9})
			local goBtn = makeButton(row, "TELEPORT", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(80, 30)}, {tone = "indigo", textSize = 9, special = true})
			onClick(svBtn, function()
				local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				if not rootPart then return end
				local p = rootPart.Position
				session.waypoints[slotIdx] = Vector3.new(round(p.X), round(p.Y), round(p.Z))
				lbl.Text = string.format("WAYPOINT #%d  ·  (%d, %d, %d)", slotIdx, round(p.X), round(p.Y), round(p.Z))
				lbl.TextColor3 = C.text
			end)
			onClick(goBtn, function()
				local wp = session.waypoints[slotIdx]
				local char = LocalPlayer.Character
				if wp and char then char:PivotTo(CFrame.new(wp + Vector3.new(0, 4, 0))) end
			end)
		end

		local boundSec = makeSection(page, "Generation volume & safety", 3, "Up To 7,168 × 7,168", C.indigo)
		ui.boundsSummary = makeText(boundSec, "", 12, C.text, FONT_BOLD, {Size = UDim2.new(1, 0, 0, 20), LayoutOrder = 1})
		ui.boundsSub = makeText(boundSec, "", 10, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 32), TextWrapped = true, LineHeight = 1.2, LayoutOrder = 2})
		local optGrid = makeGrid(boundSec, 3, 34, 3, 8)
		ui.replaceToggle = makeButton(optGrid, "REPLACE LAST  ·  ON", {LayoutOrder = 1}, {selected = true})
		ui.confirmToggle = makeButton(optGrid, "2-CLICK CONFIRM  ·  ON", {LayoutOrder = 2}, {selected = true})
		ui.worldBoundsToggle = makeButton(optGrid, "3D BOUNDS BOX  ·  OFF", {LayoutOrder = 3})

		local histSec = makeSection(page, "History & world operations", 4, "Undo Stack", C.indigo)
		ui.historyLabel = makeText(histSec, "", 10, C.muted, FONT, {Size = UDim2.new(1, 0, 0, 18), LayoutOrder = 1})
		local opsGrid = makeGrid(histSec, 3, 36, 2, 8)
		ui.undoButton = makeButton(opsGrid, "UNDO LAST BUILD (0)", {LayoutOrder = 1})
		ui.clearButton = makeButton(opsGrid, "CLEAR CURRENT BOUNDS", {LayoutOrder = 2}, {tone = "danger"})
		ui.resetButton = makeButton(opsGrid, "RESET ALL SETTINGS", {LayoutOrder = 3})

		local shareSec = makeSection(page, "Share / import configuration", 5, "STF2| Format", C.indigo)
		local shareRow = new("Frame", shareSec, {Size = UDim2.new(1, 0, 0, 34), BackgroundTransparency = 1, LayoutOrder = 1})
		ui.shareBox = new("TextBox", shareRow, {
			Size = UDim2.new(1, -228, 1, 0), BackgroundColor3 = C.inset, BorderSizePixel = 0, ClearTextOnFocus = false,
			PlaceholderText = "Paste an STF2|... share code here or click EXPORT", PlaceholderColor3 = C.dim,
			Text = "", TextColor3 = C.text, TextSize = 11, Font = FONT_MED, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd,
		})
		corner(ui.shareBox, 7); stroke(ui.shareBox, C.stroke, 0.5); pad(ui.shareBox, 0, 10, 0, 10)
		ui.exportButton = makeButton(shareRow, "EXPORT / COPY", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -112, 0, 0), Size = UDim2.fromOffset(106, 34)})
		ui.importButton = makeButton(shareRow, "APPLY CODE", {AnchorPoint = Vector2.new(1, 0), Position = UDim2.fromScale(1, 0), Size = UDim2.fromOffset(106, 34)}, {selected = true})
		end
		buildWorldPage()
	end

	----------------------------------------------------------------------------------------------------
	-- 14. LIVE PREVIEW, FULL-SCALE ATLAS RENDERER, 3D ADORNMENTS & WORKFLOW CONTROLLERS
	----------------------------------------------------------------------------------------------------
	fn.triggerMapScanline = function()
		if not alive or perf.ecoAnimations then return end
		ui.mapScanline.Position = UDim2.fromScale(0, -0.14)
		ui.mapScanline.BackgroundTransparency = 0.45
		tween(ui.mapScanline, 0.52, {Position = UDim2.fromScale(0, 1.05), BackgroundTransparency = 0.95}, Enum.EasingStyle.Quint)
	end

	local function syncBoundsVisual(cfg, bounds)
		if not state.showBounds then
			boundsPart.Parent = nil
			if wireframeBounds then wireframeBounds.Parent = nil end
			return
		end
		cfg = cfg or currentConfig(); bounds = bounds or computeBounds(cfg)
		local x0, y0, z0, x1, y1, z1 = bounds.minX, bounds.minY, bounds.minZ, bounds.maxX, bounds.maxY, bounds.maxZ
		if wireframeBounds then
			boundsPart.Parent = nil; wireframeBounds:Clear(); wireframeBounds.Color3 = C.accent
			local p000, p100, p001, p101 = Vector3.new(x0,y0,z0), Vector3.new(x1,y0,z0), Vector3.new(x0,y0,z1), Vector3.new(x1,y0,z1)
			local p010, p110, p011, p111 = Vector3.new(x0,y1,z0), Vector3.new(x1,y1,z0), Vector3.new(x0,y1,z1), Vector3.new(x1,y1,z1)
			wireframeBounds:AddLine(p000,p100); wireframeBounds:AddLine(p100,p101); wireframeBounds:AddLine(p101,p001); wireframeBounds:AddLine(p001,p000)
			wireframeBounds:AddLine(p010,p110); wireframeBounds:AddLine(p110,p111); wireframeBounds:AddLine(p111,p011); wireframeBounds:AddLine(p011,p010)
			wireframeBounds:AddLine(p000,p010); wireframeBounds:AddLine(p100,p110); wireframeBounds:AddLine(p101,p111); wireframeBounds:AddLine(p001,p011)
			wireframeBounds.Parent = Terrain
		else
			boundsPart.Size = Vector3.new(math.min(2048, x1 - x0), math.min(2048, y1 - y0), math.min(2048, z1 - z0))
			boundsPart.CFrame = CFrame.new((x0 + x1) * 0.5, (y0 + y1) * 0.5, (z0 + z1) * 0.5)
			boundsPart.Parent = workspace
		end
	end

	local function render3DBrushCursor()
		if not brushWire then return end
		if (not brush.armed and not brush.pickMode) or not brush.displayPos then brushWire.Parent = nil; return end
		brushWire:Clear()
		local toolMeta = BRUSH_TOOL_MAP[brush.tool] or BRUSH_TOOLS[1]
		brushWire.Color3 = brush.pickMode == "River" and C.blue or (brush.pickMode == "Trail" and C.amber or toolMeta.color)
		local center, r = brush.displayPos, math.max(3, brush.displayRadius)
		local segs, prevOuter, prevInner, innerR = perf.ecoAnimations and 20 or 28, nil, nil, r * 0.48
		for i = 0, segs do
			local ang = (i / segs) * math.pi * 2
			local ca, sa = math.cos(ang), math.sin(ang)
			local ox, oz = center.X + ca * r, center.Z + sa * r
			local pOut = Vector3.new(ox, sampleLiveTerrainHeight(ox, oz, center.Y) + 0.35, oz)
			local pIn = Vector3.new(center.X + ca * innerR, center.Y + 0.35, center.Z + sa * innerR)
			if prevOuter then brushWire:AddLine(prevOuter, pOut); brushWire:AddLine(prevInner, pIn) end
			prevOuter, prevInner = pOut, pIn
		end
		brushWire:AddLine(center, center + brush.hoverNormal * math.max(5, r * 0.32))
		if brush.waypointA then
			local a = brush.waypointA
			brushWire:AddLine(a, a + Vector3.new(0, 26, 0)); brushWire:AddLine(a + Vector3.new(0, 2, 0), center + Vector3.new(0, 2, 0))
		end
		brushWire.Parent = Terrain
	end

	fn.refreshBrushUI = function()
		local toolMeta = BRUSH_TOOL_MAP[brush.tool] or BRUSH_TOOLS[1]
		local uCount = #session.brushHistory
		ui.brushArmBtn.Text = brush.armed and "✎  3D BRUSH ARMED  ·  ON [B]" or "✎  ARM 3D BRUSH  ·  OFF [B]"
		setButtonState(ui.brushArmBtn, {selected = brush.armed})
		ui.brushUndoBtn.Text = string.format("UNDO BRUSH STROKE (%d)", uCount)
		setButtonState(ui.brushUndoBtn, {disabled = state.busy or uCount == 0})
		ui.hudUndoBtn.Text = string.format("UNDO (%d)", uCount)
		setButtonState(ui.hudUndoBtn, {disabled = state.busy or uCount == 0})
		for id, btn in pairs(ui.brushToolBtns) do setButtonState(btn, {selected = (id == brush.tool)}) end
		for id, btn in pairs(ui.hudToolBtns) do setButtonState(btn, {selected = (id == brush.tool)}) end
		for fName, btn in pairs(ui.brushFalloffBtns) do setButtonState(btn, {selected = (fName == brush.falloff)}) end
		for mat, entry in pairs(ui.brushMatBtns) do
			setButtonState(entry.button, {selected = (mat == brush.material)})
			if mat ~= M.Water and mat ~= M.Air then entry.swatch.BackgroundColor3 = MATERIAL_COLORS[mat] or C.accent end
		end
		ui.brushToolDesc.Text = toolMeta.desc
		ui.hudDot.BackgroundColor3, ui.sculptHudStroke.Color = toolMeta.color, toolMeta.color
		ui.hudStudioBtn.Text = state.windowOpen and "HIDE UI" or "STUDIO"
		ui.hudInfo.Text = brush.pickMode
			and (brush.waypointA and ("CLICK POINT B · 3D " .. string.upper(brush.pickMode)) or ("CLICK POINT A · 3D " .. string.upper(brush.pickMode)))
			or string.format("%s  ·  R:%d  ·  STR:%.0f%%  ·  %s", toolMeta.label, brush.radius, brush.strength * 100, brush.material.Name)
		setButtonState(ui.pick3DRiverBtn, {selected = (brush.pickMode == "River")})
		setButtonState(ui.pick3DTrailBtn, {selected = (brush.pickMode == "Trail")})
	end

	fn.setMinimized = function(min)
		if min ~= nil then
			state.minimized = (min == true)
		else
			state.minimized = not state.minimized
		end
		if state.minimized then
			ui.minButton.Text = "+"
			ui.headerMask.Visible = false
			if ui.sidebar then ui.sidebar.Visible = false end
			if ui.body then ui.body.Visible = false end
			if ui.footer then ui.footer.Visible = false end
			if ui.header then ui.header.ZIndex = 20 end
			ui.minButton.ZIndex = 25
			ui.closeButton.ZIndex = 25
			if ui.taskbarButton then ui.taskbarButton.ZIndex = 25 end
			tween(shell, 0.36, {Size = UDim2.fromOffset(K.WINDOW_W, K.HEADER_H)}, Enum.EasingStyle.Quint)
			setStatus("WINDOW MINIMIZED", "Collapsed to header bar. Click [+] or [⤓] to restore.", C.accentPale)
		else
			ui.minButton.Text = "–"
			tween(shell, 0.36, {Size = UDim2.fromOffset(K.WINDOW_W, K.WINDOW_H)}, Enum.EasingStyle.Quint)
			ui.headerMask.Visible = true
			if ui.sidebar then ui.sidebar.Visible = true end
			if ui.body then ui.body.Visible = true end
			if ui.footer then ui.footer.Visible = true end
			setStatus("WINDOW MAXIMIZED", "Restored full 1120×780 forge studio.", C.accentPale)
		end
	end

	fn.setTaskbarDocked = function(docked)
		if docked ~= nil then
			state.taskbarDocked = (docked == true)
		else
			state.taskbarDocked = not state.taskbarDocked
		end
		if state.taskbarDocked then
			playUISound("click", 0.95, 0.8)
			if state.minimized then fn.setMinimized(false) end

			local token = {}
			state.toggleToken = token
			if canUseCanvasGroup and root:IsA("CanvasGroup") then
				tween(root, 0.30, {GroupTransparency = 1}, Enum.EasingStyle.Quint)
			else
				tween(root, 0.30, {BackgroundTransparency = 1}, Enum.EasingStyle.Quint)
			end
			tween(rootScale, 0.30, {Scale = ui.baseScale * 0.82}, Enum.EasingStyle.Quint)
			tween(shell, 0.30, {Position = UDim2.new(0.5, 0, 1, 40)}, Enum.EasingStyle.Quint)

			task.delay(0.30, function()
				if alive and state.taskbarDocked and state.toggleToken == token then
					shell.Visible = false
				end
			end)

			if ui.taskbar then
				ui.taskbar.Visible = true
				ui.taskbar.Position = UDim2.new(0.5, 0, 1, 60)
				tween(ui.taskbar, 0.36, {Position = UDim2.new(0.5, 0, 1, -12)}, Enum.EasingStyle.Quint)
				ui.tbStatus.Text = string.format("%s  ·  %d×%d  ·  %s", string.upper(activeStyleLabel()), values.Width, values.Depth, state.busy and "BUILDING" or "READY")
			end
			setStatus("TASKBAR LOCKED", "Sirius studio minimized and locked to lower screen taskbar.", C.accentPale)
		else
			playUISound("click", 1.05, 0.8)
			if ui.taskbar then
				tween(ui.taskbar, 0.26, {Position = UDim2.new(0.5, 0, 1, 60)}, Enum.EasingStyle.Quint)
				task.delay(0.26, function()
					if alive and not state.taskbarDocked and ui.taskbar then
						ui.taskbar.Visible = false
					end
				end)
			end

			state.windowOpen = true
			shell.Visible = true
			gui.Enabled = true
			shell.Position = UDim2.fromScale(0.5, 0.52)
			fn.fadeInMenu(0.38)
			setStatus("STUDIO RESTORED", "Restored Sirius Terraform Forge from lower taskbar.", C.accentPale)
		end
	end

	fn.toggleWindowCompact = function(forceOpen)
		if state.taskbarDocked then
			fn.setTaskbarDocked(false)
			return
		end
		state.windowOpen = (forceOpen ~= nil) and forceOpen or (not state.windowOpen)
		fn.refreshBrushUI()
		if state.windowOpen then
			fn.fadeInMenu(0.36)
		else
			fn.fadeOutMenu(0.24)
		end
	end

	fn.setBrushArmed = function(on)
		brush.armed = on == true
		if not brush.armed then brush.pickMode, brush.waypointA, brush.strokeDown = nil, nil, false; if brushWire then brushWire.Parent = nil end end
		fn.refreshBrushUI()
		if brush.armed or brush.pickMode then
			ui.sculptHud.Visible = true
			tween(ui.sculptHud, 0.34, {Position = UDim2.new(0.5, 0, 0, 8)}, Enum.EasingStyle.Quint)
			setPill("BRUSH ARMED", C.cyan)
		else
			tween(ui.sculptHud, 0.26, {Position = UDim2.new(0.5, 0, 0, -64)}, Enum.EasingStyle.Quint)
			task.delay(0.28, function() if alive and not brush.armed and not brush.pickMode then ui.sculptHud.Visible = false end end)
			if not state.busy then setPill(planet.liveSkySync and "PLANET SYNC" or "CLIENT READY", planet.liveSkySync and C.planet or C.accent) end
			if not state.windowOpen then fn.toggleWindowCompact(true) end
		end
	end

	fn.refreshHistoryUI = function()
		local count = #session.history
		local cfg = currentConfig()
		local b = computeBounds(cfg)
		local mega = boundsVoxelCount(b) > K.MAX_SNAP_VOXELS
		local tileCols = activeTileCols()
		local sectors = math.ceil((cfg.Width / K.VOXEL) / tileCols) * math.ceil((cfg.Depth / K.VOXEL) / tileCols)
		ui.engineInfo.Text = string.format(
			"Writer: %s (%d×%dst)\nSectors: %d  ·  Slice: %dms\nPlanet: %s (%.2fg)\nUndo: %d/%d  ·  Brush: %d/%d",
			writeMode, tileCols * K.VOXEL, tileCols * K.VOXEL, sectors, perf.frameBudgetMs,
			planet.archetype, planet.gravityG, count, K.HISTORY_LIMIT, #session.brushHistory, K.BRUSH_HIST_LIMIT
		)
		ui.historyLabel.Text = string.format("Undo stack: %d / %d builds  ·  Brush undo: %d / %d strokes  ·  %s",
			count, K.HISTORY_LIMIT, #session.brushHistory, K.BRUSH_HIST_LIMIT, (CAN_SNAPSHOT and not mega) and "Snapshot restore" or "Clear to air")
		ui.undoButton.Text = string.format("UNDO LAST BUILD (%d)", count)
		setButtonState(ui.undoButton, {disabled = state.busy or count == 0})
		fn.refreshBrushUI()
	end

	fn.refreshSynthUI = function()
		local dom = SYNTH_DOMAINS[state.synthDomain] or SYNTH_DOMAINS[1]
		local feat = SYNTH_FEATURES[state.synthFeature] or SYNTH_FEATURES[1]
		local isSynth = (state.style == "Synthesized")
		ui.slot1.name.Text, ui.slot1.tag.Text = string.upper(dom.name), dom.tag
		ui.slot1.lock.Text = state.lockDomain and "LOCKED" or "UNLOCKED"; setButtonState(ui.slot1.lock, {selected = state.lockDomain})
		ui.slot2.name.Text, ui.slot2.tag.Text = string.upper(feat.name), feat.tag
		ui.slot2.lock.Text = state.lockFeature and "LOCKED" or "UNLOCKED"; setButtonState(ui.slot2.lock, {selected = state.lockFeature})

		ui.synthTitle.Text = (isSynth and "✦  ACTIVE: " or "✦  ") .. string.upper(dom.name .. " " .. feat.name)
		ui.synthTitle.TextColor3 = isSynth and C.purplePale or C.text
		ui.synthRecipe.Text = string.format("[1] %s (%s / %s)  +  [2] %s (%s)  ·  Water: %s",
			dom.name, dom.top.Name, dom.cliff.Name, feat.name, string.lower(feat.tag), (feat.forceWater or dom.waterOn) and dom.water or "Dry")
		local palette = STYLES.Synthesized.palette
		for i = 1, 4 do ui.synthSwatches[i].BackgroundColor3 = MATERIAL_COLORS[palette[i]] or C.accent end
		for i, card in ipairs(ui.synthDeckCards) do
			local entry = session.synthDeck[i]
			if entry then
				local d, f = SYNTH_DOMAINS[entry.domain] or SYNTH_DOMAINS[1], SYNTH_FEATURES[entry.feature] or SYNTH_FEATURES[1]
				local selected = isSynth and state.synthDomain == entry.domain and state.synthFeature == entry.feature
				card.name.Text, card.name.TextColor3 = string.upper(d.name .. " " .. f.name), selected and C.purplePale or C.text
				card.sub.Text = d.top.Name .. " & " .. d.cliff.Name .. "  ·  " .. string.lower(f.tag)
				card.bar.BackgroundTransparency = selected and 0 or 0.65
				setButtonState(card.button, {selected = selected})
				card.swatches[1].BackgroundColor3 = MATERIAL_COLORS[d.top] or C.accent
				card.swatches[2].BackgroundColor3 = MATERIAL_COLORS[d.alt] or C.accent
				card.swatches[3].BackgroundColor3 = MATERIAL_COLORS[d.cliff] or C.accent
			end
		end
	end

	fn.refreshBiomeUI = function()
		local style = STYLES[state.style] or STYLES.Rolling
		for name, btn in pairs(ui.styleButtons) do setButtonState(btn, {selected = name == state.style}) end
		for name, btn in pairs(ui.themeButtons) do setButtonState(btn, {selected = name == state.materialTheme}) end
		for name, card in pairs(ui.biomeCards) do
			local selected = name == state.style
			setButtonState(card.button, {selected = selected})
			card.title.TextColor3 = selected and C.biomePale or C.text
			card.bar.BackgroundTransparency = selected and 0 or 0.7
			for _, sw in ipairs(card.swatches) do sw.frame.BackgroundColor3 = MATERIAL_COLORS[sw.mat] or C.biome end
		end
		local label = string.upper(activeStyleLabel()) .. (state.style == "Synthesized" and " (SYNTH)" or "")
		ui.previewProfileLabel.Text = "Active: " .. label
		ui.biomeNotes.Text = string.format("%s\n\n%s\nMaterials: %s", style.desc, style.notes, style.materials)
		fn.refreshSynthUI(); fn.refreshBrushUI()
	end

	fn.refreshWaterUI = function()
		local preset = WATER_PRESETS[state.waterPreset] or WATER_PRESETS.Ocean
		ui.waterToggle.Text = "WATER ENABLED  ·  " .. (state.waterEnabled and "ON" or "OFF")
		setButtonState(ui.waterToggle, {selected = state.waterEnabled})
		for name, btn in pairs(ui.waterButtons) do setButtonState(btn, {selected = name == state.waterPreset}) end
		tween(ui.waterSwatch, 0.25, {BackgroundColor3 = preset.color})
		ui.waterDesc.Text = preset.desc
		tween(ui.seaFill, 0.25, {BackgroundColor3 = preset.color})
	end

	fn.selectMaterialTheme = function(themeName, silent)
		if not MATERIAL_THEMES[themeName] then return end
		state.materialTheme = themeName
		applyMaterialTheme(themeName)
		fn.refreshBiomeUI(); requestPreview(true); fn.triggerMapScanline()
		if not silent then setStatus("MATERIAL PALETTE", themeName .. "  ·  " .. MATERIAL_THEMES[themeName].desc, C.biomePale) end
	end

	fn.selectWaterPreset = function(name, applyValues)
		local preset = WATER_PRESETS[name]
		if not preset then return end
		state.waterPreset = name
		if applyValues then
			for _, key in ipairs(WATER_KEYS) do setValue(key, preset[key], true, true) end
			if not state.busy then applyWaterLook(currentConfig()) end
			setStatus("WATER PRESET", name .. "  ·  " .. preset.desc, C.bluePale)
		end
		fn.refreshWaterUI(); requestPreview(true)
	end

	fn.selectStyle = function(name, applyPresetValues)
		local style = STYLES[name]
		if not style then return end
		state.style = name
		if applyPresetValues then
			for k, v in pairs(style.preset) do setValue(k, v, true, true) end
			state.waterEnabled = true
			if style.water then fn.selectWaterPreset(style.water, true) end
			setStatus("STYLE SELECTED", name .. "  ·  " .. style.desc, C.accentPale)
		end
		fn.refreshBiomeUI(); fn.refreshWaterUI(); requestPreview(true); fn.triggerMapScanline()
	end

	fn.applySynthCombination = function(domIdx, featIdx, applyParams, optionalSeed)
		state.synthDomain, state.synthFeature = clamp(domIdx, 1, #SYNTH_DOMAINS), clamp(featIdx, 1, #SYNTH_FEATURES)
		local dom, feat = compileSynthesizedStyle(state.synthDomain, state.synthFeature)
		state.style = "Synthesized"
		if applyParams then
			setValue("MaxHeight", dom.height * feat.hMul, true, true); setValue("Roughness", feat.rough, true, true)
			setValue("Detail", feat.detail, true, true); setValue("Warp", feat.warp, true, true)
			setValue("CaveDensity", feat.caves, true, true); setValue("TerraceSteps", feat.terraces, true, true)
			setValue("RidgeSharpness", feat.sharp, true, true); setValue("FlatFloor", feat.flat, true, true)
			setValue("Erosion", feat.erosion or 0.15, true, true); setValue("MoistureShift", dom.moisture, true, true)
			setValue("EdgeFalloff", (feat.name == "Islets" or feat.name == "Atolls") and 0.1 or 0.07, true, true)
			setValue("SeaLevel", feat.forceWater and math.max(38, dom.sea) or dom.sea, true, true)
			if optionalSeed then setValue("Seed", optionalSeed, true, true) end
			state.waterEnabled = feat.forceWater or dom.waterOn
			fn.selectWaterPreset(dom.water, true)
		end
		fn.refreshBiomeUI(); fn.refreshWaterUI(); requestPreview(true); fn.triggerMapScanline()
		setStatus("SYNTHESIZED PROFILE", string.upper(dom.name .. " " .. feat.name) .. "  ·  " .. STYLES.Synthesized.desc, C.purplePale)
	end

	fn.teleportCharacterTo = function(wx, wz, label)
		local char = LocalPlayer.Character
		local rootPart = char and char:FindFirstChild("HumanoidRootPart")
		if not rootPart then setStatus("NO CHARACTER", "Spawn your character first before teleporting.", C.warn); return end
		local cfg = currentConfig()
		local sampler = buildSampler(cfg)
		local h = sampler(wx, wz)
		local safeY = math.max(h, cfg.WaterEnabled and cfg.SeaLevel or K.MIN_Y) + 6
		rootPart.AssemblyLinearVelocity = Vector3.zero
		char:PivotTo(CFrame.new(wx, safeY, wz))
		setStatus("TELEPORTED", string.format("%s  ·  (%d, %d, %d)", label or "Moved character", round(wx), round(safeY), round(wz)), C.accentPale)
	end

	local function encodeShareCode(cfg)
		cfg = cfg or currentConfig()
		local styleToken = cfg.Style
		if styleToken == "Synthesized" then
			styleToken = "Synthesized:" .. (SYNTH_DOMAINS[state.synthDomain] or SYNTH_DOMAINS[1]).name .. "+" .. (SYNTH_FEATURES[state.synthFeature] or SYNTH_FEATURES[1]).name
		end
		local waterToken = state.materialTheme ~= "Default" and (cfg.WaterPreset .. "@" .. state.materialTheme) or cfg.WaterPreset
		local parts = {"STF2", styleToken, waterToken, cfg.WaterEnabled and "1" or "0"}
		for _, key in ipairs(FIELD_ORDER) do table.insert(parts, rawText(key, cfg[key])) end
		return table.concat(parts, "|")
	end

	local function decodeShareCode(text)
		text = string.gsub(tostring(text or ""), "^%s*(.-)%s*$", "%1")
		local parts = string.split(text, "|")
		if parts[1] ~= "STF2" or #parts < 20 then return false, "Invalid code (expected STF2|...)." end
		local waterPart, themePart = string.match(parts[3], "^([^@]+)@(.+)$")
		waterPart = waterPart or parts[3]
		if not WATER_PRESETS[waterPart] then return false, "Unknown water preset." end
		local styleToken = parts[2]
		local domName, featName = string.match(styleToken, "^Synthesized:([%w]+)%+([%w]+)$")
		if domName and featName then
			local dIdx, fIdx
			for i, it in ipairs(SYNTH_DOMAINS) do if string.lower(it.name) == string.lower(domName) then dIdx = i end end
			for i, it in ipairs(SYNTH_FEATURES) do if string.lower(it.name) == string.lower(featName) then fIdx = i end end
			if not dIdx or not fIdx then return false, "Unknown synth pair." end
			state.synthDomain, state.synthFeature = dIdx, fIdx; compileSynthesizedStyle(dIdx, fIdx); state.style = "Synthesized"
		elseif STYLES[styleToken] then state.style = styleToken else return false, "Unknown style." end
		state.waterPreset, state.waterEnabled = waterPart, parts[4] ~= "0"
		ui.syncingSquare = true
		for i, key in ipairs(FIELD_ORDER) do setValue(key, parts[4 + i] ~= nil and parts[4 + i] or FIELDS[key].default, true, true) end
		ui.syncingSquare = false
		if themePart and MATERIAL_THEMES[themePart] then fn.selectMaterialTheme(themePart, true) end
		fn.refreshBiomeUI(); fn.refreshWaterUI(); requestPreview(true); fn.triggerMapScanline()
		return true
	end

	local function updatePlayerMarker(cfg)
		local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if not rootPart then ui.playerDot.Visible, ui.atlasPlayerDot.Visible = false, false; return end
		local pos = rootPart.Position
		local u = (pos.X - (cfg.CenterX - cfg.Width * 0.5)) / cfg.Width
		local v = (pos.Z - (cfg.CenterZ - cfg.Depth * 0.5)) / cfg.Depth
		local inMap = (u >= 0 and u <= 1 and v >= 0 and v <= 1)
		ui.playerDot.Visible = inMap
		if inMap then ui.playerDot.Position = UDim2.new(0, 5 + u * 164, 0, 5 + v * 164) end
		local span = 1 / atlas.zoom
		local au, av = (u - (atlas.centerU - span * 0.5)) / span, (v - (atlas.centerV - span * 0.5)) / span
		local inAtlas = (au >= 0 and au <= 1 and av >= 0 and av <= 1)
		ui.atlasPlayerDot.Visible = inAtlas
		if inAtlas then ui.atlasPlayerDot.Position = UDim2.fromScale(au, av) end
	end

	fn.renderAtlas = function()
		atlas.dirty = false
		local cfg = currentConfig()
		local style = STYLES[cfg.Style] or STYLES.Rolling
		local sampler = buildSampler(cfg)
		local b = computeBounds(cfg)
		local N = K.ATLAS_GRID
		local span = 1 / atlas.zoom
		local u0, v0 = atlas.centerU - span * 0.5, atlas.centerV - span * 0.5
		local waterColor = (WATER_PRESETS[cfg.WaterPreset] or WATER_PRESETS.Ocean).color
		local sea, water, invMax = cfg.SeaLevel, cfg.WaterEnabled, 1 / cfg.MaxHeight
		local ctx = {sea = sea, water = water, maxH = cfg.MaxHeight, strataAt = style.strataAt, grassSpread = cfg.GrassSpread, cliffMul = cfg.CliffAngle, snowLine = cfg.SnowLine, beachW = cfg.BeachWidth, pathTag = 0}

		for iz = 1, N do
			local wz = b.minZ + (v0 + ((iz - 0.5) / N) * span) * cfg.Depth
			for ix = 1, N do
				local wx = b.minX + (u0 + ((ix - 0.5) / N) * span) * cfg.Width
				local h, m, f, pTag = sampler(wx, wz)
				local col
				if water and h < sea then
					col = waterColor:Lerp(Color3.fromRGB(10, 26, 38), clamp((sea - h) / 42, 0, 1) * 0.55)
				else
					local gx = (sampler(wx + K.VOXEL, wz) - h) / K.VOXEL
					local gz = (sampler(wx, wz + K.VOXEL) - h) / K.VOXEL
					ctx.h, ctx.slope, ctx.rel, ctx.moisture, ctx.feature, ctx.pathTag = h, math.sqrt(gx * gx + gz * gz), (h - K.SURFACE_BASE) * invMax, m, f, pTag or 0
					local mat = pickSurface(style, ctx)
					local baseColor = (ctx.pathTag == 2) and Color3.fromRGB(204, 180, 128) or (MATERIAL_COLORS[mat] or C.accent)
					if atlas.relief then
						local shade = clamp(0.84 + ctx.rel * 0.28 + (gx - gz) * 0.14, 0.58, 1.22)
						col = Color3.new(clamp(baseColor.R * shade, 0, 1), clamp(baseColor.G * shade, 0, 1), clamp(baseColor.B * shade, 0, 1))
					else
						col = baseColor
					end
				end
				ui.atlasCells[(iz - 1) * N + ix].BackgroundColor3 = col
			end
		end

		local subdiv = atlas.zoom >= 5.0 and 16 or (atlas.zoom >= 2.6 and 8 or 4)
		local studPerCell = round((cfg.Width * span) / subdiv)
		ui.atlasInfoLbl.Text = string.format("ZOOM %.1f×  ·  %d×%d ADAPTIVE GRID (A1–%s%d · %d st/cell)", atlas.zoom, subdiv, subdiv, colLetters(subdiv), subdiv, studPerCell)

		for i = 1, 16 do
			local showLine = atlas.showGrid and (i < subdiv)
			local showLbl = atlas.showGrid and (i <= subdiv)
			ui.atlasVLines[i].Visible, ui.atlasHLines[i].Visible = showLine, showLine
			ui.atlasColLbls[i].Visible, ui.atlasRowLbls[i].Visible = showLbl, showLbl
			if showLine then
				ui.atlasVLines[i].Position = UDim2.fromScale(i / subdiv, 0)
				ui.atlasHLines[i].Position = UDim2.fromScale(0, i / subdiv)
			end
			if showLbl then
				local cIdx = clamp(math.floor((u0 + ((i - 0.5) / subdiv) * span) * subdiv) + 1, 1, subdiv)
				local rIdx = clamp(math.floor((v0 + ((i - 0.5) / subdiv) * span) * subdiv) + 1, 1, subdiv)
				ui.atlasColLbls[i].Text = colLetters(cIdx)
				ui.atlasColLbls[i].Position = UDim2.new((i - 0.5) / subdiv, -11, 0, -17)
				ui.atlasRowLbls[i].Text = tostring(rIdx)
				ui.atlasRowLbls[i].Position = UDim2.new(0, -28, (i - 0.5) / subdiv, -8)
			end
		end

		-- Interactive Waypoint Pins (Slots 1..3)
		for slotIdx = 1, 3 do
			local pin = ui.atlasWpPins[slotIdx]
			if pin then
				local wp = session.waypoints[slotIdx]
				if atlas.showMarkers and wp then
					local wu = (wp.X - b.minX) / cfg.Width
					local wv = (wp.Z - b.minZ) / cfg.Depth
					local au, av = (wu - u0) / span, (wv - v0) / span
					local inView = (au >= 0 and au <= 1 and av >= 0 and av <= 1)
					pin.Visible = inView
					if inView then pin.Position = UDim2.fromScale(au, av) end
				else pin.Visible = false end
			end
		end

		for i = 1, #ui.atlasTreeDots do
			local pt = labs.cachedPoints[i]
			local td = ui.atlasTreeDots[i]
			if pt then
				local au, av = (pt.u - u0) / span, (pt.v - v0) / span
				td.Visible = (au >= 0 and au <= 1 and av >= 0 and av <= 1)
				if td.Visible then td.Position = UDim2.fromScale(au, av) end
			else td.Visible = false end
		end
		updatePlayerMarker(cfg)
	end

	fn.renderPreview = function()
		ui.previewDirty = false
		local cfg = currentConfig()
		local style = STYLES[cfg.Style] or STYLES.Rolling
		local sampler = buildSampler(cfg)
		local bounds = computeBounds(cfg)
		local N = K.PREVIEW_GRID
		local stride, stepX, stepZ = N + 2, cfg.Width / N, cfg.Depth / N
		local minX, minZ = bounds.minX, bounds.minZ

		local H = table.create((N + 2) * stride, 0)
		local M_ARR, F_ARR, P_ARR = table.create(N * N, 0), table.create(N * N, 0), table.create(N * N, 0)
		for ix = 0, N + 1 do
			local wx = minX + (ix - 0.5) * stepX
			local insideX = ix >= 1 and ix <= N
			for iz = 0, N + 1 do
				local h, m, f, pTag = sampler(wx, minZ + (iz - 0.5) * stepZ)
				H[ix * stride + iz + 1] = h
				if insideX and iz >= 1 and iz <= N then
					local ci = (ix - 1) * N + iz
					M_ARR[ci], F_ARR[ci], P_ARR[ci] = m, f, pTag or 0
				end
			end
		end

		local waterColor = (WATER_PRESETS[cfg.WaterPreset] or WATER_PRESETS.Ocean).color
		local sea, water = cfg.SeaLevel, cfg.WaterEnabled
		local inv2X, inv2Z, invMax = 1 / (2 * stepX), 1 / (2 * stepZ), 1 / cfg.MaxHeight
		local exactSlope = (stepX > K.VOXEL * 3) or (stepZ > K.VOXEL * 3)
		local ctx = {sea = sea, water = water, maxH = cfg.MaxHeight, strataAt = style.strataAt, grassSpread = cfg.GrassSpread, cliffMul = cfg.CliffAngle, snowLine = cfg.SnowLine, beachW = cfg.BeachWidth, pathTag = 0}

		local minH, maxH, wetCount = math.huge, -math.huge, 0
		local bestX, bestZ = cfg.CenterX, cfg.CenterZ
		for iz = 1, N do
			local wz = minZ + (iz - 0.5) * stepZ
			for ix = 1, N do
				local wx = minX + (ix - 0.5) * stepX
				local k = ix * stride + iz + 1
				local h = H[k]
				if h < minH then minH = h end
				if h > maxH then maxH, bestX, bestZ = h, wx, wz end
				local gx = exactSlope and ((sampler(wx + K.VOXEL, wz) - h) / K.VOXEL) or ((H[k + stride] - H[k - stride]) * inv2X)
				local gz = exactSlope and ((sampler(wx, wz + K.VOXEL) - h) / K.VOXEL) or ((H[k + 1] - H[k - 1]) * inv2Z)
				local ci = (ix - 1) * N + iz
				ctx.h, ctx.slope, ctx.rel, ctx.moisture, ctx.feature, ctx.pathTag = h, math.sqrt(gx * gx + gz * gz), (h - K.SURFACE_BASE) * invMax, M_ARR[ci], F_ARR[ci], P_ARR[ci]
				local color
				if water and h < sea then
					wetCount += 1
					color = waterColor:Lerp(Color3.fromRGB(10, 26, 38), clamp((sea - h) / 42, 0, 1) * 0.55)
				else
					local mat = pickSurface(style, ctx)
					local baseColor = (ctx.pathTag == 2) and Color3.fromRGB(204, 180, 128) or (MATERIAL_COLORS[mat] or C.accent)
					local shade = clamp(0.84 + ctx.rel * 0.28 + (gx - gz) * 0.14, 0.58, 1.22)
					color = Color3.new(clamp(baseColor.R * shade, 0, 1), clamp(baseColor.G * shade, 0, 1), clamp(baseColor.B * shade, 0, 1))
				end
				ui.mapCells[(iz - 1) * N + ix].BackgroundColor3 = color
			end
		end
		ui.lastPeakPos = {x = bestX, z = bestZ}

		local scaleTop = math.max(K.SURFACE_BASE + cfg.MaxHeight, water and sea + 6 or 0, maxH + 4)
		local pLow, pHigh = math.huge, -math.huge
		local shouldTweenBars = (ui.activeSlider == nil and not perf.ecoAnimations)
		for i = 1, K.PROFILE_BARS do
			local wx = minX + ((i - 0.5) / K.PROFILE_BARS) * cfg.Width
			local h, m, f, pTag = sampler(wx, cfg.CenterZ)
			local h2 = sampler(wx + K.VOXEL, cfg.CenterZ)
			if h < pLow then pLow = h end; if h > pHigh then pHigh = h end
			ctx.h, ctx.slope, ctx.rel, ctx.moisture, ctx.feature, ctx.pathTag = h, math.abs(h2 - h) / K.VOXEL, (h - K.SURFACE_BASE) * invMax, m, f, pTag or 0
			local mat = pickSurface(style, ctx)
			local bar = ui.profileBars[i]
			local targetSize = UDim2.new(1 / K.PROFILE_BARS, -1, clamp(h / scaleTop, 0.04, 0.98), 0)
			local targetColor = (water and h < sea) and (MATERIAL_COLORS[mat] or C.accent):Lerp(waterColor, 0.45) or (MATERIAL_COLORS[mat] or C.accent)
			if shouldTweenBars then tween(bar, 0.24, {Size = targetSize, BackgroundColor3 = targetColor}) else bar.Size, bar.BackgroundColor3 = targetSize, targetColor end
		end

		local seaFrac = clamp(sea / scaleTop, 0, 1)
		ui.seaFill.Visible, ui.seaLine.Visible = water, water
		if shouldTweenBars then tween(ui.seaFill, 0.24, {Size = UDim2.fromScale(1, seaFrac)}); tween(ui.seaLine, 0.24, {Position = UDim2.fromScale(0, 1 - seaFrac)})
		else ui.seaFill.Size, ui.seaLine.Position = UDim2.fromScale(1, seaFrac), UDim2.fromScale(0, 1 - seaFrac) end
		ui.profileRange.Text = string.format("Y %d .. %d studs  ·  sea %s", round(pLow), round(pHigh), water and ("Y " .. sea) or "off")

		local nx, nz = cfg.Width / K.VOXEL, cfg.Depth / K.VOXEL
		local writeTop = math.max(ceilVoxel(maxH + K.VOXEL), water and ceilVoxel(sea + K.VOXEL) or K.MIN_Y)
		local estVoxels = nx * nz * math.max(1, (writeTop - K.MIN_Y) / K.VOXEL)
		local sectors = math.ceil(nx / activeTileCols()) * math.ceil(nz / activeTileCols())

		ui.metricAnim.relief.target, ui.metricAnim.water.target, ui.metricAnim.water.on, ui.metricAnim.voxels.target = maxH - minH, wetCount / (N * N) * 100, water, estVoxels
		ui.metricValues[4].Text = string.format("%d × %d", cfg.Width, cfg.Depth)
		ui.boundsSummary.Text = string.format("%d × %d studs  ·  center (%d, %d)  ·  Y %d .. %d  (%d sector%s)", cfg.Width, cfg.Depth, cfg.CenterX, cfg.CenterZ, bounds.minY, bounds.maxY, sectors, sectors == 1 and "" or "s")
		ui.boundsSub.Text = string.format("X [%d .. %d]  ·  Z [%d .. %d]  ·  %s columns  ·  ~%s voxels", bounds.minX, bounds.maxX, bounds.minZ, bounds.maxZ, formatCompact(nx * nz), formatCompact(estVoxels))
		if not ui.shareBox:IsFocused() then ui.shareBox.Text = encodeShareCode(cfg) end
		if state.activePage == "Atlas" then fn.renderAtlas() end
		fn.refreshHistoryUI(); syncBoundsVisual(cfg, bounds); updatePlayerMarker(cfg)
	end

	----------------------------------------------------------------------------------------------------
	-- 15. GENERATION, PAGE NAVIGATION, EVENT WIRING & HEARTBEAT LOOP (WITH 3D PLANET ANIMATION)
	----------------------------------------------------------------------------------------------------
	do
		local function mapCoordsFromScreen(screenPos)
			local absPos, absSize = ui.mapHitBox.AbsolutePosition, ui.mapHitBox.AbsoluteSize
			local u, v = clamp((screenPos.X - absPos.X) / math.max(1, absSize.X), 0, 1), clamp((screenPos.Y - absPos.Y) / math.max(1, absSize.Y), 0, 1)
			local cfg = currentConfig()
			local b = computeBounds(cfg)
			return b.minX + u * cfg.Width, b.minZ + v * cfg.Depth, u, v, cfg
		end
		ui.mapHitBox.MouseMoved:Connect(function(x, y)
			local wx, wz, u, v, cfg = mapCoordsFromScreen(Vector2.new(x, y))
			ui.mapReticle.Visible = true; ui.mapReticle.Position = UDim2.fromScale(u, v)
			local sampler = buildSampler(cfg)
			local h = sampler(wx, wz)
			ui.mapReadout.Text = string.format("X %d · Z %d · Y %d", round(wx), round(wz), round(h))
			ui.mapReadout.TextColor3 = C.accentPale
		end)
		ui.mapHitBox.MouseLeave:Connect(function()
			ui.mapReticle.Visible = false; ui.mapReadout.Text = "Click map: Teleport  ·  Shift+Click: Set Center"; ui.mapReadout.TextColor3 = C.dim
		end)
		ui.mapHitBox.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local wx, wz = mapCoordsFromScreen(input.Position)
				playUISound("click", 1.08, 0.7)
				if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
					setValue("CenterX", wx, true); setValue("CenterZ", wz, false, true); fn.triggerMapScanline()
				else fn.teleportCharacterTo(wx, wz, "Map teleport") end
			end
		end)
	end

	local function disarmConfirmations()
		state.generateArmed, state.armToken, state.clearArmed, state.clearToken = false, nil, false, nil
		if not state.busy then ui.generateButton.Text = "GENERATE WORLD"; setButtonState(ui.generateButton, {selected = true, tone = "normal"}) end
		ui.clearButton.Text = "CLEAR CURRENT BOUNDS"
	end
	local function setBusy(busy)
		state.busy = busy; fn.refreshHistoryUI()
		for _, b in ipairs({ui.clearButton, ui.resetButton, ui.importButton, ui.synthRollBtn, ui.synthApplyBtn, ui.auto3DRiverBtn, ui.auto3DTrailBtn}) do setButtonState(b, {disabled = busy}) end
	end

	fn.startGeneration = function()
		if writeMode == "Unavailable" then setStatus("UNSUPPORTED ENVIRONMENT", "No Terrain voxel write API available.", C.danger); return end
		disarmConfirmations()
		local cfg, styleLabel = currentConfig(), activeStyleLabel()
		local bounds = computeBounds(cfg)
		local job = {cancelled = false}; state.job = job; setBusy(true)
		ui.generateButton.Text = "CANCEL BUILD"; setButtonState(ui.generateButton, {selected = false, tone = "danger"})
		setPill("GENERATING", C.warn); setProgress(1, C.accent); ui.timing.Text = ""

		job.report = function(percent, message, eta)
			if not alive then return end
			setProgress(percent, C.accent); setStatus("GENERATING", message, C.accentPale)
			ui.timing.Text = eta and eta > 0.4 and ("ETA ~" .. formatDuration(eta)) or ""
		end

		task.spawn(function()
			if state.replacePrevious and #session.history > 0 then
				local prev = table.remove(session.history)
				setStatus("RESTORING PREVIOUS", "Restoring terrain under previous build…", C.muted)
				pcall(restoreEntry, prev); disposeEntry(prev); fn.refreshHistoryUI(); task.wait()
			end
			local snap = takeSnapshot(bounds)
			local entry = {bounds = bounds, snapshot = snap, writtenTiles = (snap == nil) and {} or nil, seed = cfg.Seed, style = styleLabel}
			pushHistory(entry); fn.refreshHistoryUI(); task.wait()
			applyWaterLook(cfg)
			local ok, result = pcall(writeTerrain, cfg, bounds, job, entry.writtenTiles)

			state.job, ui.timing.Text = nil, ""
			ui.generateButton.Text = "GENERATE WORLD"; setButtonState(ui.generateButton, {selected = true, tone = "normal"})
			if ok then
				entry.writtenTiles = nil
				if labs.treesEnabled then
					setStatus("SCATTERING TREES", "Placing Sylvan Canopy #1 groves…", C.rosePale)
					fn.scatterExperimentalTrees(cfg, state.materialTheme)
				end
				if labs.cloudsEnabled then fn.syncVolumetricClouds(cfg) end
				setBusy(false); setProgress(100, C.accent)
				setPill(brush.armed and "BRUSH ARMED" or "WORLD READY", brush.armed and C.cyan or C.accent)
				playUISound("complete", 1.0, 1.15)
				spawnRipple(ui.generateButton, nil, C.accentPale)
				if state.autoTeleport then fn.teleportCharacterTo(cfg.CenterX, cfg.CenterZ, "Auto-placed on surface") end
				setStatus("GENERATION COMPLETE", string.format("%s  ·  %d×%d  ·  %s voxels in %.2fs  (seed %d)", styleLabel, cfg.Width, cfg.Depth, formatCompact(result.voxels), result.seconds, cfg.Seed), C.accentPale)
			else
				local wasCancelled = tostring(result) == K.CANCELLED or job.cancelled
				local idx = table.find(session.history, entry); if idx then table.remove(session.history, idx) end
				pcall(restoreEntry, entry); disposeEntry(entry); setBusy(false)
				setProgress(0, wasCancelled and C.warn or C.danger)
				setPill(wasCancelled and "CANCELLED" or "BUILD FAILED", wasCancelled and C.warn or C.danger)
				setStatus(wasCancelled and "GENERATION CANCELLED" or "GENERATION FAILED", wasCancelled and "Cancelled — restored." or ("Error: " .. tostring(result)), wasCancelled and C.warn or C.danger)
			end
		end)
	end

	fn.switchPage = function(pageName, instant)
		local token = {}; state.pageToken = token; state.activePage = pageName
		local accentPack = PAGE_ACCENTS[pageName] or PAGE_ACCENTS.Terrain
		for name, page in pairs(ui.pages) do
			local active = (name == pageName)
			page.Visible = active
			if active and not instant then
				local p = ui.pagePads[name]
				if p then p.PaddingTop = UDim.new(0, 12); tween(p, 0.34, {PaddingTop = UDim.new(0, 2)}, Enum.EasingStyle.Quint) end
				for idx, sec in ipairs(ui.pageSections[name] or {}) do
					sec.scale.Scale = 0.984; sec.frame.BackgroundTransparency = 0.25
					task.delay((idx - 1) * 0.030, function()
						if alive and state.pageToken == token then
							tween(sec.scale, 0.34, {Scale = 1}, Enum.EasingStyle.Quint)
							tween(sec.frame, 0.34, {BackgroundTransparency = 0.04}, Enum.EasingStyle.Quint)
						end
					end)
				end
			end
		end
		if pageName == "Atlas" and atlas.dirty then fn.renderAtlas() end

		local navTarget = ui.navButtons[pageName]
		if navTarget then
			if instant then
				ui.navHighlight.Position = UDim2.fromOffset(0, navTarget.y)
				ui.navHighlight.BackgroundColor3 = accentPack.soft
				ui.navHiStroke.Color, ui.navHiBar.BackgroundColor3 = accentPack.main, accentPack.main
				ui.topLine.BackgroundColor3, ui.auroraWash.BackgroundColor3 = accentPack.main, accentPack.main
				if ui.taskbarStroke then ui.taskbarStroke.Color = accentPack.main end
				if ui.tbHairline then ui.tbHairline.BackgroundColor3 = accentPack.main end
				if ui.tbLogoGrad then ui.tbLogoGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, accentPack.pale), ColorSequenceKeypoint.new(0.5, accentPack.main), ColorSequenceKeypoint.new(1, accentPack.soft)}) end
			else
				ui.navHiBar.Size = UDim2.fromOffset(3, 28)
				tween(ui.navHiBar, 0.34, {Size = UDim2.fromOffset(3, 18), BackgroundColor3 = accentPack.main}, Enum.EasingStyle.Quint)
				tween(ui.navHighlight, 0.32, {Position = UDim2.fromOffset(0, navTarget.y), BackgroundColor3 = accentPack.soft}, Enum.EasingStyle.Quint)
				tween(ui.navHiStroke, 0.32, {Color = accentPack.main}, Enum.EasingStyle.Quint)
				tween(ui.topLine, 0.32, {BackgroundColor3 = accentPack.main}, Enum.EasingStyle.Quint)
				tween(ui.auroraWash, 0.45, {BackgroundColor3 = accentPack.main}, Enum.EasingStyle.Quint)
				if ui.taskbarStroke then tween(ui.taskbarStroke, 0.32, {Color = accentPack.main}, Enum.EasingStyle.Quint) end
				if ui.tbHairline then tween(ui.tbHairline, 0.32, {BackgroundColor3 = accentPack.main}, Enum.EasingStyle.Quint) end
				if ui.tbLogoGrad then ui.tbLogoGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, accentPack.pale), ColorSequenceKeypoint.new(0.5, accentPack.main), ColorSequenceKeypoint.new(1, accentPack.soft)}) end
			end
		end

		for name, item in pairs(ui.navButtons) do
			local active = (name == pageName)
			local pal = item.pal
			if active then tween(item.button, 0.2, {BackgroundTransparency = 1}) end
			tween(item.badge, 0.22, {BackgroundColor3 = pal.soft, BackgroundTransparency = active and 0.04 or 0.38})
			tween(item.badgeStroke, 0.22, {Transparency = active and 0.15 or 0.62})
			tween(item.icon, 0.22, {TextColor3 = active and pal.pale or pal.main})
			tween(item.title, 0.22, {TextColor3 = active and C.text or C.muted})
			tween(item.sub, 0.22, {TextColor3 = active and pal.pale or C.dim})
			tween(item.dot, 0.22, {BackgroundTransparency = active and 0 or 0.55})
		end
	end

	for name, item in pairs(ui.navButtons) do
		item.button.MouseEnter:Connect(function() if state.activePage ~= name then tween(item.button, 0.2, {BackgroundTransparency = 0.55, BackgroundColor3 = C.cardHover}) end end)
		item.button.MouseLeave:Connect(function() if state.activePage ~= name then tween(item.button, 0.22, {BackgroundTransparency = 1, BackgroundColor3 = C.card}) end end)
		item.button.Activated:Connect(function()
			if name == "Space" and not item.unlocked then
				playUISound("click", 0.70, 0.5)
				setStatus("SPACE RADAR INACTIVE", "Vessel is on planetary surface. Ascend to space vacuum (1,000+ studs) or launch in Labs to engage orbital tracking.", C.warn)
				return
			end
			playUISound("click", 1.03, 0.75); spawnRipple(item.button, nil, item.pal.main); fn.switchPage(name, false)
		end)
	end

	-- Wire Brush, Synth, World & Footer Buttons
	onClick(ui.brushArmBtn, function() fn.setBrushArmed(not brush.armed) end)
	onClick(ui.hudDisarmBtn, function() fn.setBrushArmed(false) end)
	onClick(ui.brushCompactBtn, function() if not brush.armed then fn.setBrushArmed(true) end; fn.toggleWindowCompact(false) end)
	onClick(ui.hudStudioBtn, function() fn.toggleWindowCompact(not state.windowOpen) end)

	local function triggerBrushUndo()
		if state.busy or #session.brushHistory == 0 then return end
		local ok, label = undoLastBrushStroke(); fn.refreshHistoryUI()
		if ok then playUISound("click", 0.94, 0.75); setStatus("BRUSH UNDO", "Reverted stroke (" .. tostring(label or "sculpt") .. ").", C.cyanPale) end
	end
	onClick(ui.brushUndoBtn, triggerBrushUndo); onClick(ui.hudUndoBtn, triggerBrushUndo)
	for id, btn in pairs(ui.hudToolBtns) do
		onClick(btn, function() brush.tool, brush.pickMode, brush.waypointA = id, nil, nil; fn.refreshBrushUI() end)
	end

	local function start3DPathCarve(kind, pA, pB)
		if state.busy then return end
		setBusy(true); setPill("CARVING 3D " .. string.upper(kind), C.cyan); setProgress(5, C.cyan)
		task.spawn(function()
			local ok, info = fn.carveAlgorithmicPathIn3D(kind, pA, pB, currentConfig(), function(pct) setProgress(pct, C.cyan) end)
			setBusy(false); setProgress(ok and 100 or 0, ok and C.cyan or C.warn)
			setPill(brush.armed and "BRUSH ARMED" or "CLIENT READY", brush.armed and C.cyan or C.accent)
			if ok then playUISound("complete", 1.06, 0.9); setStatus("3D " .. string.upper(kind) .. " COMPLETE", string.format("Carved %d spline waypoints onto 3D terrain.", info), C.cyanPale)
			else setStatus("ROUTE SKIPPED", tostring(info), C.warn) end
		end)
	end
	local function armWaypointPicker(kind)
		if brush.pickMode == kind then brush.pickMode, brush.waypointA = nil, nil; fn.refreshBrushUI(); return end
		fn.setBrushArmed(true); brush.pickMode, brush.waypointA = kind, nil; fn.refreshBrushUI()
		setStatus("PICK WAYPOINT A", "Click Point A on the 3D terrain.", C.cyanPale)
	end
	onClick(ui.pick3DRiverBtn, function() armWaypointPicker("River") end)
	onClick(ui.pick3DTrailBtn, function() armWaypointPicker("Trail") end)
	onClick(ui.auto3DRiverBtn, function() start3DPathCarve("River", nil, nil) end)
	onClick(ui.auto3DTrailBtn, function() start3DPathCarve("Trail", nil, nil) end)

	onClick(ui.slot1.lock, function() state.lockDomain = not state.lockDomain; fn.refreshSynthUI() end)
	onClick(ui.slot2.lock, function() state.lockFeature = not state.lockFeature; fn.refreshSynthUI() end)
	onClick(ui.slot1.prev, function() if not state.rolling then fn.applySynthCombination((state.synthDomain - 2) % #SYNTH_DOMAINS + 1, state.synthFeature, true) end end)
	onClick(ui.slot1.next, function() if not state.rolling then fn.applySynthCombination(state.synthDomain % #SYNTH_DOMAINS + 1, state.synthFeature, true) end end)
	onClick(ui.slot2.prev, function() if not state.rolling then fn.applySynthCombination(state.synthDomain, (state.synthFeature - 2) % #SYNTH_FEATURES + 1, true) end end)
	onClick(ui.slot2.next, function() if not state.rolling then fn.applySynthCombination(state.synthDomain, state.synthFeature % #SYNTH_FEATURES + 1, true) end end)
	onClick(ui.synthApplyBtn, function() if not state.busy and not state.rolling then fn.applySynthCombination(state.synthDomain, state.synthFeature, true) end end)
	onClick(ui.synthInspectBtn, function() if state.style ~= "Synthesized" then fn.applySynthCombination(state.synthDomain, state.synthFeature, true) end; fn.switchPage("Terrain") end)

	onClick(ui.synthRollBtn, function()
		if state.busy or state.rolling or (state.lockDomain and state.lockFeature) then return end
		state.rolling = true; setButtonState(ui.synthRollBtn, {disabled = true})
		task.spawn(function()
			local targetDom, targetFeat = state.synthDomain, state.synthFeature
			if not state.lockDomain then repeat targetDom = math.random(1, #SYNTH_DOMAINS) until targetDom ~= state.synthDomain end
			if not state.lockFeature then repeat targetFeat = math.random(1, #SYNTH_FEATURES) until targetFeat ~= state.synthFeature end
			for step = 1, 7 do
				if not alive then return end
				playUISound("click", 0.94 + step * 0.03, 0.36)
				if not state.lockDomain then local d = SYNTH_DOMAINS[(targetDom + step) % #SYNTH_DOMAINS + 1]; ui.slot1.name.Text, ui.slot1.tag.Text = string.upper(d.name), d.tag end
				if not state.lockFeature then local f = SYNTH_FEATURES[(targetFeat + step) % #SYNTH_FEATURES + 1]; ui.slot2.name.Text, ui.slot2.tag.Text = string.upper(f.name), f.tag end
				task.wait(0.042)
			end
			local newSeed = math.random(1000, 999999)
			table.insert(session.synthDeck, 1, {domain = targetDom, feature = targetFeat, seed = newSeed})
			while #session.synthDeck > K.SYNTH_DECK_SIZE do table.remove(session.synthDeck) end
			state.rolling = false; setButtonState(ui.synthRollBtn, {disabled = state.busy})
			fn.applySynthCombination(targetDom, targetFeat, true, newSeed)
		end)
	end)

	onClick(ui.rollDeckBtn, function()
		if state.busy or state.rolling then return end
		local used = {}
		for i = 1, K.SYNTH_DECK_SIZE do
			local d, f, key
			for _ = 1, 20 do d, f = math.random(1, #SYNTH_DOMAINS), math.random(1, #SYNTH_FEATURES); key = d .. ":" .. f; if not used[key] then break end end
			used[key] = true; session.synthDeck[i] = {domain = d, feature = f, seed = math.random(1000, 999999)}
		end
		fn.refreshSynthUI()
	end)

	onClick(ui.squareLockBtn, function()
		state.squareLock = not state.squareLock
		ui.squareLockBtn.Text = "LOCK SQUARE (W=D) · " .. (state.squareLock and "ON" or "OFF")
		setButtonState(ui.squareLockBtn, {selected = state.squareLock})
		if state.squareLock and values.Depth ~= values.Width then setValue("Depth", values.Width, false, true) end
	end)

	local function toggleSound()
		state.soundEnabled = not state.soundEnabled
		ui.muteButton.Text = state.soundEnabled and "SFX" or "MUTE"; setButtonState(ui.muteButton, {selected = state.soundEnabled})
		ui.soundToggleBtn.Text = "MENU SOUNDS · " .. (state.soundEnabled and "ON" or "OFF"); setButtonState(ui.soundToggleBtn, {selected = state.soundEnabled})
		if state.soundEnabled then playUISound("click", 1.05, 0.8) end
	end
	onClick(ui.muteButton, toggleSound); onClick(ui.soundToggleBtn, toggleSound)

	onClick(ui.tpCenterBtn, function() fn.teleportCharacterTo(values.CenterX, values.CenterZ, "Teleported to center") end)
	onClick(ui.tpPeakBtn, function()
		if ui.lastPeakPos then fn.teleportCharacterTo(ui.lastPeakPos.x, ui.lastPeakPos.z, "Teleported to highest peak")
		else fn.teleportCharacterTo(values.CenterX, values.CenterZ, "Teleported to center") end
	end)
	onClick(ui.autoTpToggle, function()
		state.autoTeleport = not state.autoTeleport
		ui.autoTpToggle.Text = "AUTO-TP ON BUILD · " .. (state.autoTeleport and "ON" or "OFF")
		setButtonState(ui.autoTpToggle, {selected = state.autoTeleport})
	end)

	onClick(ui.generateButton, function()
		if state.busy then if state.job then state.job.cancelled = true end; return end
		if state.confirmGenerate and not state.generateArmed then
			local token = {}; state.generateArmed, state.armToken = true, token
			ui.generateButton.Text = "CONFIRM GENERATE"; setButtonState(ui.generateButton, {selected = false, tone = "warn"})
			setStatus("CONFIRM GENERATION", "Click CONFIRM GENERATE within 4s to write terrain inside bounds.", C.warn)
			task.delay(K.CONFIRM_WINDOW, function()
				if state.armToken == token and state.generateArmed and not state.busy then
					state.generateArmed, state.armToken = false, nil
					ui.generateButton.Text = "GENERATE WORLD"; setButtonState(ui.generateButton, {selected = true, tone = "normal"})
				end
			end)
			return
		end
		fn.startGeneration()
	end)

	onClick(ui.undoButton, function()
		if state.busy or #session.history == 0 then return end
		disarmConfirmations(); local entry = table.remove(session.history); setBusy(true)
		task.spawn(function() pcall(restoreEntry, entry); disposeEntry(entry); setBusy(false); setProgress(0); setStatus("UNDO COMPLETE", "Restored previous terrain state.", C.accentPale) end)
	end)

	onClick(ui.clearButton, function()
		if state.busy then return end
		if not state.clearArmed then
			local token = {}; state.clearArmed, state.clearToken = true, token; ui.clearButton.Text = "CONFIRM CLEAR BOUNDS"
			task.delay(K.CONFIRM_WINDOW, function() if state.clearToken == token and state.clearArmed and not state.busy then state.clearArmed = false; ui.clearButton.Text = "CLEAR CURRENT BOUNDS" end end)
			return
		end
		disarmConfirmations(); local bounds = computeBounds(currentConfig()); setBusy(true)
		task.spawn(function()
			pushHistory({bounds = bounds, snapshot = takeSnapshot(bounds), style = "Clear", seed = 0})
			pcall(clearRegion, bounds, function(frac) setProgress(frac * 100, C.warn) end)
			fn.clearGeneratedTrees(); setBusy(false); setProgress(0); setStatus("BOUNDS CLEARED", "Cleared bounds to air.", C.accentPale)
		end)
	end)

	onClick(ui.resetButton, function()
		if state.busy then return end
		disarmConfirmations(); state.style, state.waterPreset, state.waterEnabled, state.squareLock = "Rolling", "Ocean", true, true
		ui.syncingSquare = true
		for _, key in ipairs(FIELD_ORDER) do setValue(key, FIELDS[key].default, true, true) end
		ui.syncingSquare = false; fn.selectMaterialTheme("Default", true)
		refreshSizeChips(); fn.refreshBiomeUI(); fn.refreshWaterUI(); requestPreview(true); fn.triggerMapScanline()
	end)

	onClick(ui.centerPlayerBtn, function()
		local r = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		if r then setValue("CenterX", r.Position.X, true); setValue("CenterZ", r.Position.Z, false, true); fn.triggerMapScanline() end
	end)
	onClick(ui.centerCamBtn, function()
		local cam = workspace.CurrentCamera
		if cam then setValue("CenterX", cam.CFrame.Position.X, true); setValue("CenterZ", cam.CFrame.Position.Z, false, true); fn.triggerMapScanline() end
	end)
	onClick(ui.randomSeedBtn, function() setValue("Seed", math.random(-999999, 999999), false, true); fn.triggerMapScanline() end)

	local function toggleShowBounds()
		state.showBounds = not state.showBounds
		ui.boundsToggleBtn.Text = "SHOW BOUNDS  ·  " .. (state.showBounds and "ON" or "OFF")
		ui.worldBoundsToggle.Text = "3D BOUNDS BOX  ·  " .. (state.showBounds and "ON" or "OFF")
		setButtonState(ui.boundsToggleBtn, {selected = state.showBounds}); setButtonState(ui.worldBoundsToggle, {selected = state.showBounds})
		syncBoundsVisual()
	end
	onClick(ui.boundsToggleBtn, toggleShowBounds); onClick(ui.worldBoundsToggle, toggleShowBounds)
	onClick(ui.waterToggle, function() state.waterEnabled = not state.waterEnabled; fn.refreshWaterUI(); requestPreview(true) end)
	onClick(ui.replaceToggle, function() state.replacePrevious = not state.replacePrevious; ui.replaceToggle.Text = "REPLACE LAST  ·  " .. (state.replacePrevious and "ON" or "OFF"); setButtonState(ui.replaceToggle, {selected = state.replacePrevious}) end)
	onClick(ui.confirmToggle, function() state.confirmGenerate = not state.confirmGenerate; disarmConfirmations(); ui.confirmToggle.Text = "2-CLICK CONFIRM  ·  " .. (state.confirmGenerate and "ON" or "OFF"); setButtonState(ui.confirmToggle, {selected = state.confirmGenerate}) end)
	onClick(ui.exportButton, function()
		local code = encodeShareCode(); ui.shareBox.Text = code
		if type(setclipboard) == "function" and pcall(setclipboard, code) then setStatus("SHARE CODE COPIED", "Copied STF2 share code to clipboard.", C.accentPale) end
	end)
	onClick(ui.importButton, function()
		if state.busy then return end
		local ok, err = decodeShareCode(ui.shareBox.Text)
		if ok then applyWaterLook(currentConfig()); setStatus("SHARE CODE APPLIED", "Loaded STF2 configuration.", C.accentPale) else setStatus("INVALID CODE", err, C.danger) end
	end)

	-- Window Fit, Dragging, Shortcuts & Heartbeat Loop
	local function fitWindow()
		local cam = workspace.CurrentCamera
		if not cam then return end
		local vp = cam.ViewportSize
		ui.baseScale = clamp(math.min((vp.X - 28) / K.WINDOW_W, (vp.Y - 28) / K.WINDOW_H), 0.50, 1)
		if state.windowOpen and not state.taskbarDocked then rootScale.Scale = ui.baseScale end
	end
	fitWindow()
	if workspace.CurrentCamera then bind(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(fitWindow)) end

	local function isPointerOverStudioUI(mousePos)
		if not gui.Enabled then return false end
		local inset = GuiService:GetGuiInset()
		local gx, gy = mousePos.X, mousePos.Y - inset.Y
		if shell.Visible then
			local p, s = root.AbsolutePosition, root.AbsoluteSize
			if gx >= p.X and gx <= p.X + s.X and gy >= p.Y and gy <= p.Y + s.Y then return true end
		end
		if ui.sculptHud.Visible then
			local p, s = ui.sculptHud.AbsolutePosition, ui.sculptHud.AbsoluteSize
			if gx >= p.X and gx <= p.X + s.X and gy >= p.Y and gy <= p.Y + s.Y then return true end
		end
		if ui.taskbar and ui.taskbar.Visible then
			local p, s = ui.taskbar.AbsolutePosition, ui.taskbar.AbsoluteSize
			if gx >= p.X and gx <= p.X + s.X and gy >= p.Y and gy <= p.Y + s.Y then return true end
		end
		return false
	end

	local function raycastViewportTerrain()
		local cam = workspace.CurrentCamera
		if not cam then return nil end
		local mPos = UserInputService:GetMouseLocation()
		local ray = cam:ViewportPointToRay(mPos.X, mPos.Y)
		local params = (brush.tool == "Paint" and brush.material == M.Water) and terrainDryRayParams or terrainRayParams
		local hit = workspace:Raycast(ray.Origin, ray.Direction * 3200, params)
		if hit then return hit.Position, hit.Normal end
		if (brush.tool == "Raise" or brush.tool == "Flatten" or brush.tool == "Trail") and math.abs(ray.Direction.Y) > 0.02 then
			local t = ((brush.lockFlattenY and brush.flattenY or K.SURFACE_BASE) - ray.Origin.Y) / ray.Direction.Y
			if t > 4 and t < 2600 then return ray.Origin + ray.Direction * t, Vector3.yAxis end
		end
		return nil
	end

	local draggingWindow, dragStartMouse, dragStartPos = false, nil, nil
	ui.dragHandle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingWindow, dragStartMouse, dragStartPos = true, input.Position, shell.Position
		end
	end)

	bind(UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not UserInputService:GetFocusedTextBox() then
			if input.KeyCode == Enum.KeyCode.RightShift then
				if state.taskbarDocked then
					fn.setTaskbarDocked(false)
				else
					playUISound("click", state.windowOpen and 0.92 or 1.06, 0.65)
					fn.toggleWindowCompact(not state.windowOpen)
				end
				return
			elseif input.KeyCode == Enum.KeyCode.B and not gameProcessed then
				playUISound("click", brush.armed and 0.92 or 1.08, 0.75); fn.setBrushArmed(not brush.armed); return
			elseif (input.KeyCode == Enum.KeyCode.LeftBracket or input.KeyCode == Enum.KeyCode.RightBracket) and not gameProcessed then
				brush.radius = clamp(brush.radius + (input.KeyCode == Enum.KeyCode.RightBracket and 4 or -4), 6, 120)
				if ui.brushRadiusSlider then ui.brushRadiusSlider.refresh(brush.radius, true) end
				fn.refreshBrushUI(); return
			elseif input.KeyCode == Enum.KeyCode.Z and (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then
				triggerBrushUndo(); return
			end
		end

		if (brush.armed or brush.pickMode) and not state.busy and not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton1 then
			if isPointerOverStudioUI(UserInputService:GetMouseLocation()) then return end
			local hitPos, hitNormal = raycastViewportTerrain()
			if not hitPos then return end
			if brush.pickMode then
				playUISound("click", 1.1, 0.8)
				if not brush.waypointA then brush.waypointA = hitPos; fn.refreshBrushUI()
				else local pA, kind = brush.waypointA, brush.pickMode; brush.waypointA, brush.pickMode = nil, nil; fn.refreshBrushUI(); start3DPathCarve(kind, pA, hitPos) end
				return
			end
			brush.strokeDown, brush.activeStroke, brush.lastHitPos, brush.lastTrailY = true, beginBrushStroke(brush.tool), hitPos, hitPos.Y
			if brush.tool == "Flatten" and not brush.lockFlattenY then
				brush.flattenY = round(hitPos.Y); if ui.brushFlattenSlider then ui.brushFlattenSlider.refresh(brush.flattenY, true) end
			end
			brush.hoverPos, brush.hoverNormal = hitPos, hitNormal
			applyBrushDab(hitPos, nil, nil, nil, brush.tool == "Trail" and brush.lastTrailY or nil, brush.activeStroke)
		end
	end))

	bind(UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if ui.activeSlider then ui.activeSlider(input.Position.X)
			elseif planet.dragging then
				local cur = Vector2.new(input.Position.X, input.Position.Y)
				local d = cur - planet.lastMouse; planet.lastMouse = cur
				planet.yaw += d.X * 0.011; planet.pitch = clamp(planet.pitch + d.Y * 0.008, -1.18, 1.18)
			elseif atlas.panning and atlas.panStartMouse then
				local d = Vector2.new(input.Position.X, input.Position.Y) - atlas.panStartMouse
				local absS = ui.atlasMapBox.AbsoluteSize
				local span, halfSpan = 1 / atlas.zoom, 0.5 / atlas.zoom
				atlas.centerU = clamp(atlas.panStartU - (d.X / math.max(1, absS.X)) * span, halfSpan, 1 - halfSpan)
				atlas.centerV = clamp(atlas.panStartV - (d.Y / math.max(1, absS.Y)) * span, halfSpan, 1 - halfSpan)
				atlas.dirty = true
			elseif draggingWindow and dragStartMouse then
				local delta = input.Position - dragStartMouse
				shell.Position = UDim2.new(dragStartPos.X.Scale, dragStartPos.X.Offset + delta.X, dragStartPos.Y.Scale, dragStartPos.Y.Offset + delta.Y)
			end
		end
	end))

	bind(UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if ui.activeSlider then
				ui.activeSlider = nil; playUISound("click", 0.98, 0.35)
				for _, w in ipairs(ui.customKnobs) do if w.resetKnob then w.resetKnob() end end
				if ui.previewPendingRelease then requestPreview(true) end
			end
			if brush.strokeDown then
				brush.strokeDown = false
				if commitBrushStroke(brush.activeStroke) then fn.refreshHistoryUI() end
				brush.activeStroke, brush.lastHitPos = nil, nil
			end
			planet.dragging, atlas.panning, draggingWindow = false, false, false
		end
	end))

	onClick(ui.minButton, function()
		fn.setMinimized(not state.minimized)
	end)
	onClick(ui.taskbarButton, function()
		fn.setTaskbarDocked(true)
	end)
	if ui.tbRestoreBtn then onClick(ui.tbRestoreBtn, function() fn.setTaskbarDocked(false) end) end
	if ui.tbClickArea then onClick(ui.tbClickArea, function() fn.setTaskbarDocked(false) end) end
	if ui.tbBrushBtn then onClick(ui.tbBrushBtn, function() fn.setBrushArmed(not brush.armed) end) end

	local lastPreviewTick, lastClockTick, lastBrushTick, lastPerfTick, smoothFps = 0, 0, 0, 0, 60
	bind(RunService.Heartbeat:Connect(function(dt)
		local now = os.clock()
		smoothFps = lerp(smoothFps, 1 / math.max(dt, 1 / 240), clamp(dt * 8, 0, 1))

		if ui.lagBanner and ui.lagBanner.Visible and ui.lagStroke then
			ui.lagStroke.Transparency = 0.20 + 0.18 * math.sin(now * 4.5)
		end

		-- 1. Live 8-Shell 3D Planetarium Rotation, Tangent Plates, Calderas, Cloud Belts & Keplerian Moons
		if gui.Enabled and shell.Visible and state.activePage == "Planet" and ui.planet then
			local p = ui.planet
			local radSec = (planet.spinRpm / 60) * math.pi * 2
			if planet.autoSpin and not planet.dragging then planet.yaw = (planet.yaw + dt * radSec) % (math.pi * 2) end
			planet.moonAngle = (planet.moonAngle + dt * (0.42 + planet.spinRpm * 0.16)) % (math.pi * 2)

			local tiltCF = CFrame.Angles(planet.pitch, 0, math.rad(planet.tilt))
			local spinCF = tiltCF * CFrame.Angles(0, planet.yaw, 0)
			local atmoCF = tiltCF * CFrame.Angles(0, -planet.yaw * 1.45, 0)

			local corePulse = 8.76 + math.sin(now * 3.2) * (0.06 * planet.volcanic)
			p.core.Size = Vector3.new(corePulse, corePulse, corePulse)
			p.core.CFrame, p.crust.CFrame, p.ocean.CFrame, p.atmoShell.CFrame = spinCF, spinCF, spinCF, atmoCF
			p.northCap.CFrame = spinCF * CFrame.new(0, 3.72, 0)
			p.southCap.CFrame = spinCF * CFrame.new(0, -3.72, 0)
			if p.outerHalo then p.outerHalo.CFrame = atmoCF end
			if p.auroraRing then p.auroraRing.CFrame = tiltCF * CFrame.new(0, 4.38, 0) * CFrame.Angles(0, now * 0.45, math.rad(90)) end
			if p.stormVortex and p.stormVortex.Transparency < 1 then
				local stormDir = Vector3.new(0.82, -0.32, 0.48).Unit
				local stormPos = spinCF:PointToWorldSpace(stormDir * 4.38)
				p.stormVortex.CFrame = CFrame.lookAt(stormPos, stormPos + stormPos.Unit) * CFrame.Angles(0, math.rad(90), now * 1.55)
			end

			for _, pl in ipairs(p.plates) do
				if pl.plate.Transparency < 1 then
					local wPos = spinCF:PointToWorldSpace(pl.dir * 4.30)
					local cf = CFrame.lookAt(wPos, wPos + wPos.Unit) * CFrame.Angles(0, 0, math.rad(pl.yaw))
					pl.plate.CFrame = cf
					pl.ridge.CFrame = cf * CFrame.new(0, 0, -0.18)
				end
			end
			for _, cd in ipairs(p.calderas) do
				if cd.rim.Transparency < 1 then
					local wPos = spinCF:PointToWorldSpace(cd.dir * 4.42)
					local cf = CFrame.lookAt(wPos, wPos + wPos.Unit) * CFrame.Angles(0, math.rad(90), 0)
					cd.rim.CFrame = cf
					cd.pit.CFrame = cf * CFrame.new(0.03, 0, 0)
				end
			end
			for i, cb in ipairs(p.cloudBelts) do
				cb.part.CFrame = tiltCF * CFrame.new(0, cb.latY, 0) * CFrame.Angles(0, planet.yaw * (1.25 + i * 0.18), math.rad(90))
			end
			local ringCF = tiltCF * CFrame.Angles(math.rad(6), planet.yaw * 0.18, math.rad(90))
			for _, r in ipairs(p.rings) do r.part.CFrame = ringCF end

			p.moonMajor.CFrame = tiltCF * CFrame.new(math.cos(planet.moonAngle) * 7.6, math.sin(planet.moonAngle * 1.3) * 1.1, math.sin(planet.moonAngle) * 7.6)
			local m2Ang = -planet.moonAngle * 1.65 + 2.1
			p.moonMinor.CFrame = tiltCF * CFrame.new(math.cos(m2Ang) * 10.4, math.cos(m2Ang) * 2.2, math.sin(m2Ang) * 10.4) * CFrame.Angles(now, now * 0.7, 0)
		end

		-- Periodic Volcanic Environmental Events & Seismic Screen Shake
		if planet.audioEnabled and state.soundEnabled then
			local curArch = fn.getPlanetSpec(planet.archetype)
			local isVolcanic = (curArch.audioType == "Volcanic") or (curArch.audioType == "HeavyVolcanic") or (planet.volcanic >= 0.65)
			if isVolcanic then
				if now >= planet.nextQuakeTick then
					planet.nextQuakeTick = now + math.random(50, 100) / 10
					fn.playOneShotPlanetSound("rbxassetid://5870958093", 0.75, math.random(90, 110) / 100)
					fn.triggerScreenShake(0.68, 1.4)
				end
				if now >= planet.nextBurstTick then
					planet.nextBurstTick = now + math.random(30, 60) / 10
					fn.playOneShotPlanetSound("rbxassetid://95838414628747", 0.60, math.random(95, 115) / 100)
				end
			end
		end

		-- Smooth Seismic Camera Screen Shake
		if planet.shakeActive then
			local elapsed = now - planet.shakeStartTime
			if elapsed >= planet.shakeDuration then
				planet.shakeActive = false
				planet.shakeIntensity = 0
			else
				local progress = elapsed / planet.shakeDuration
				local env = (1 - progress) * math.sin(progress * math.pi) * 1.6 * planet.shakeIntensity
				local st = elapsed * 26
				local pitch = (math.sin(st * 1.3) * 0.7 + math.sin(st * 2.9) * 0.3) * 0.0075 * env
				local yaw   = (math.cos(st * 1.1) * 0.7 + math.sin(st * 2.5) * 0.3) * 0.0075 * env
				local roll  = math.sin(st * 1.8) * 0.0045 * env
				local cam = workspace.CurrentCamera
				if cam then cam.CFrame = cam.CFrame * CFrame.Angles(pitch, yaw, roll) end
			end
		end

		-- Dynamic Planetary Physics Simulation (Solar Cycle, Tides & Coriolis Wind Drift)
		if planet.liveSkySync and planet.solarSpeed > 0 then
			planet.solarTime = (planet.solarTime + dt * planet.solarSpeed * 0.28) % 24
			pcall(function() Lighting.ClockTime = planet.solarTime end)
			if ui.planetSliders and ui.planetSliders.solarTime then
				ui.planetSliders.solarTime.refresh(planet.solarTime, true)
			end
		end

		if planet.tideSwell > 0 then
			local tidePhase = math.sin(now * 0.35)
			pcall(function()
				Terrain.WaterWaveSize = clamp(0.18 + tidePhase * 0.12 * (planet.tideSwell / 8.0), 0.05, 0.8)
				Terrain.WaterWaveSpeed = clamp(12 + tidePhase * 8 * (planet.tideSwell / 8.0), 2, 35)
			end)
		end

		if planet.liveGravitySync and planet.orbitalDrift and LocalPlayer.Character then
			local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if root and not root.Anchored then
				local drift = Vector3.new(math.cos(now * 0.3) * (planet.windSpeed * 0.08), 0, math.sin(now * 0.3) * (planet.windSpeed * 0.08))
				pcall(function() root.AssemblyLinearVelocity = root.AssemblyLinearVelocity + drift * dt end)
			end
		end

		-- Realistic Atmospheric Simulation & Orbital Ascent Engine (Altitude Lapse Rates, Zero-G & Re-entry)
		if labs.atmoSimEnabled and LocalPlayer.Character then
			local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if root then
				local curY = root.Position.Y
				local spaceY = labs.spaceAlt or 10000
				local depth = labs.transDepth or 5000
				local baseY = math.max(100, spaceY - depth)

				-- Calculate raw altitude progress (0 at baseY, 1 at spaceY)
				local rawAlpha = clamp((curY - baseY) / math.max(1, depth), 0, 1)
				local targetFactor = rawAlpha * rawAlpha * (3 - 2 * rawAlpha)

				-- Smooth temporal damping so the transition is gradual and natural
				local blendSpeed = (targetFactor > labs.spaceFactor) and 1.25 or 1.75
				labs.spaceFactor = lerp(labs.spaceFactor, targetFactor, clamp(dt * blendSpeed, 0, 1))

				-- Dynamic Earth Orbital Model Lifecycle & Slow Spin
				if curY >= 1000 then
					if not labs.orbitEarth or not labs.orbitEarth.Parent then
						fn.spawnOrbitEarth()
					end
				elseif curY < 900 then
					if labs.orbitEarth then
						fn.removeOrbitEarth()
					end
				end

				if labs.orbitEarth and labs.orbitEarth.Parent and labs.orbitEarthParts then
					labs.orbitEarthSpin = (labs.orbitEarthSpin or 0) + 0.010 * dt
					local rot = CFrame.Angles(0, labs.orbitEarthSpin, 0)
					local cx, cz = labs.orbitEarthParts.cx, labs.orbitEarthParts.cz
					labs.orbitEarthParts.root.CFrame = CFrame.new(cx, 2000, cz) * rot
					labs.orbitEarthParts.p1.CFrame = CFrame.new(cx, 2000.0377, cz) * rot
					labs.orbitEarthParts.p2.CFrame = CFrame.new(cx, 2000.0293, cz) * rot
				end

				-- 1. Space Boundary Detection, Night Departure & Atmospheric Daylight Transition
				local spaceEngageY = spaceY - 400 -- 9600 st
				local atmoEntryY = spaceY - 1000 -- 9000 st

				if curY >= spaceEngageY then
					-- Full Deep Space Cosmos
					if not labs.inDeepSpace then
						labs.inDeepSpace = true
						local ps = fn.getPlanetSpec(planet.selectedId or planet.archetype)
						labs.previousSkyboxKey = (ps and ps.skyboxKey) or (planet and planet.archetype) or "Earthly"
						if labs.previousSkyboxKey == "DeepSpace" then labs.previousSkyboxKey = "Earthly" end
						fn.applySkybox("DeepSpace")
					end
					pcall(function() Lighting.ClockTime = 12.0 end)
				elseif curY >= atmoEntryY then
					-- Leaving Space: "make it night when its gonna disappear, then remove the sky"
					local nightProgress = clamp((spaceEngageY - curY) / math.max(1, spaceEngageY - atmoEntryY), 0, 1)
					pcall(function()
						Lighting.ClockTime = lerp(12.0, 0.0, nightProgress)
					end)
					if nightProgress >= 0.85 then
						if labs.inDeepSpace then
							labs.inDeepSpace = false
							local sky = Lighting:FindFirstChild("SiriusPlanetSky")
							if sky then pcall(function() sky:Destroy() end) end
						end
					end
				else
					-- In Atmosphere: "and when the player gets to the atmosphere you transition into day"
					if labs.inDeepSpace then
						labs.inDeepSpace = false
						local sky = Lighting:FindFirstChild("SiriusPlanetSky")
						if sky then pcall(function() sky:Destroy() end) end
					end

					-- Smoothly transition from night (0.0) into full day (14.0 / surfaceClockTime)
					local dayProgress = clamp((atmoEntryY - curY) / 7000, 0, 1)
					local surfClock = labs.surfaceClockTime or 14.0
					pcall(function()
						Lighting.ClockTime = lerp(0.0, surfClock, dayProgress)
					end)

					-- Restore daytime planetary skybox as atmosphere thickens
					local ps = fn.getPlanetSpec(planet.selectedId or planet.archetype)
					local prevKey = labs.previousSkyboxKey
					if not prevKey or prevKey == "DeepSpace" then
						prevKey = (ps and ps.skyboxKey) or (planet and planet.archetype) or "Earthly"
					end
					if prevKey == "DeepSpace" then prevKey = "Earthly" end

					local curSky = Lighting:FindFirstChild("SiriusPlanetSky")
					if not curSky or curSky.SkyboxBk == "rbxassetid://243002141" then
						fn.applySkybox(prevKey)
					end
				end

				-- Mute all game audio in deep space vacuum
				if fn.muteAllGameAudio then
					fn.muteAllGameAudio(inSpace)
				end

				-- 14,000 Stud Ceiling Limit: If exceeded, disengage zero-g float and force atmospheric re-entry
				if curY >= (labs.spaceCeiling or 14000) then
					local bv = root:FindFirstChild("SiriusZeroGFloat")
					if bv then pcall(function() bv:Destroy() end) end
					root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X * 0.8, -145, root.AssemblyLinearVelocity.Z * 0.8)
					labs.reentryIntensity = 1.0
					fn.triggerScreenShake(0.60, 0.8)
					setStatus("14,000 ST CEILING EXCEEDED", "Orbital escape threshold passed! Forced atmospheric re-entry trajectory engaged.", C.rosePale)
				end

				-- Space Tab Surface Deactivation / Orbital Activation
				local spaceNav = ui.navButtons and ui.navButtons["Space"]
				if spaceNav then
					local unlocked = inSpace or (curY >= 1000)
					if unlocked ~= spaceNav.unlocked then
						spaceNav.unlocked = unlocked
						if unlocked then
							spaceNav.title.TextColor3 = C.text
							spaceNav.sub.Text = "Orbit, telemetry & Earth"
							spaceNav.sub.TextColor3 = C.dim
							spaceNav.badge.BackgroundTransparency = 0.35
							spaceNav.dot.BackgroundColor3 = spaceNav.pal.main
						else
							spaceNav.title.TextColor3 = C.dim
							spaceNav.sub.Text = "Locked (Surface Level)"
							spaceNav.sub.TextColor3 = Color3.fromRGB(90, 95, 105)
							spaceNav.badge.BackgroundTransparency = 0.75
							spaceNav.dot.BackgroundColor3 = Color3.fromRGB(70, 75, 85)
							if state.activePage == "Space" then
								fn.switchPage("Planet", false)
								setStatus("RADAR DEACTIVATED", "Returned to surface level. Switched from orbital radar to Planetarium.", C.skyPale)
							end
						end
					end
				end

				pcall(function()
					local atmo = Lighting:FindFirstChild("SiriusPlanetAtmosphere") or Lighting:FindFirstChildOfClass("Atmosphere")
					if atmo then
						atmo.Density = lerp(labs.baseAtmoDensity or 0.35, 0.00, labs.spaceFactor)
						atmo.Haze = lerp(labs.baseAtmoHaze or 0.25, 0.00, labs.spaceFactor)
						atmo.Glare = lerp(labs.baseAtmoGlare or 0.20, 0.00, labs.spaceFactor)
					end
					Lighting.OutdoorAmbient = (labs.baseOutdoorAmbient or Color3.fromRGB(128, 132, 145)):Lerp(Color3.fromRGB(10, 12, 18), labs.spaceFactor)
					Lighting.FogEnd = lerp(labs.baseFogEnd or 4000, 200000, labs.spaceFactor)
				end)

				-- 2. True Zero-G Microgravity Float & RCS Flight (Player Cannot Fall in Deep Space below 14k)
				if labs.zeroG and curY < (labs.spaceCeiling or 14000) then
					local targetGrav = inSpace and 0 or lerp(labs.surfaceGravity or 196.2, 0, labs.spaceFactor)
					pcall(function() workspace.Gravity = targetGrav end)

					if inSpace and not root.Anchored then
						local bv = root:FindFirstChild("SiriusZeroGFloat")
						if not bv then
							bv = Instance.new("BodyVelocity")
							bv.Name = "SiriusZeroGFloat"
							bv.MaxForce = Vector3.new(0, 1e7, 0)
							bv.Velocity = Vector3.zero
							bv.Parent = root
						end

						local thrustDir = 0
						if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
							thrustDir = 1
						elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.C) then
							thrustDir = -1
						end

						local targetY = thrustDir * 32 * (labs.rcsThrust or 1.0)
						bv.Velocity = Vector3.new(0, targetY, 0)

						-- Immediately arrest unwanted downward falling momentum so player stays suspended
						if thrustDir == 0 and root.AssemblyLinearVelocity.Y < 0 then
							root.AssemblyLinearVelocity = Vector3.new(root.AssemblyLinearVelocity.X * 0.96, 0, root.AssemblyLinearVelocity.Z * 0.96)
						end
					else
						local bv = root:FindFirstChild("SiriusZeroGFloat")
						if bv then pcall(function() bv:Destroy() end) end
					end
				else
					local bv = root:FindFirstChild("SiriusZeroGFloat")
					if bv then pcall(function() bv:Destroy() end) end
				end

				-- 4. Re-Entry Compression Heating, Flipbook Plasma VFX & Shockwave Audio (9104875504)
				local downSpeed = -root.AssemblyLinearVelocity.Y
				-- Sound and emitter appear 500 studs after entering the atmosphere (9,300 st down to 1,200 st)
				local inAtmosphere = (curY < 9300 and curY > 1200)
				local isPlunging = (downSpeed > 55)

				if inAtmosphere and isPlunging and labs.reentryPlasma then
					local atmoDensity = clamp((9300 - curY) / 5500, 0.12, 1.0)
					local targetHeat = clamp(((downSpeed - 45) / 135) * atmoDensity * 1.5, 0.25, 1.0)
					labs.reentryIntensity = lerp(labs.reentryIntensity or 0, targetHeat, clamp(dt * 6, 0, 1))

					-- Start flipbook particle emitter, torso light & sound if not active
					if not labs.reentryActive then
						fn.startReentryVFX(LocalPlayer.Character)
					end

					-- Sound 9104875504: smooth fade-in volume & smooth low-to-normal pitch transition
					if labs.reentrySound and labs.reentrySound.Parent then
						labs.reentrySoundTime = (labs.reentrySoundTime or 0) + dt
						local pitchProgress = clamp(labs.reentrySoundTime / 2.8, 0, 1)
						local targetPitch = lerp(0.35, 1.0, pitchProgress)
						labs.reentrySound.PlaybackSpeed = lerp(labs.reentrySound.PlaybackSpeed, targetPitch, clamp(dt * 4, 0, 1))

						local targetVol = clamp((labs.reentryIntensity or 0.5) * 0.90, 0.22, 0.95) * (state.soundVolume or 0.45)
						labs.reentrySound.Volume = lerp(labs.reentrySound.Volume, targetVol, clamp(dt * 3.5, 0, 1))
					end

					-- Screen shake continuously until re-entry stops!
					planet.shakeActive = true
					planet.shakeIntensity = math.max(planet.shakeIntensity, 0.62 * (labs.reentryIntensity or 0.5))
					planet.shakeStartTime = os.clock()
					planet.shakeDuration = 0.5

					-- Aerodynamic air-braking drag in denser atmosphere
					if labs.airBraking and labs.airBraking > 0 then
						local dragImpulse = downSpeed * atmoDensity * (labs.airBraking * 0.48) * dt
						root.AssemblyLinearVelocity = root.AssemblyLinearVelocity + Vector3.new(0, dragImpulse, 0)
					end

					if ui and ui.plasmaOverlay then
						ui.plasmaOverlay.Visible = true
						ui.plasmaOverlay.BackgroundTransparency = clamp(1 - (labs.reentryIntensity or 0.5) * 0.55, 0.45, 1)
					end
				else
					-- Re-entry finished or not plunging: IMMEDIATELY stop VFX, light, and sound!
					if labs.reentryActive or labs.reentryLight or labs.reentrySound or labs.reentryEmitter then
						fn.stopReentryVFX(LocalPlayer.Character)
					end
					labs.reentryIntensity = 0
					if ui and ui.plasmaOverlay then
						ui.plasmaOverlay.Visible = false
					end
				end

				-- 5. Cosmic Vacuum Acoustic Absorption
				if labs.cosmicAudio and planet.soundFolder then
					local sfxVol = clamp(1 - labs.spaceFactor * 0.85, 0.12, 1.0)
					for _, s in ipairs(planet.activeSounds or {}) do
						local baseV = s:GetAttribute("BaseVol") or 0.5
						s.Volume = baseV * sfxVol * (state.soundVolume or 0.45)
					end
				end

				-- 6. Real-Time Telemetry HUD in Labs Page
				if ui.atmoHudLabel then
					local altStuds = round(curY)
					local altKm = string.format("%.2f", curY * 0.28 / 1000)
					local layerName
					if curY < 2000 then layerName = "TROPOSPHERE (NORMAL)"
					elseif curY < 5000 then layerName = "STRATOSPHERE (OZONE)"
					elseif curY < 8000 then layerName = "MESOSPHERE (THINNING)"
					elseif curY < spaceY then layerName = "THERMOSPHERE / KARMAN LINE"
					else layerName = "EXOSPHERE (DEEP SPACE VACUUM)" end

					local pressPct = round((1 - labs.spaceFactor) * 100)
					local gravG = string.format("%.2f", workspace.Gravity / 196.2)
					ui.atmoHudLabel.Text = string.format("ALT: %d st (%s km)  ·  %s  ·  PRESSURE: %d%%  ·  GRAV: %sg", altStuds, altKm, layerName, pressPct, gravG)
				end
			end
		end

		-- Animated Orbital Probes Telemetry & Pulsing Signals
		if #labs.spaceProbes > 0 then
			for _, probe in ipairs(labs.spaceProbes) do
				if probe and probe.Parent then
					local dish = probe:FindFirstChild("Dish")
					if dish then dish.CFrame = dish.CFrame * CFrame.Angles(0, dt * 0.65, 0) end
					local core = probe:FindFirstChild("Core")
					if core then
						local pl = core:FindFirstChildOfClass("PointLight")
						if pl then pl.Brightness = 2.2 + 1.6 * math.sin(now * 4.5) end
					end
					local beam = probe:FindFirstChild("ScanBeam")
					if beam then
						beam.Transparency = 0.40 + 0.20 * math.sin(now * 3.0)
					end
				end
			end
		end

		-- Live Space Orbital Radar & Viewport Tracking
		if ui.spaceViewport and ui.pages["Space"] and ui.pages["Space"].Visible and LocalPlayer.Character then
			local sv = ui.spaceViewport
			local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if root then
				sv.angle = (sv.angle or 0) + dt * 0.45
				local spinRot = CFrame.Angles(0, now * 0.15, 0)
				sv.earth.CFrame = spinRot
				sv.crust.CFrame = spinRot
				if sv.clouds then sv.clouds.CFrame = CFrame.Angles(0, -now * 0.18, 0) end

				local satAngle = sv.angle
				local orbR = 8.6
				local incRad = math.rad(labs.spaceInclination or 28.5)
				local satPos = Vector3.new(math.cos(satAngle) * orbR, math.sin(satAngle) * orbR * math.sin(incRad) * 0.35, math.sin(satAngle) * orbR * math.cos(incRad))
				local satTangent = Vector3.new(-math.sin(satAngle), math.cos(satAngle) * math.sin(incRad) * 0.35, math.cos(satAngle) * math.cos(incRad)).Unit
				sv.sat.CFrame = CFrame.new(satPos, satPos + satTangent)
				sv.solar.CFrame = sv.sat.CFrame

				local nadirPos = satPos.Unit * 4.65
				sv.nadir.CFrame = CFrame.new(nadirPos)

				if sv.nadirLine then
					sv.nadirLine.CFrame = CFrame.new((satPos + nadirPos) * 0.5, nadirPos) * CFrame.Angles(0, math.rad(90), 0)
					sv.nadirLine.Size = Vector3.new((satPos - nadirPos).Magnitude, 0.08, 0.08)
				end

				if sv.wpPerigee then sv.wpPerigee.CFrame = CFrame.new(Vector3.new(orbR, 0, 0)) end
				if sv.wpApogee then sv.wpApogee.CFrame = CFrame.new(Vector3.new(-orbR, 0, 0)) end

				-- Dynamic Multi-Cam Positioning
				local dist = labs.spaceCamDist or 28
				local pitch = labs.spaceCamPitch or 0.42
				local yaw = labs.spaceCamYaw or 0.35
				local camMode = labs.spaceCamMode or "Orbit"

				if camMode == "Orbit" then
					local camPos = Vector3.new(
						math.cos(pitch) * math.sin(yaw) * dist,
						math.sin(pitch) * dist,
						math.cos(pitch) * math.cos(yaw) * dist
					)
					sv.cam.CFrame = CFrame.new(camPos, Vector3.zero)
				elseif camMode == "Nadir" then
					local nadirCamPos = satPos.Unit * (orbR + 10)
					sv.cam.CFrame = CFrame.new(nadirCamPos, Vector3.zero)
				elseif camMode == "Chase" then
					local chasePos = satPos - satTangent * 5.8 + Vector3.new(0, 2.2, 0)
					sv.cam.CFrame = CFrame.new(chasePos, satPos + satTangent * 10)
				end

				local altSt = round(root.Position.Y)
				local altKm = string.format("%.2f", root.Position.Y * 0.28 / 1000)
				local velKmS = string.format("%.2f", math.sqrt(root.AssemblyLinearVelocity.X^2 + root.AssemblyLinearVelocity.Z^2) * 0.08 + 7.66)
				local periodMin = string.format("%.1f", 85.0 + (altSt / 1000) * 1.2)
				sv.tlText.Text = string.format("ALT: %d st (%s km)\nVEL: %s km/s · INC: %.1f° · T: ~%sm", altSt, altKm, velKmS, labs.spaceInclination or 28.5, periodMin)

				local lat = string.format("%.2f° %s", math.abs(root.Position.Z * 0.005) % 90, (root.Position.Z >= 0) and "N" or "S")
				local lon = string.format("%.2f° %s", math.abs(root.Position.X * 0.005) % 180, (root.Position.X >= 0) and "E" or "W")
				local ceiling = labs.spaceCeiling or 14000
				local statusStr = (altSt >= ceiling - 500) and string.format("ALERT: APPROACHING %dK CEILING", round(ceiling / 1000)) or "STATUS: ORBITAL VACUUM (ZERO-G)"
				sv.trText.Text = string.format("LAT: %s · LON: %s\n%s", lat, lon, statusStr)

				if altSt >= ceiling - 500 then
					sv.btmText.Text = string.format("⚠ WARNING: %d ST / %d ST CEILING — EXCEEDING WILL FORCE ATMOSPHERIC RE-ENTRY!", altSt, ceiling)
					sv.btmText.TextColor3 = C.warn
				else
					local margin = math.max(0, ceiling - altSt)
					sv.btmText.Text = string.format("ALT: %d ST / %d ST CEILING (%d ST MARGIN) · AUDIO: %s · SAFE ORBIT", altSt, ceiling, margin, string.upper(labs.spaceAudioMode or "MUTE"))
					sv.btmText.TextColor3 = Color3.fromRGB(160, 200, 255)
				end
			end
		end

		-- 2. Continuous 3D Brush Sculpting
		if brush.armed or brush.pickMode then
			local mLoc = UserInputService:GetMouseLocation()
			if not isPointerOverStudioUI(mLoc) then
				local hitPos, hitNormal = raycastViewportTerrain()
				if hitPos then
					brush.hoverPos, brush.hoverNormal = hitPos, hitNormal
					brush.displayPos = brush.displayPos and brush.displayPos:Lerp(hitPos, clamp(dt * 24, 0, 1)) or hitPos
				end
			end
			brush.displayRadius = lerp(brush.displayRadius, brush.radius, clamp(dt * 18, 0, 1))
			render3DBrushCursor()

			if brush.strokeDown and brush.hoverPos and not state.busy and (now - lastBrushTick) >= (1 / math.max(15, perf.brushHz)) then
				lastBrushTick = now
				local prev = brush.lastHitPos or brush.hoverPos
				local dist = (brush.hoverPos - prev).Magnitude
				local spacing = math.max(2.5, brush.radius * 0.28)
				if dist >= spacing * 0.65 then
					local steps = math.min(6, math.max(1, math.ceil(dist / spacing)))
					for s = 1, steps do
						local pt = prev:Lerp(brush.hoverPos, s / steps)
						if brush.tool == "Trail" then
							local maxRise = spacing * 0.32
							brush.lastTrailY = clamp(pt.Y, (brush.lastTrailY or pt.Y) - maxRise, (brush.lastTrailY or pt.Y) + maxRise)
							applyBrushDab(pt, "Trail", nil, nil, brush.lastTrailY, brush.activeStroke)
						else applyBrushDab(pt, nil, nil, nil, nil, brush.activeStroke) end
					end
					brush.lastHitPos = brush.hoverPos
				elseif brush.tool ~= "Flatten" and brush.tool ~= "Trail" then
					applyBrushDab(brush.hoverPos, nil, nil, brush.strength * 0.55, nil, brush.activeStroke)
				end
			end
		end

		-- 3. UI Shimmers, Metrics, Perf Telemetry & Clock
		if gui.Enabled and shell.Visible then
			if not perf.ecoAnimations then
				ui.logoGradient.Rotation = 45 + math.sin(now * 0.7) * 22
				ui.auroraGrad.Rotation = 38 + math.sin(now * 0.35) * 12
				ui.ctaShimmer.Position = UDim2.fromScale(-0.4 + math.min(1, (now * 0.42) % 2.4) * 1.85, 0)
				for _, g in ipairs(ui.sheenGrads) do g.Rotation = (now * 28) % 360 end
			end
			ui.pillDot.BackgroundTransparency = 0.14 + (math.sin(now * (state.busy and 5.8 or 1.9)) * 0.5 + 0.5) * 0.38
			ui.progressGrad.Offset = state.busy and Vector2.new(((now * 1.35) % 2) - 1, 0) or Vector2.zero

			local blend = clamp(dt * 14, 0, 1)
			ui.metricAnim.relief.cur = lerp(ui.metricAnim.relief.cur, ui.metricAnim.relief.target, blend)
			ui.metricAnim.water.cur = lerp(ui.metricAnim.water.cur, ui.metricAnim.water.target, blend)
			ui.metricAnim.voxels.cur = lerp(ui.metricAnim.voxels.cur, ui.metricAnim.voxels.target, blend)
			ui.metricValues[1].Text = string.format("%d studs", round(ui.metricAnim.relief.cur))
			ui.metricValues[2].Text = ui.metricAnim.water.on and string.format("%d%%", round(ui.metricAnim.water.cur)) or "OFF"
			ui.metricValues[3].Text = formatCompact(ui.metricAnim.voxels.cur)

			-- Record frame timing for sparkline telemetry (128-sample ring buffer)
			perf.dtIdx = (perf.dtIdx % 128) + 1
			perf.dtRing[perf.dtIdx] = dt

			if state.activePage == "Perf" and now - lastPerfTick >= 0.12 then
				lastPerfTick = now
				local fps = round(smoothFps)
				ui.perfMetricValues[1].Text = tostring(fps) .. " FPS"
				ui.perfMetricValues[1].TextColor3 = fps >= 54 and C.accentPale or (fps >= 30 and C.amberPale or C.danger)
				ui.perfMetricValues[2].Text = string.format("%.1f ms", dt * 1000)
				ui.perfMetricValues[3].Text = string.format("%d×%d st", activeTileCols() * K.VOXEL, activeTileCols() * K.VOXEL)
				ui.perfMetricValues[4].Text = string.format("%.1f MB (U:%d, B:%d)", gcinfo() / 1024, #session.history, #session.brushHistory)

				if #ui.perfSparkBars == 128 then
					local totalDt, maxDt, count = 0, 0, 0
					local dtList = {}
					for i = 1, 128 do
						local ringI = (perf.dtIdx - 128 + i - 1) % 128 + 1
						local sampleDt = perf.dtRing[ringI] or (1 / 60)
						totalDt += sampleDt
						if sampleDt > maxDt then maxDt = sampleDt end
						count += 1
						table.insert(dtList, sampleDt)

						local bar = ui.perfSparkBars[i]
						if bar then
							local hScale = clamp(sampleDt / 0.0333, 0.08, 1)
							bar.Size = UDim2.new(1 / 128, -1, hScale, 0)
							bar.BackgroundColor3 = (sampleDt <= 0.0182) and C.accent or ((sampleDt <= 0.030) and C.amber or C.danger)
						end
					end
					local avgDt = totalDt / math.max(1, count)
					local variance = 0
					for _, dVal in ipairs(dtList) do variance += (dVal - avgDt) ^ 2 end
					local jitterMs = math.sqrt(variance / math.max(1, count)) * 1000
					local low1Fps = math.max(1, 1 / math.max(0.001, maxDt))
					if ui.perfJitterLbl then
						ui.perfJitterLbl.Text = string.format("Jitter: ±%.1f ms  ·  1% Low: %d FPS  ·  Budget: 16.6 ms", jitterMs, round(low1Fps))
					end
				end
			end
			if state.activePage == "Atlas" then
				if math.abs(atlas.zoom - (atlas.targetZoom or atlas.zoom)) > 0.003 then
					atlas.zoom = lerp(atlas.zoom, atlas.targetZoom or atlas.zoom, clamp(dt * 12, 0, 1))
					local halfSpan = 0.5 / atlas.zoom
					atlas.centerU = clamp(atlas.centerU, halfSpan, 1 - halfSpan)
					atlas.centerV = clamp(atlas.centerV, halfSpan, 1 - halfSpan)
					atlas.dirty = true
				end
				if atlas.followPlayer and LocalPlayer.Character then
					local rootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					if rootPart then
						local cfg = currentConfig()
						local b = computeBounds(cfg)
						local halfSpan = 0.5 / atlas.zoom
						local curU = clamp((rootPart.Position.X - b.minX) / cfg.Width, halfSpan, 1 - halfSpan)
						local curV = clamp((rootPart.Position.Z - b.minZ) / cfg.Depth, halfSpan, 1 - halfSpan)
						if math.abs(curU - atlas.centerU) > 0.003 or math.abs(curV - atlas.centerV) > 0.003 then
							atlas.centerU, atlas.centerV = curU, curV
							atlas.dirty = true
						end
					end
				end
				if atlas.dirty and now - lastPreviewTick >= 0.033 then
					lastPreviewTick = now; fn.renderAtlas()
				end
			end
			if now - lastClockTick >= 0.5 then
				lastClockTick = now
				local timeStr, dateStr, greet = getClockInfo()
				ui.clockTime.Text, ui.clockDate.Text = timeStr, dateStr
				ui.welcomeSub.Text = (LocalPlayer.DisplayName ~= LocalPlayer.Name) and ("@" .. LocalPlayer.Name .. "  ·  " .. greet) or greet
			end
		end

		-- 4. Lower Taskbar Live Telemetry & Rotation
		if ui.taskbar and ui.taskbar.Visible then
			if not perf.ecoAnimations and ui.tbLogoGrad then
				ui.tbLogoGrad.Rotation = (now * 28) % 360
			end
			if state.busy then
				ui.tbStatus.Text = string.format("BUILDING %s...  ·  %d×%d", string.upper(activeStyleLabel()), values.Width, values.Depth)
				ui.tbStatus.TextColor3 = C.warn
			else
				ui.tbStatus.Text = string.format("%s  ·  %d×%d  ·  READY", string.upper(activeStyleLabel()), values.Width, values.Depth)
				ui.tbStatus.TextColor3 = C.muted
			end
		end

		if ui.previewDirty and now - lastPreviewTick >= clamp(perf.previewMs / 1000, 0.04, 0.35) then
			lastPreviewTick = now; fn.renderPreview()
		elseif gui.Enabled and shell.Visible and (state.activePage == "Terrain" or state.activePage == "Atlas") and now - lastPreviewTick >= 0.25 then
			lastPreviewTick = now; updatePlayerMarker(currentConfig())
		end
	end))

	----------------------------------------------------------------------------------------------------
	-- 16. CLEAN TEARDOWN & SIRIUS 0.5s QUINT OPENING SEQUENCE
	----------------------------------------------------------------------------------------------------
	local function cleanup()
		if not alive then return end
		alive = false
		if state.job then state.job.cancelled = true end
		if brush.activeStroke then disposeBrushStroke(brush.activeStroke); brush.activeStroke = nil end
		for _, conn in ipairs(connections) do pcall(function() conn:Disconnect() end) end
		table.clear(connections)
		if planet.liveSkySync or planet.liveGravitySync or planet.autoSkySync or planet.audioEnabled or state.worldLowGravity then fn.restoreOriginalEnvironment() end
		fn.stopPlanetAudio()
		if fn.removeOrbitEarth then fn.removeOrbitEarth() end
		if fn.stopReentryVFX then fn.stopReentryVFX() end
		if fn.clearOrbitalProbes then fn.clearOrbitalProbes() end
		pcall(function()
			local sa = game:GetService("SoundService"):FindFirstChild("SiriusSpaceAudio")
			if sa then sa:Destroy() end
		end)
		if LocalPlayer.Character then
			local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if hrp then
				local bv = hrp:FindFirstChild("SiriusZeroGFloat")
				if bv then pcall(function() bv:Destroy() end) end
			end
		end
		if fn.muteAllGameAudio then fn.muteAllGameAudio(false) end
		if brushWire then pcall(function() brushWire:Destroy() end) end
		if wireframeBounds then pcall(function() wireframeBounds:Destroy() end) end
		if boundsPart then pcall(function() boundsPart:Destroy() end) end
		if gui then pcall(function() gui:Destroy() end) end
	end
	session.cleanup = cleanup

	local function requestClose()
		playUISound("click", 0.90, 0.75)
		if ui.taskbar and ui.taskbar.Visible then
			tween(ui.taskbar, 0.22, {Position = UDim2.new(0.5, 0, 1, 60)}, Enum.EasingStyle.Quint)
		end
		fn.fadeOutMenu(0.24, cleanup)
	end
	onClick(ui.closeButton, requestClose)
	if ui.tbCloseBtn then onClick(ui.tbCloseBtn, requestClose) end

	table.insert(connections, LocalPlayer.CharacterAdded:Connect(function(c)
		if fn.stopReentryVFX then fn.stopReentryVFX(c) end
	end))

	gui.Parent = PlayerGui
	fn.updatePlanetVisuals()
	fn.switchPage("Terrain", false)
	fn.refreshBiomeUI()
	fn.refreshWaterUI()
	fn.refreshHistoryUI()
	fn.renderPreview()
	fn.triggerMapScanline()
	setStatus("READY", "v2.8 Forge ready — 10 color-coded modules, 3D Planetarium, Atlas A1 grid, 3D Brushes & Labs!", C.accentPale)

	fn.fadeInMenu(0.48)
end
