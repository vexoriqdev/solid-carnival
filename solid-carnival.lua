-- Vexoriq Hub - Ultimate Premium UI (Solix Style)
local CorrectKey = "mmjx901"
local KeyLink = "https://linkvertise.com/access/1258318/QZy93Rm5oHBF"
local LogoID = "rbxassetid://10734975692"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VexoriqHub_PremiumUI"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

-- 1. Floating Toggle Button (دوگمەی شناو بۆ شاردنەوە/داخستن)
local ToggleBtn = Instance.new("ImageButton")
ToggleBtn.Name = "ToggleBtn"
ToggleBtn.Parent = ScreenGui
ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
ToggleBtn.Position = UDim2.new(0.03, 0, 0.2, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
ToggleBtn.Image = LogoID
ToggleBtn.Active = true
ToggleBtn.Draggable = true
ToggleBtn.Visible = false

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleBtn

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(0, 170, 255)
ToggleStroke.Thickness = 2
ToggleStroke.Parent = ToggleBtn

-- 2. Key Window (پەنجەرەی کلیل بە دیزاینی بچووک و سەردەمیی)
local KeyWindow = Instance.new("Frame")
KeyWindow.Name = "KeyWindow"
KeyWindow.Parent = ScreenGui
KeyWindow.Size = UDim2.new(0, 320, 0, 190)
KeyWindow.Position = UDim2.new(0.5, -160, 0.5, -95)
KeyWindow.BackgroundColor3 = Color3.fromRGB(16, 17, 22)
KeyWindow.BorderSizePixel = 0
KeyWindow.Active = true
KeyWindow.Draggable = true

local KeyWindowCorner = Instance.new("UICorner")
KeyWindowCorner.CornerRadius = UDim.new(0, 12)
KeyWindowCorner.Parent = KeyWindow

local KeyWindowStroke = Instance.new("UIStroke")
KeyWindowStroke.Color = Color3.fromRGB(0, 170, 255)
KeyWindowStroke.Thickness = 1.5
KeyWindowStroke.Parent = KeyWindow

-- Key Title & Logo
local KeyLogo = Instance.new("ImageLabel")
KeyLogo.Parent = KeyWindow
KeyLogo.Size = UDim2.new(0, 24, 0, 24)
KeyLogo.Position = UDim2.new(0, 15, 0, 12)
KeyLogo.BackgroundTransparency = 1
KeyLogo.Image = LogoID

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = KeyWindow
KeyTitle.Size = UDim2.new(1, -50, 0, 45)
KeyTitle.Position = UDim2.new(0, 45, 0, 0)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "Vexoriq Hub • Key Verification"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextSize = 13
KeyTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Input Box
local KeyInput = Instance.new("TextBox")
KeyInput.Parent = KeyWindow
KeyInput.Size = UDim2.new(0, 260, 0, 36)
KeyInput.Position = UDim2.new(0.5, -130, 0.28, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(24, 25, 32)
KeyInput.PlaceholderText = "Enter key here..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.Gotham
KeyInput.TextSize = 12

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = KeyInput

-- Buttons
local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Parent = KeyWindow
GetKeyBtn.Size = UDim2.new(0, 125, 0, 34)
GetKeyBtn.Position = UDim2.new(0.5, -130, 0.54, 0)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(32, 34, 42)
GetKeyBtn.Text = "Get Key Link"
GetKeyBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.TextSize = 12

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 8)
GetKeyCorner.Parent = GetKeyBtn

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Parent = KeyWindow
SubmitBtn.Size = UDim2.new(0, 125, 0, 34)
SubmitBtn.Position = UDim2.new(0.5, 5, 0.54, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
SubmitBtn.Text = "Submit Key"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 12

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 8)
SubmitCorner.Parent = SubmitBtn

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = KeyWindow
StatusLabel.Size = UDim2.new(1, 0, 0, 20)
StatusLabel.Position = UDim2.new(0, 0, 0.78, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 11

-- 3. Main Frame (شاشە سەرەکییەکە - Solix UI Style)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 560, 0, 330)
MainFrame.Position = UDim2.new(0.5, -280, 0.5, -165)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 16, 21)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(35, 38, 50)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

-- Header
local TopBar = Instance.new("Frame")
TopBar.Parent = MainFrame
TopBar.Size = UDim2.new(1, 0, 0, 42)
TopBar.BackgroundColor3 = Color3.fromRGB(12, 13, 17)
TopBar.BorderSizePixel = 0

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 12)
TopCorner.Parent = TopBar

local MainLogo = Instance.new("ImageLabel")
MainLogo.Parent = TopBar
MainLogo.Size = UDim2.new(0, 24, 0, 24)
MainLogo.Position = UDim2.new(0, 12, 0.5, -12)
MainLogo.BackgroundTransparency = 1
MainLogo.Image = LogoID

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Parent = TopBar
TitleLabel.Size = UDim2.new(1, -90, 1, 0)
TitleLabel.Position = UDim2.new(0, 44, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Vexoriq Hub • Steal an Egg"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 13
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Close Button (X)
local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = TopBar
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0.5, -15)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
CloseBtn.TextSize = 15
CloseBtn.Font = Enum.Font.GothamBold

-- Sidebar & Separators
local SideBar = Instance.new("Frame")
SideBar.Parent = MainFrame
SideBar.Size = UDim2.new(0, 135, 1, -42)
SideBar.Position = UDim2.new(0, 0, 0, 42)
SideBar.BackgroundColor3 = Color3.fromRGB(18, 19, 25)
SideBar.BorderSizePixel = 0

local SideLine = Instance.new("Frame")
SideLine.Parent = MainFrame
SideLine.Size = UDim2.new(0, 1, 1, -42)
SideLine.Position = UDim2.new(0, 135, 0, 42)
SideLine.BackgroundColor3 = Color3.fromRGB(30, 32, 42)
SideLine.BorderSizePixel = 0

local TopLine = Instance.new("Frame")
TopLine.Parent = MainFrame
TopLine.Size = UDim2.new(1, 0, 0, 1)
TopLine.Position = UDim2.new(0, 0, 0, 42)
TopLine.BackgroundColor3 = Color3.fromRGB(30, 32, 42)
TopLine.BorderSizePixel = 0

-- Functions
GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(KeyLink)
    StatusLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    StatusLabel.Text = "Link copied to clipboard!"
end)

SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CorrectKey then
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 120)
        StatusLabel.Text = "Access Granted!"
        task.wait(0.6)
        KeyWindow:Destroy()
        MainFrame.Visible = true
        ToggleBtn.Visible = true
    else
        StatusLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
        StatusLabel.Text = "Invalid Key!"
    end
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)
