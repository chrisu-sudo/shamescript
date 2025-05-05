local assholefucker = Instance.new("ScreenGui")
assholefucker.Name = "MainGui"
assholefucker.Parent = game:GetService("CoreGui") or game.Players.LocalPlayer:WaitForChild("PlayerGui")

local keybind = Instance.new("Frame")
keybind.Name = "Keybind"
keybind.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
keybind.BackgroundTransparency = 0
keybind.BorderColor3 = Color3.fromRGB(84, 84, 84)
keybind.BorderMode = Enum.BorderMode.Outline
keybind.BorderSizePixel = 1
keybind.Position = UDim2.new(0.009, 0, 0.369, 0)
keybind.Size = UDim2.new(0, 161, 0, 188)
keybind.Parent = assholefucker

local keybinddetail = Instance.new("Frame")
keybinddetail.Name = "KeybindDetail"
keybinddetail.BackgroundColor3 = Color3.fromRGB(167, 190, 255)
keybinddetail.BackgroundTransparency = 0
keybinddetail.BorderSizePixel = 0
keybinddetail.Position = UDim2.new(0, 0, 0, 0)
keybinddetail.Size = UDim2.new(0, 161, 0, 2)
keybinddetail.Parent = keybind

local keybindtitle = Instance.new("TextLabel")
keybindtitle.Name = "Keybindtitle"
keybindtitle.BackgroundTransparency = 1
keybindtitle.BorderSizePixel = 0
keybindtitle.Position = UDim2.new(0.185, 0, 0.011, 0)
keybindtitle.Size = UDim2.new(0, 100, 0, 27)
keybindtitle.Font = Enum.Font.SourceSansBold
keybindtitle.TextXAlignment = Enum.TextXAlignment.Center
keybindtitle.TextColor3 = Color3.fromRGB(167, 190, 255)
keybindtitle.TextSize = 15
keybindtitle.Text = "Keybinds"
keybindtitle.Parent = keybind

local watermark = Instance.new("Frame")
watermark.Name = "Watermark"
watermark.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
watermark.BackgroundTransparency = 0
watermark.BorderColor3 = Color3.fromRGB(84, 84, 84)
watermark.BorderMode = Enum.BorderMode.Outline
watermark.BorderSizePixel = 1
watermark.Position = UDim2.new(0.009, 0, 0.94, 0)
watermark.Size = UDim2.new(0, 200, 0, 29)
watermark.Parent = assholefucker

local shamewatermark = Instance.new("TextLabel")
shamewatermark.Name = "ShameWatermark"
shamewatermark.BackgroundTransparency = 1
shamewatermark.BorderSizePixel = 0
shamewatermark.Position = UDim2.new(0.033, 0, 0, 0)
shamewatermark.Size = UDim2.new(0, 40, 0, 29)
shamewatermark.Font = Enum.Font.SourceSansBold
shamewatermark.TextXAlignment = Enum.TextXAlignment.Left
shamewatermark.TextColor3 = Color3.fromRGB(167, 190, 255)
shamewatermark.TextSize = 15
shamewatermark.Text = "Shame"
shamewatermark.Parent = watermark

local FrameTimer = tick()
local FrameCounter = 0
local FPS = 60

local watermarkinfo = Instance.new("TextLabel")
watermarkinfo.Name = "WatermarkInfo"
watermarkinfo.BackgroundTransparency = 1
watermarkinfo.BorderSizePixel = 0
watermarkinfo.Position = UDim2.new(0.240, 0, 0, 0)
watermarkinfo.Size = UDim2.new(0, 168, 0, 29)
watermarkinfo.Font = Enum.Font.SourceSans
watermarkinfo.TextXAlignment = Enum.TextXAlignment.Left
watermarkinfo.TextColor3 = Color3.fromRGB(255, 255, 255)
watermarkinfo.TextSize = 15
watermarkinfo.Text = "| Da Hood | 60 fps | 0 ms"
watermarkinfo.Parent = watermark

local function updateWatermark()
    local success, ping = pcall(function()
        return math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    end)
    if not success then ping = 0 end
    
    watermarkinfo.Text = string.format("| Da Hood | %d fps | %d ms", math.floor(FPS), ping)
end

local WatermarkConnection
WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter = FrameCounter + 1
    
    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter
        FrameTimer = tick()
        FrameCounter = 0
    end
    
    updateWatermark()
end)

mainGui.Enabled = true