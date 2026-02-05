-- Vortex Hub
-- discord.gg/gTReXgA9Jq

local keySystem = Instance.new("ScreenGui")
keySystem.Name = "VortexKey"
keySystem.Parent = game:GetService("CoreGui")
keySystem.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 200)
frame.Position = UDim2.new(0.5, -170, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
frame.BorderSizePixel = 0
frame.Parent = keySystem

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "Vortex Hub"
title.TextColor3 = Color3.fromRGB(0, 255, 180)
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.Parent = frame

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(0.9, 0, 0, 40)
subtitle.Position = UDim2.new(0.05, 0, 0.3, 0)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Enter key to unlock (24h / HWID locked)"
subtitle.TextColor3 = Color3.fromRGB(180, 180, 190)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 16
subtitle.TextWrapped = true
subtitle.Parent = frame

local input = Instance.new("TextBox")
input.Size = UDim2.new(0.8, 0, 0, 45)
input.Position = UDim2.new(0.1, 0, 0.45, 0)
input.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
input.TextColor3 = Color3.new(1,1,1)
input.PlaceholderText = "Paste key here..."
input.Font = Enum.Font.Gotham
input.TextSize = 18
input.ClearTextOnFocus = false
input.Parent = frame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 10)
inputCorner.Parent = input

local submit = Instance.new("TextButton")
submit.Size = UDim2.new(0.8, 0, 0, 45)
submit.Position = UDim2.new(0.1, 0, 0.65, 0)
submit.BackgroundColor3 = Color3.fromRGB(0, 170, 120)
submit.Text = "Submit"
submit.TextColor3 = Color3.new(1,1,1)
submit.Font = Enum.Font.GothamBold
submit.TextSize = 20
submit.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 10)
btnCorner.Parent = submit

local status = Instance.new("TextLabel")
status.Size = UDim2.new(0.9, 0, 0, 30)
status.Position = UDim2.new(0.05, 0, 0.85, 0)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255, 80, 80)
status.Font = Enum.Font.Gotham
status.TextSize = 14
status.TextWrapped = true
status.Parent = frame

-- Your allowed keys (change/add as you want)
local validKeys = {
    "vortex2026",
    "freekey",
    "gTReXgA9Jq",
    "1234",  -- for testing
    "yourkeyhere"
}

submit.MouseButton1Click:Connect(function()
    local entered = input.Text

    if entered == "" then
        status.Text = "Please enter a key!"
        status.TextColor3 = Color3.fromRGB(255, 150, 80)
        return
    end

    for _, key in ipairs(validKeys) do
        if entered == key then
            status.Text = "Key accepted! Loading Vortex..."
            status.TextColor3 = Color3.fromRGB(0, 255, 150)
            
            keySystem:Destroy()
            
            -- Execute the ORIGINAL main script (exactly as you wanted)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/yashitcrack.lua"))()
            
            return
        end
    end

    status.Text = "Invalid key! Try again."
    status.TextColor3 = Color3.fromRGB(255, 80, 80)
    input.Text = ""
end)
