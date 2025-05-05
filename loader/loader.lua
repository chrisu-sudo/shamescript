local keyloader, error = pcall(function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ShameBasicKeyLoader"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui", 5)

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 543, 0, 302)
    frame.Position = UDim2.new(0.291, 0, 0.31, 0)
    frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    frame.Parent = screenGui

    local detail = Instance.new("Frame")
    detail.Size = UDim2.new(1, 0, 0, 1)
    detail.Position = UDim2.new(0, 0, 0, 0)
    detail.BackgroundColor3 = Color3.fromRGB(167, 190, 255)
    detail.BorderSizePixel = 0
    detail.Parent = frame

    local fontSuccess, font = pcall(function()
        return Enum.Font.Silkscreen
    end)
    local defaultFont = fontSuccess and font or Enum.Font.SourceSans

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Size = UDim2.new(1, -20, 0, 50)
    titleLabel.Position = UDim2.new(0, 10, 0, 10)
    titleLabel.Text = "Shame - Key System | Da Hood"
    titleLabel.TextColor3 = Color3.fromRGB(167, 190, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = defaultFont
    titleLabel.TextSize = 18
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = frame

    local keyLabel = Instance.new("TextLabel")
    keyLabel.Name = "Key"
    keyLabel.Size = UDim2.new(0, 104, 0, 18)
    keyLabel.Position = UDim2.new(0.1, 0, 0.3, 0)
    keyLabel.Text = "Key:"
    keyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyLabel.BackgroundTransparency = 1
    keyLabel.Font = defaultFont
    keyLabel.TextSize = 16
    keyLabel.Parent = frame

    local textBox = Instance.new("TextBox")
    textBox.Name = "KeyInput"
    textBox.Size = UDim2.new(0.8, 0, 0, 30)
    textBox.Position = UDim2.new(0.1, 0, 0.4, 0)
    textBox.PlaceholderText = "Enter key here..."
    textBox.Text = ""
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    textBox.Font = defaultFont
    textBox.TextSize = 14
    textBox.TextXAlignment = Enum.TextXAlignment.Left
    textBox.Parent = frame

    local submitButton = Instance.new("TextButton")
    submitButton.Name = "KeyEnter"
    submitButton.Size = UDim2.new(0.8, 0, 0, 40)
    submitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
    submitButton.Text = "Submit Key"
    submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    submitButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    submitButton.Font = defaultFont
    submitButton.TextSize = 16
    submitButton.Parent = frame

    submitButton.MouseButton1Click:Connect(function()
        if textBox.Text == "ShameKeyTest" then
            print("Key accepted!")
            task.wait(2)
            screenGui:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/chrisu-sudo/shamescript/refs/heads/main/main/shame.lua"))()
        else
            warn("Invalid key!")
            textBox.Text = ""
        end
    end)
end)

if not keyloader then
    warn("GUI creation failed:", error)
end