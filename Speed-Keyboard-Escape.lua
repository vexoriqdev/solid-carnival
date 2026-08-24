repeat wait() until game:IsLoaded()

if LPH_OBFUSCATED == nil then
	LPH_NO_VIRTUALIZE = function(...) return (...) end
	LPH_ENCSTR = function(...) return (...) end
	LRM_SANITIZE = function(...) return ... end
end

local cloneref = cloneref or function(o) return o end
local TweenService = cloneref(game:GetService("TweenService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local Players = cloneref(game:GetService("Players"))
local TextService = cloneref(game:GetService("TextService"))
local HttpService = cloneref(game:GetService("HttpService"))
local Lighting = cloneref(game:GetService("Lighting"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local Workspace = cloneref(game:GetService("Workspace"))

local LocalPlayer = cloneref(Players.LocalPlayer)

local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled

if identifyexecutor and identifyexecutor() == "Wave" then
	getgenv().gethui = function()
		return game:GetService("CoreGui")
	end
end

local Folder_Configs = {
	Directory = "vexoriqhub",
	Assets = "vexoriqhub/Assets",
	Configs = "vexoriqhub/Configs",
	Datas = "vexoriqhub/Datas",
	Images = "vexoriqhub/Images",
	Themes = "vexoriqhub/Themes"
}

for _, Folder in pairs(Folder_Configs) do
	if not isfolder(Folder) then
		makefolder(Folder)
	end
end

local GameId = tostring(game.GameId)
local GameConfigFolder = Folder_Configs.Configs .. "/" .. GameId

if not isfolder(GameConfigFolder) then
	makefolder(GameConfigFolder)
end

local GameList = {
	["9584852943"] = { id = "61e0f394c005902cda5643069ac59226", keyless = false }, -- +1 Speed Keyboard Escape
	["7326934954"] = { id = "00e140acb477c5ecde501c1d448df6f9", keyless = true }, -- 99 Nights in the Forest
	["10148749921"] = { id = "0d120852a6e2eb65c691e5ce2c628429", keyless = false }, -- Animal Hospital
	["4658598196"] = { id = "d383a1d5c0a779bbfd0a2b74437923d5", keyless = true }, -- Attack on Titan Revolution
	["5130394318"] = { id = "3e7a75a970118d0f0cf629369524dc7d", keyless = false }, -- Bizarre Lineage
	["994732206"] = { id = "e2718ddebf562c5c4080dfce26b09398", keyless = false }, -- Blox Fruits
	["10200395747"] = { id = "535322ccaa7a6ba59febea91b085c89c", keyless = true }, -- Grow a Garden 2
	["3808223175"] = { id = "4fe2dfc202115670b1813277df916ab2", keyless = false }, -- Jujutsu Infinite
	["66654135"] = { id = "1bc67a62ae73efe4babe9f2b6b7e4646", keyless = true }, -- Murder Mystery 2
	["7395930870"] = { id = "d3191d52e71790d40a4d169f5becd325", keyless = true }, -- Sell Lemons
	["1511883870"] = { id = "fefdf5088c44beb34ef52ed6b520507c", keyless = false }, -- Shindo Life
	["7219654364"] = { id = "a5182e78f7af6810e08e05cb72542dbf", keyless = true }, -- Sheriff VS Murderer
	["10475794799"] = { id = "7c9b5f90b8e6b7f89698e773feb9eac2", keyless = true }, -- Dig & Clean
	["7613921865"] = { id = "46d43d3868af285218f28453704b620b", keyless = true }, -- Anime Expeditions
	["10563114921"] = { id = "82f55d768183c258359d9a7c093d5a60", keyless = false }, -- Steal An Egg 
    ["10440833423"] = { id = "19c44f6c67f0e82e45e456bf81646e01", keyless = true}, -- Greedy Growers
}

local Config = {
	File = "vexoriqhub/savedkey.txt",
	Working = "https://rekonise.com/linkvertise-2bbnc",
	Rinku = "https://rekonise.com/rinku-z0di3",
	Discord = "https://discord.gg/vexoriqhub",
	Shop = "https://vexoriqhub.com/free",
}

local ErrorMessages = {
	KEY_EXPIRED = "Your key ran out. Buy a new one for $1.99",
	KEY_BANNED = "This key is banned. Join Discord for help.",
	KEY_HWID_LOCKED = "Key used on another PC. Reset HWID in Discord.",
	KEY_INCORRECT = "Wrong key. Check it and try again.",
	KEY_INVALID = "That doesnt look like a key.",
	SCRIPT_ID_INCORRECT = "Script not found.",
	SCRIPT_ID_INVALID = "Script deleted.",
	INVALID_EXECUTOR = "Your executor isnt supported.",
	SECURITY_ERROR = "Something went wrong. Try again.",
	TIME_ERROR = "Fix your PC clock and try again.",
	UNKNOWN_ERROR = "Something broke. Join Discord for help.",
}

local GameConfig = GameList[GameId]

if not GameConfig then
	StarterGui:SetCore("SendNotification", {
		Title = "Vexoriq Hub",
		Text = "This game is not supported yet.",
		Icon = "rbxassetid://137698471325689",
	})
	return
end

local ScriptId = GameConfig.id
local IsKeyless = GameConfig.keyless

LowUnc = not (hookfunction and hookmetamethod)

local function DeleteFile(Input)
	if isfile(Input) then
		delfile(Input)
	end
end

local LuarmorApi = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
LuarmorApi.script_id = ScriptId

local LoaderUrl = "https://api.luarmor.net/files/v4/loaders/" .. ScriptId .. ".lua"

if IsKeyless then
	loadstring(game:HttpGet(LoaderUrl))()
	return
end

do
	local wait = task.wait
	local spawn = task.spawn
	local delay = task.delay

	local FromRGB = Color3.fromRGB
	local UDim2New = UDim2.new
	local UDimNew = UDim.new
	local Vector2New = Vector2.new
	local MathClamp = math.clamp
	local MathFloor = math.floor
	local MathMax = math.max
	local MathMin = math.min
	local TableInsert = table.insert
	local StringFormat = string.format
	local InstanceNew = Instance.new

	-- ڕەنگ و شیلێ / Theme
	local Theme = {
		Background = FromRGB(14, 13, 18),
		Inline = FromRGB(22, 21, 28),
		Border = FromRGB(42, 40, 52),
		Outline = FromRGB(36, 38, 45),
		Shadow = FromRGB(8, 6, 12),
		Text = FromRGB(242, 240, 248),
		Inactive = FromRGB(148, 144, 162),
		Accent = FromRGB(0, 170, 255), -- بلوو
		Element = FromRGB(32, 30, 40),
		Gradient = FromRGB(100, 200, 255),
	}

	local FontFace do
		local ok, face = pcall(function()
			return Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		end)
		FontFace = (ok and face) or Font.fromEnum(Enum.Font.GothamBold)
	end

	local GetUI = gethui or function()
		local ok, result = pcall(function()
			return game:GetService("CoreGui")
		end)
		return ok and result or nil
	end

	local function SafeGetUI()
		local ok, result = pcall(GetUI)
		if ok and result then
			return result
		end
		return game:GetService("CoreGui")
	end

	local function Create(class, props)
		local inst = InstanceNew(class)
		for k, v in pairs(props) do
			if k ~= "Parent" then
				pcall(function()
					inst[k] = v
				end)
			end
		end
		if props.Parent then
			inst.Parent = props.Parent
		end
		return inst
	end

	local function Corner(parent, radius)
		return Create("UICorner", {
			Parent = parent,
			CornerRadius = UDimNew(0, radius or 5),
		})
	end

	local function Stroke(parent, color, transparency)
		return Create("UIStroke", {
			Parent = parent,
			Color = color or Theme.Border,
			Thickness = 1,
			Transparency = transparency or 0,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		})
	end

	local function Tween(inst, info, goal)
		local tw = TweenService:Create(inst, info or TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
		tw:Play()
		return tw
	end

	local function ToTime(a)
		if not a or a <= 0 then
			return "Lifetime"
		end

		local left = a - os.time()
		if left < 0 then
			return "Expired"
		end

		local days = MathFloor(left / 86400)
		local hours = MathFloor((left % 86400) / 3600)
		local minutes = MathFloor((left % 3600) / 60)
		local seconds = left % 60

		if days > 0 then
			return StringFormat("%dd %dh %dm", days, hours, minutes)
		elseif hours > 0 then
			return StringFormat("%dh %dm %ds", hours, minutes, seconds)
		elseif minutes > 0 then
			return StringFormat("%dm %ds", minutes, seconds)
		end
		return StringFormat("%ds", seconds)
	end

	local Holder = Create("ScreenGui", {
		Parent = SafeGetUI(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		DisplayOrder = 2,
		ResetOnSpawn = false,
	})

	local NotifHolder = Create("Frame", {
		Parent = Holder,
		Name = "\0",
		Size = UDim2New(0, 0, 1, 0),
		Position = UDim2New(1, 0, 0, 0),
		AnchorPoint = Vector2New(1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AutomaticSize = Enum.AutomaticSize.X,
	})

	Create("UIListLayout", {
		Parent = NotifHolder,
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Padding = UDimNew(0, 12),
	})

	Create("UIPadding", {
		Parent = NotifHolder,
		PaddingLeft = UDimNew(0, 12),
		PaddingRight = UDimNew(0, 12),
		PaddingTop = UDimNew(0, 12),
		PaddingBottom = UDimNew(0, 12),
	})

	local NotifLayoutOrder = 0

	local function Notify(data)
		wait()
		NotifLayoutOrder += 1

		local title = data.Title or "Vexoriq Hub"
		local desc = data.Description or ""
		local duration = data.Duration or 5
		local accent = data.Color or Theme.Accent

		local pad_h, pad_v, gap, bar_gap, bar_h = 10, 8, 4, 6, 3
		local accent_w, accent_gap = 3, 8
		local max_w, min_w = 300, 160
		local title_size, desc_size = 14, 12

		local function text_size(text, font_size, width)
			return TextService:GetTextSize(text, font_size, Enum.Font.Gotham, Vector2New(width > 0 and width or 10000, 10000))
		end

		local text_w = max_w - pad_h * 2 - accent_w - accent_gap
		local title_sz = text_size(title, title_size, text_w)
		local desc_sz = desc ~= "" and text_size(desc, desc_size, text_w) or Vector2New(0, 0)
		local title_h = MathMax(MathFloor(title_sz.Y + 0.5), title_size + 2)
		local desc_h = desc ~= "" and MathMax(MathFloor(desc_sz.Y + 0.5), desc_size + 2) or 0
		local has_desc = desc_h > 0

		local content_w = MathMin(
			MathMax(MathFloor(title_sz.X + 0.5), MathFloor(desc_sz.X + 0.5), min_w - pad_h * 2 - accent_w - accent_gap)
				+ pad_h * 2 + accent_w + accent_gap,
			max_w
		)
		local body_h = title_h + (has_desc and (gap + desc_h) or 0)
		local size_y = pad_v * 2 + body_h + bar_gap + bar_h

		local fade_info = TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		local bar_info = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local notif = Create("Frame", {
			Parent = NotifHolder,
			BackgroundColor3 = Theme.Inline,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			LayoutOrder = NotifLayoutOrder,
			Size = UDim2New(0, 0, 0, size_y),
			ZIndex = 50,
		})
		Corner(notif, 5)
		local notif_stroke = Stroke(notif, Theme.Border, 0.45)
		notif_stroke.Transparency = 1

		Create("UIPadding", {
			Parent = notif,
			PaddingLeft = UDimNew(0, pad_h),
			PaddingRight = UDimNew(0, pad_h),
			PaddingTop = UDimNew(0, pad_v),
			PaddingBottom = UDimNew(0, pad_v),
		})

		Create("UIListLayout", {
			Parent = notif,
			Padding = UDimNew(0, bar_gap),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		})

		local body = Create("Frame", {
			Parent = notif,
			Size = UDim2New(1, 0, 0, body_h),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			ZIndex = 51,
		})

		Create("UIListLayout", {
			Parent = body,
			Padding = UDimNew(0, accent_gap),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		})

		local accent_bar = Create("Frame", {
			Parent = body,
			Size = UDim2New(0, accent_w, 1, 0),
			BackgroundColor3 = accent,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			ZIndex = 51,
		})
		Corner(accent_bar, 2)

		local content = Create("Frame", {
			Parent = body,
			Size = UDim2New(1, -(accent_w + accent_gap), 0, body_h),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 2,
			ZIndex = 51,
		})

		Create("UIListLayout", {
			Parent = content,
			Padding = UDimNew(0, gap),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		})

		local title_lbl = Create("TextLabel", {
			Parent = content,
			Size = UDim2New(1, 0, 0, title_h),
			BackgroundTransparency = 1,
			Text = title,
			TextColor3 = Theme.Text,
			TextSize = title_size,
			FontFace = FontFace,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			TextTransparency = 1,
			LayoutOrder = 1,
			ZIndex = 51,
		})

		local desc_lbl
		if has_desc then
			desc_lbl = Create("TextLabel", {
				Parent = content,
				Size = UDim2New(1, 0, 0, desc_h),
				BackgroundTransparency = 1,
				Text = desc,
				TextColor3 = Theme.Inactive,
				TextSize = desc_size,
				FontFace = FontFace,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				TextTransparency = 1,
				LayoutOrder = 2,
				ZIndex = 51,
			})
		end

		local duration_bg = Create("Frame", {
			Parent = notif,
			Size = UDim2New(1, 0, 0, bar_h),
			BackgroundColor3 = Theme.Element,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			LayoutOrder = 2,
			ZIndex = 51,
		})
		Corner(duration_bg, 2)

		local progress = Create("Frame", {
			Parent = duration_bg,
			Size = UDim2New(1, 0, 1, 0),
			BackgroundColor3 = accent,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 52,
		})

		spawn(function()
			Tween(notif, fade_info, { BackgroundTransparency = 0, Size = UDim2New(0, content_w, 0, size_y) })
			Tween(notif_stroke, fade_info, { Transparency = 0.45 })
			Tween(accent_bar, fade_info, { BackgroundTransparency = 0 })
			Tween(title_lbl, fade_info, { TextTransparency = 0 })
			if desc_lbl then
				Tween(desc_lbl, fade_info, { TextTransparency = 0 })
			end
			Tween(duration_bg, fade_info, { BackgroundTransparency = 0 })
			Tween(progress, fade_info, { BackgroundTransparency = 0 })
			Tween(progress, bar_info, { Size = UDim2New(0, 0, 1, 0) })

			delay(duration + 0.1, function()
				Tween(notif, fade_info, { BackgroundTransparency = 1, Size = UDim2New(0, 0, 0, size_y) })
				Tween(notif_stroke, fade_info, { Transparency = 1 })
				Tween(accent_bar, fade_info, { BackgroundTransparency = 1 })
				Tween(title_lbl, fade_info, { TextTransparency = 1 })
				if desc_lbl then
					Tween(desc_lbl, fade_info, { TextTransparency = 1 })
				end
				Tween(duration_bg, fade_info, { BackgroundTransparency = 1 })
				Tween(progress, fade_info, { BackgroundTransparency = 1 })
				wait(0.4)
				notif:Destroy()
			end)
		end)
	end

	local panel_w = IsMobile and 360 or 360
	local pad = IsMobile and 14 or 12
	local logo_s = IsMobile and 38 or 34
	local btn_h = IsMobile and 46 or 36
	local btn_gap = 8
	local field_h = IsMobile and 42 or 36
	local content_w = panel_w - pad * 2
	local half_w = MathFloor((content_w - btn_gap) / 2)

	local LogoUrl = "https://vexoriqhub.com/logo.png"
	local LogoFallback = "rbxassetid://137698471325689"

	local function GetLogoAsset()
		if type(getcustomasset) ~= "function" or type(writefile) ~= "function" then
			return LogoFallback
		end
		local images_dir = Folder_Configs.Images
		if type(isfolder) == "function" and not isfolder(images_dir) and type(makefolder) == "function" then
			pcall(makefolder, images_dir)
		end
		local file_path = images_dir .. "/logo.png"
		if type(isfile) ~= "function" or not isfile(file_path) then
			local ok, content = pcall(function()
				return game:HttpGet(LogoUrl)
			end)
			if not ok or type(content) ~= "string" or content == "" then
				return LogoFallback
			end
			if not pcall(writefile, file_path, content) then
				return LogoFallback
			end
		end
		local ok, asset_id = pcall(getcustomasset, file_path)
		if ok and type(asset_id) == "string" and asset_id ~= "" then
			return asset_id
		end
		return LogoFallback
	end

	local ScreenGui = Create("ScreenGui", {
		Parent = SafeGetUI(),
		Name = "\0",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		DisplayOrder = 999,
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
	})

	local UIScale = Create("UIScale", {
		Parent = ScreenGui,
		Scale = 1,
	})

	local Main = Create("Frame", {
		Parent = ScreenGui,
		Size = UDim2New(0, 0, 0, 0),
		Position = UDim2New(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2New(0.5, 0.5),
		BackgroundColor3 = Theme.Background,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		ZIndex = 2,
		ClipsDescendants = true,
	})
	Corner(Main, 5)
	local MainStroke = Stroke(Main, Theme.Border, 1)

	Create("ImageLabel", {
		Parent = Main,
		Size = UDim2New(1, 55, 1, 55),
		Position = UDim2New(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2New(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://112971167999062",
		ImageColor3 = Theme.Shadow,
		ImageTransparency = 0.56,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(Vector2New(112, 112), Vector2New(147, 147)),
		SliceScale = 0.6,
		ZIndex = 1,
	})

	local fade_items = {}

	local function track(inst, kind)
		TableInsert(fade_items, { Inst = inst, Kind = kind or "bg" })
		return inst
	end

	local header_h = logo_s + 18
	local DragArea = Create("Frame", {
		Parent = Main,
		Size = UDim2New(1, -40, 0, header_h + 8),
		BackgroundTransparency = 1,
		ZIndex = 3,
	})

	-- دوگمەی داخستن / Close Button
	local CloseBtn = Create("ImageButton", {
		Parent = Main,
		Size = UDim2New(0, IsMobile and 26 or 22, 0, IsMobile and 26 or 22),
		Position = UDim2New(1, -pad, 0, pad),
		AnchorPoint = Vector2New(1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://76001605964586",
		ImageTransparency = 1,
		ImageColor3 = Theme.Inactive,
		ScaleType = Enum.ScaleType.Fit,
		AutoButtonColor = false,
		ZIndex = 6,
	})

	local Logo = Create("ImageLabel", {
		Parent = Main,
		Size = UDim2New(0, logo_s, 0, logo_s),
		Position = UDim2New(0, pad, 0, pad),
		BackgroundTransparency = 1,
		Image = LogoFallback,
		ImageTransparency = 1,
		ScaleType = Enum.ScaleType.Fit,
		ZIndex = 4,
	})
	track(Logo, "image")

	spawn(function()
		local asset = GetLogoAsset()
		Logo.Image = asset
		if asset ~= LogoFallback then
			Logo.ImageColor3 = FromRGB(255, 255, 255)
		end
	end)

	local title_size = IsMobile and 18 or 16
	local BrandRow = Create("Frame", {
		Parent = Main,
		Size = UDim2New(0, 0, 0, logo_s),
		Position = UDim2New(0, pad + logo_s + 8, 0, pad),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		ZIndex = 4,
	})

	Create("UIListLayout", {
		Parent = BrandRow,
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Padding = UDimNew(0, 0),
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local function BrandPart(text, color, order)
		local lbl = Create("TextLabel", {
			Parent = BrandRow,
			Size = UDim2New(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			Text = text,
			TextColor3 = color,
			TextSize = title_size,
			FontFace = FontFace,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextTransparency = 1,
			LayoutOrder = order,
			ZIndex = 4,
		})
		track(lbl, "text")
		return lbl
	end

	BrandPart("vexoriq", Theme.Text, 1)
	BrandPart("hub", Theme.Accent, 2)
	BrandPart(".dev", Theme.Text, 3)

	local Description = Create("TextLabel", {
		Parent = Main,
		Size = UDim2New(1, -(pad * 2), 0, 16),
		Position = UDim2New(0, pad, 0, pad + logo_s + 6),
		BackgroundTransparency = 1,
		Text = "کلیدی تایبەت خۆت بنیشتێنە",
		TextColor3 = Theme.Inactive,
		TextSize = IsMobile and 13 or 12,
		FontFace = FontFace,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = 1,
		ZIndex = 4,
	})
	track(Description, "muted")

	local AccentLine = Create("Frame", {
		Parent = Main,
		Size = UDim2New(1, 4, 0, 1),
		Position = UDim2New(0, -2, 0, pad + logo_s + 28),
		BackgroundColor3 = Theme.Accent,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 3,
	})
	track(AccentLine, "accent")

	local field_y = pad + logo_s + 40

	local KeyBox = Create("Frame", {
		Parent = Main,
		Size = UDim2New(0, content_w, 0, field_h),
		Position = UDim2New(0, pad, 0, field_y),
		BackgroundColor3 = Theme.Element,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 3,
	})
	Corner(KeyBox, 5)
	local KeyStroke = Stroke(KeyBox, Theme.Border, 1)
	track(KeyBox, "bg")
	track(KeyStroke, "stroke")

	local KeyInput = Create("TextBox", {
		Parent = KeyBox,
		Size = UDim2New(1, -20, 1, 0),
		Position = UDim2New(0, 10, 0, 0),
		BackgroundTransparency = 1,
		Text = "",
		TextColor3 = Theme.Text,
		TextSize = IsMobile and 15 or 13,
		FontFace = FontFace,
		PlaceholderColor3 = Theme.Inactive,
		PlaceholderText = "کلید بنیشتێنە...",
		TextTransparency = 1,
		TextYAlignment = Enum.TextYAlignment.Center,
		TextXAlignment = Enum.TextXAlignment.Left,
		ClearTextOnFocus = false,
		ZIndex = 4,
	})
	track(KeyInput, "text")

	local btn_y = field_y + field_h + 12

	local ShopBtn = Create("TextButton", {
		Parent = Main,
		Size = UDim2New(0, half_w, 0, btn_h),
		Position = UDim2New(0, pad, 0, btn_y),
		BackgroundColor3 = Theme.Element,
		BackgroundTransparency = 1,
		Text = "کلید بکڕە",
		TextColor3 = Theme.Text,
		TextSize = IsMobile and 15 or 13,
		FontFace = FontFace,
		TextTransparency = 1,
		AutoButtonColor = false,
		ZIndex = 4,
	})
	Corner(ShopBtn, 5)
	local ShopStroke = Stroke(ShopBtn, Theme.Border, 1)
	track(ShopBtn, "bg")
	track(ShopStroke, "stroke")

	local SubmitBtn = Create("TextButton", {
		Parent = Main,
		Size = UDim2New(0, half_w, 0, btn_h),
		Position = UDim2New(1, -(pad + half_w), 0, btn_y),
		BackgroundColor3 = Theme.Accent,
		BackgroundTransparency = 1,
		Text = "دەچ",
		TextColor3 = FromRGB(255, 255, 255),
		TextSize = IsMobile and 15 or 13,
		FontFace = FontFace,
		TextTransparency = 1,
		AutoButtonColor = false,
		ZIndex = 4,
	})
	Corner(SubmitBtn, 5)
	local SubmitStroke = Stroke(SubmitBtn, Theme.Accent, 1)
	track(SubmitBtn, "bg")
	track(SubmitStroke, "stroke")

	-- دوگمەی مێنو / Drag
	local function setupDragging(target, handle)
		local dragging = false
		local dragStart = Vector2New(0, 0)
		local posStart = UDim2New(0, 0, 0, 0)

		handle.InputBegan:Connect(function(input, gpe)
			if gpe or input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
			dragging = true
			dragStart = game:GetService("Mouse").Hit.Position
			posStart = target.Position
		end)

		UserInputService.InputEnded:Connect(function(input, gpe)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)

		game:GetService("RunService").RenderStepped:Connect(function()
			if dragging then
				local delta = game:GetService("Mouse").Hit.Position - dragStart
				target.Position = posStart + UDim2New(0, delta.X, 0, delta.Y)
			end
		end)
	end

	setupDragging(Main, DragArea)

	-- ڕەفتار / Behavior
	CloseBtn.MouseButton1Click:Connect(function()
		Tween(Main, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2New(0, 0, 0, 0), BackgroundTransparency = 1 })
		for _, item in pairs(fade_items) do
			Tween(item.Inst, TweenInfo.new(0.3), { TextTransparency = 1, ImageTransparency = 1, BackgroundTransparency = 1 })
		end
		task.wait(0.4)
		ScreenGui:Destroy()
	end)

	ShopBtn.MouseButton1Click:Connect(function()
		Notify({
			Title = "Vexoriq Hub",
			Description = "دەچە بۆ بڕینی کلید...",
			Duration = 3,
			Color = Theme.Accent
		})
		game:GetService("GuiService"):OpenBrowserWindow(Config.Shop)
	end)

	SubmitBtn.MouseButton1Click:Connect(function()
		local key = KeyInput.Text
		if key == "" then
			Notify({
				Title = "هەڵە",
				Description = "تکایە کلیدی خۆت بنیشتێنە!",
				Duration = 3,
				Color = FromRGB(255, 60, 60)
			})
			return
		end
		
		-- تێست کردنی کلید / Key Testing
		Notify({
			Title = "تێست",
			Description = "کلید تێست دەکرێت...",
			Duration = 2,
			Color = Theme.Accent
		})

		-- ئێرە ئیتریتم لە API کالدا بۆ تێست کردنی کلید
		-- Here you would normally call your API to verify the key
		loadstring(game:HttpGet(LoaderUrl))()
	end)

	-- Animation / ئامێزی
	spawn(function()
		wait(0.1)
		local size_info = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local fade_info = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

		Tween(Main, size_info, { Size = UDim2New(0, panel_w, 0, btn_y + btn_h + pad) })
		Tween(MainStroke, fade_info, { Transparency = 0.5 })

		for _, item in pairs(fade_items) do
			if item.Kind == "bg" then
				Tween(item.Inst, fade_info, { BackgroundTransparency = 0 })
			elseif item.Kind == "stroke" then
				Tween(item.Inst, fade_info, { Transparency = 0.5 })
			elseif item.Kind == "text" or item.Kind == "muted" then
				Tween(item.Inst, fade_info, { TextTransparency = 0 })
			elseif item.Kind == "image" then
				Tween(item.Inst, fade_info, { ImageTransparency = 0 })
			elseif item.Kind == "accent" then
				Tween(item.Inst, fade_info, { BackgroundTransparency = 0 })
			end
		end
	end)
end
