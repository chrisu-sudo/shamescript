local shame = Instance.new("ScreenGui")

local title = Instance.new("Frame")
title.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
title.BackgroundTransparency = 0
title.BorderSizePixel = 0
title.Posistion = UDim2.new(0.306, 0, 0.102, 0)
title.Size = UDim2.new(0, 505,0, 36)
title.Parent = shame

local titlemain = Instance.new("Frame")
titlemain.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
titlemain.BackgroundTransparency = 0
titlemain.BorderSizePixel = 1
titlemain.BorderColor3 = Color3.fromRGB(84, 84, 84)
titlemain.Posistion = UDim2.new(0.013, 0, 0.013, 0)
titlemain.Size = UDim2.new(0, 491,0, 25)
titlemain.Parent = title

local titleshame = Instance.new("TextLabel")
titleshame.BackgroundTransparency = 1
titleshame.BorderSizePixel = 0
titleshame.Posistion = UDim2.new(0.015,60, -0.04, 0)
titleshame.Size = UDim2.new(0, 44,0, 25)
titleshame.Font = Enum.Font.SourceSansBold
titleshame.TextXAlignment = Enum.TextXAlignment.Left
titleshame.TextColor3 = Color3.fromRGB(167, 190, 255)
titleshame.Text = "Shame"
titleshame.TextSize = 15
titleshame.Parent = titlemain

local titleinfo = Instance.new("TextLabel")
titleinfo.BackgroundTransparency = 1
titleinfo.BorderSizePixel = 0
titleinfo.Posistion = UDim2.new(0.106, 0, 0, 0)
titleinfo.Size = UDim2.new(0, 439, 0, 25)
titleinfo.Font = Enum.Font.SourceSans
titleinfo.TextXAlignment = Enum.TextXAlignment.Left
titleinfo.TextColor3 = Color3.fromRGB(255, 255, 255)
titleinfo.Text = "- Da Hood | v1.0.1                                        ! By"
titleinfo.TextSize = 14
titleinfo.Parent = titlemain

local titleowner = Instance.new("TextLabel")
titleowner.BackgroundTransparency = 1
titleowner.BorderSizePixel = 0
titleowner.Posistion = UDim2.new(0.91, 0, 0, 0)
titleinfo.Size = UDim2.new(0, 44, 0, 25)
titleinfo.Font = Enum.Font.SourceSansBold
titleinfo.TextXAlignment = Enum.TextXAlignment.Left
titleinfo.TextColor3 = Color3.fromRGB(167, 190, 255)
titleinfo.Text = "chrisu"
titleinfo.TextSize = 15
titleinfo.Parent = titlemain

local shame = Instance.new("Frame")